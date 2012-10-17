createdb -T template_postgis states
shp2pgsql -s 4326 ./data/us_states_wgs84.shp states | psql states