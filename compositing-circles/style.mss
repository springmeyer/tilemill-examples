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

#pdx {
  marker-fill:red;
  marker-width:200;
  marker-line-width:20;
  marker-line-color:steelblue;
  marker-line-opacity:.5;
  marker-allow-overlap:true;
  marker-fill-opacity:.5;
  [name="one"] {
    // src-over is the default and equivalent to normal alpha blending
    marker-comp-op:src-over;
  }
  [name="two"] {
    //marker-comp-op:src-over;
    //marker-comp-op:hard-light;
    marker-comp-op:difference;
  }
}
