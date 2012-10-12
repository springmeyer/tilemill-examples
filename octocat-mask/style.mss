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
  polygon-fill: darken(#fff,10%);
}

#west-coast::in {
  marker-file: url('https://raw.github.com/gist/1007813/1f883261b243111b00d932d6033a8b538b1ecae7/octocat.svg');
  comp-op:dst-in;
  //marker-opacity:.5;
  //marker-transform:scale(.7,.7);
  image-filters:agg-stack-blur(50,50);
  marker-ignore-placement:true;
  ::over {
    marker-file: url('https://raw.github.com/gist/1007813/1f883261b243111b00d932d6033a8b538b1ecae7/octocat.svg');
    marker-opacity:.8;
    marker-comp-op:difference;
  }
}

















