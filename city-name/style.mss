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

#places {
  shield-name:"[NAME]";
  shield-avoid-edges:true;
  shield-fill:#000000;
  shield-face-name:"DejaVu Sans Book";
  shield-horizontal-alignment:right;
  shield-text-dx:15; 
  shield-halo-fill:#FFFFFF; 
  shield-halo-radius:1;
  shield-file:url("ellipses.svg");
  shield-size:12;
  shield-min-distance:1;
  // uncomment this in >= TileMill 0.10.2
  // and your text will then appear nicely to the
  // left of the svg ellipse
  //shield-unlock-image:true;
}


