Map {
  background-color: #b8dee6;
}

#places {
  marker-width:[LONGITUDE] / 3.14;
  marker-height:[LATITUDE] / 3.14;
  marker-transform:rotate([LONGITUDE],0,0);
  marker-line-width:0;
  marker-opacity:.2;
  marker-allow-overlap:true;
  marker-comp-op:darken;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}