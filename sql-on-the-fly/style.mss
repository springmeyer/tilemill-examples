Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

/*
- only render multigeometries
(select * from states
where ST_NumGeometries(geom) > 1
) as tmp

- convert to lines, simplify
(select ST_Simplify(ST_Boundary(geom),.2) as geom from states
) as tmp

- limit at db level with spatial query
(select * from states where
  ST_Intersects(geom,ST_SetSRID('Point(-122 45)'::geometry,4326))
) as tmp

- convert to points, smallest values on top:
(select ST_Centroid(geom) as geom, persons from states
  order by persons desc) as tmp

- clip out in a 10 degree buffer around pdx
(select
  ST_Intersection(geom,
    ST_Buffer(
      ST_SetSRID('Point(-122 45)'::geometry,4326)
   ,10)
)
as geom from states
) as tmp

*/

#sql {
  ::poly {
    ['mapnik::geometry_type'=polygon] {
      polygon-fill:steelblue;
      line-color:darkblue;     
    }
  }
  ::line {
    ['mapnik::geometry_type'=linestring] {
     line-color:orange;
    }
  }
  ::point {
    ['mapnik::geometry_type'=point] {
       //marker-width:[persons]/300000;
       marker-allow-overlap:true;
       //marker-opacity:.5;
    }
  }
}



















