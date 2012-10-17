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

@line_color:steelblue;

#arc {
  opacity:.9999;
  line-color:@line_color;
  line-width:4;
  line-cap:round;
  line-join:round;
  one/text-face-name:"DejaVu Sans Bold";
  one/text-name:[name];
  one/text-size:15;
  one/text-placement:line;
  one/text-halo-radius:6;
  one/text-clip:false;
  one/text-comp-op:dst-out;

  two/text-fill:darken(@line_color,20%);
  two/text-face-name:"DejaVu Sans Book";
  two/text-size:17;
  two/text-clip:false;
  two/text-name:[name];
  two/text-placement:line;
  two/text-allow-overlap:true;
}
