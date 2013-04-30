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

#ridge {
  line-width:1;
  line-color:red;
  ::label {
    text-name:[geogdesc];
    text-face-name:"DejaVu Sans Book";
    text-transform:capitalize;
    text-size:12;
    text-halo-radius:2;
    text-placement:line;
  }
}

#transform {
  line-width:1;
  line-color:#168;
  ::label {
    text-name:[geogdesc];
    text-face-name:"DejaVu Sans Book";
    text-transform:capitalize;
    text-size:12;
    text-halo-radius:2;
    text-placement:line;
  }
}

#trench {
  line-width:1;
  line-color:blue;
  ::label {
    text-name:[geogdesc];
    text-face-name:"DejaVu Sans Book";
    text-transform:capitalize;
    text-size:12;
    text-halo-radius:2;
    text-placement:line;
  }
}

