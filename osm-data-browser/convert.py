import os
import mapnik

# usage:
# python update.py

# download latest osm for bbox
#os.system('wget -O nacis.osm "http://api.openstreetmap.org/api/0.6/map?bbox=-122.656771,45.529472,-122.652377,45.53208"')

# read in with mapnik
ds = mapnik.Datasource(**{'type':'osm','file':'nacis.osm'})

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
      csv_features.append(""""%s",%d,'%s'""" % (name,feat.id(),json))

osm_out = open('osm.csv','w+')
# write headers
osm_out.write('name,osm_id,geojson\n')
# write data rows
osm_out.write('\n'.join(csv_features))
osm_out.close()
