Map {
  background-image: url(img/water.png);
}

#countries {
  polygon-pattern-file: url(img/land.png);
  line-width:.08;
  line-smooth:150;
  line-comp-op:overlay;
}

#frigate {
  marker-file:url(img/ship_frigate_200.png);
  // only available in TileMill >= 0.10.12
  //marker-geometry-transform:translate(4,0);
  marker-comp-op:overlay;
}

