Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
  }
  polygon-fill: #fff;
}

#tornados {
  marker-width:0;
  marker-fill:#f45;
  marker-allow-overlap:true;
  marker-line-width:1;
  marker-opacity:.5;
  [fscale=0]{
    marker-width:4;
    marker-fill:#00FAF4;
    marker-line-color:darken(#00FAF4,10%);
  }
  [fscale=1]{
    marker-width:5;
    marker-fill:#FFFFCC;
    marker-line-color:darken(#FFFFCC,45%);
  }
  [fscale=2]{
    marker-width:6;
    marker-fill:#FFE775;
    marker-line-color:darken(#FFE775,20%);
  }
  [fscale=3]{
    marker-width:10;
    marker-fill:#FFC142;
    marker-line-color:darken(#FFC142,20%);
  }
  [fscale=4]{
    marker-width:15;
    marker-fill:#FD5E5F;
    marker-line-color:darken(#FD5E5F,20%);
  }
}

