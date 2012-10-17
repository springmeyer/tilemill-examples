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

Map {
  background-color: #b8dee6;
}

#tornados [zoom > 5]{
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
  marker-line-width:0.5;
  [zoom = 6]{
    [fscale=0]{marker-width:2.5;}
    [fscale=1]{marker-width:4;}
    [fscale=2]{marker-width:5.5;}
    [fscale=3]{marker-width:7;}
    [fscale=4]{marker-width:9;}
    [fscale=5]{marker-width:12;}
  }
  [zoom = 7]{
    [fscale=0]{marker-width:4;}
    [fscale=1]{marker-width:6;}
    [fscale=2]{marker-width:8;}
    [fscale=3]{marker-width:11;}
    [fscale=4]{marker-width:14;}
    [fscale=5]{marker-width:18;}
  }
  [zoom = 8]{
    [fscale=0]{marker-width:6;}
    [fscale=1]{marker-width:9;}
    [fscale=2]{marker-width:12;}
    [fscale=3]{marker-width:16;}
    [fscale=4]{marker-width:22;}
    [fscale=5]{marker-width:30;}
  }
}