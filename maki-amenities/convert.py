# -*- coding: utf-8 -*-

import os
import mapnik

# usage:
# python update.py

# download latest osm for bbox
#os.system('wget -O pdx-poi.osm "http://www.overpass-api.de/api/xapi?node[bbox=-122.68732,45.52028,-122.65217,45.53982][amenity=*]"')

# read in with mapnik
ds = mapnik.Datasource(**{'type':'osm','file':'pdx-poi.osm'})

# loop over all features
# and write out a csv file
fs = ds.all_features()
csv_features = []
for feat in fs:
  if feat.has_key('name'):
      json = feat.geometries().to_geojson()
      name = feat['name']
      # work around bug
      if name == True:
          name = ''
      csv_features.append(""""%s",%d,"%s",'%s'""" % (name,feat.id(),feat['amenity'],json))

osm_out = open('pdx-poi.csv','w+')
# write headers
osm_out.write('name,osm_id,amenity,geojson\n')
# write data rows
osm_out.write('\n'.join(csv_features).encode('utf8'))
osm_out.close()
