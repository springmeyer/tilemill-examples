Map {
  background-color: #b8dee6;
  buffer-size:500;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}

#numbers {
  marker-width: 5;
  ::labels {
      text-dx:10;
      text-size:12;
      // uncomment to show raw value
      //text-name:[value];
      // uncomment to show only number before decimal
      //text-name:"[value].replace('(.*)(\..*)','$1')";
      text-name:"[value].replace('(.*)(\..*)','before decimal: $1\nafter decimal:$2')";
      text-face-name:"DejaVu Sans Book";
  }
}
