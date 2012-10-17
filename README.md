# tilemill-examples

This is a set of TileMill projects that demonstrate various types of
functionality and hacks in TileMill. The examples are mostly self-contained
and should work offline. See the Speakers Notes below for project-specific
setup that might be needed in a few places.

## Caveats

These projects are partially for demos and partially for testing features that
are quite tricky to pull off (e.g. not yet optimal in TileMill) and may change soon.

So, DO NOT treat any of these examples as best practices. Treat them as evolving
possibilities only.


## Usage

You can either download this directory and point TileMill's documents setting at it.

Or you can use git to set the projects up within an existing documents directory.

## Setup in existing project directory

    cd ~/Documents/MapBox/project
    git init .
    git remote add origin https://github.com/springmeyer/tilemill-examples.git
    git pull origin master


## speakers notes

Some project directories contain setup scripts (e.g. `convert.py`) and other notes (e.g. `notes.md`)

Some projects require setup:

1. `dynamic-http` requires running a local python server in order to support data refresh:

```sh
python project/dynamic-http/server.py
```

1. `sql-on-the-fly` requires creating a postgres db and importing a shapefile:

```sh
cd ./sql-on-the-fly
createdb -T template_postgis states
shp2pgsql -g geom -s 4326 ./data/us_states_wgs84.shp states | psql states
```
