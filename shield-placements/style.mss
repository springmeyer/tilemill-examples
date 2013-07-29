Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #f7f6f1;
}

#places {
  shield-name:"[NAME]";
  shield-fill: #222;
  shield-avoid-edges: true;
  shield-face-name:"DejaVu Sans Book";
  shield-halo-fill: #FFFFFF; 
  shield-halo-radius: 2;
  shield-file: url("ellipses.svg");
  shield-size: 12;
  shield-min-distance: 10;
  // This will make the marker to be rendered on the
  // feature position, and the text to be nicely placed
  // around, according to the placements given
  // Also, no marker will be rendered without text, and no
  // text without marker
  // NOTE: only works in >= TileMill 0.10.2
  shield-unlock-image:true;
  shield-placement-type: simple;
  shield-placements: 'NE,SW,NW,SE,E,W';
  shield-text-dy: 5;
  shield-text-dx: 5;
}


