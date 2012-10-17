#!/usr/bin/env python

import os
import sys
import socket
import random
from optparse import OptionParser
from wsgiref.simple_server import make_server

parser = OptionParser(usage="""
    python server.py [options]
    """)

parser.add_option('-i', '--ip', default='0.0.0.0', dest='host',
    help='Specify an ip to listen on (defaults to 0.0.0.0/localhost)'
    )

parser.add_option('-p', '--port', default=8000, dest='port', type='int',
    help='Specify a custom port to run on: eg. 8080'
    )

def print_url(options):
    sys.stderr.write("Listening on %s:%s...\n" % (options.host,options.port))
    sys.stderr.write("To access locally view: http://localhost:%s\n" % options.port)
    remote = "To access remotely view: http://%s" % socket.getfqdn()
    if not options.port == 80:
        remote += ":%s" % options.port
    remote += "\nor view: http://%s" % socket.gethostbyname(socket.gethostname())
    if not options.port == 80:
        remote += ":%s" % options.port
    sys.stderr.write('%s\n' % remote)

def run(process):
    try:
        process.serve_forever()
    except KeyboardInterrupt:
        process.server_close()
        sys.exit(0)

def random_geojson():
    start = '{ "type": "FeatureCollection", "features": ['
    end = ']}'
    feature_template = '''
      { "type": "Feature",
      "geometry": {"type": "Point", "coordinates": [%(lon)s,%(lat)s]},
      "properties": {"feat_id": %(feat_id)d}
      }
    '''
    features = ''
    limit = 10
    for feat_id in xrange(0,limit):
        # random points roughly within oregon
        lat = random.randrange(40,46)
        lon = random.randrange(-130,-115)
        features += feature_template % locals()
        if feat_id < limit-1:
            features += ','
    return start + features + end

def application(environ, start_response):
    response_status = "200 OK"
    mime_type = 'text/plain'
    response = random_geojson()
    start_response(response_status,[('Content-Type', mime_type)])
    yield response

if __name__ == '__main__':
    (options, args) = parser.parse_args()
    httpd = make_server(options.host, options.port, application)        
    print_url(options)
    run(httpd)