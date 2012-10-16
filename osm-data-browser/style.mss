Map {
  background-color: #b8dee6;
}

#osm {
  ::poly {
    ['mapnik::geometry_type'=polygon] {
      polygon-fill:white;
      polygon-opacity:.5;
      line-width:.3;
      line-color:red;
    }
  }
  ::line {
    ['mapnik::geometry_type'=linestring] {
     two/line-color:green;
     two/line-opacity:.5;
     two/line-cap:round;
     two/line-join:round;
     two/line-opacity:.7;
    }
  }
  ::point {
    ['mapnik::geometry_type'=point] {
     one/marker-opacity:.7;
     one/marker-line-width:0;
     one/marker-comp-op:dst-out;
     one/marker-allow-overlap:true;
     two/marker-line-width:0;
     two/marker-opacity:.5;
     two/marker-allow-overlap:true;
     [zoom>=20] {
        one/marker-width:10;
        two/marker-width:7;
     }
     [zoom>=17][zoom<20] {
        one/marker-width:7;
        two/marker-width:4;
     }
     [zoom<17] {
        one/marker-width:5;
        two/marker-width:2;
     }
    }
  }
}