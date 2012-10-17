createdb -T template_postgis world
shp2pgsql -s 900913 ./layers/countries/82945364-10m-admin-0-countries.shp world | psql world

createdb -T template_postgis states
shp2pgsql -s 4326 ./data/us_states_wgs84.shp states | psql states