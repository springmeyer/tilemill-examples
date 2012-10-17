@steel:steelblue;
@format1: "<Format fill='darkblue' face-name='DejaVu Sans Bold Oblique'>";
@format2: @format1+"[name]</Format>";
@label: @format2+"+'\n'+[m]+' m'+'\n'+[ft]+' ft'";

#rainier {
  marker-width:8;
  marker-fill:black;
  marker-line-width:0;
  [zoom >= 10] {
    text-face-name:'DejaVu Sans Book';
    text-size:15;
    text-name:@label;
    text-fill:darken(grey,10%);
    text-dx:15;
  }
}

@smooth:.5;
#glaciers {
  ::outline {
    line-color: lighten(@steel,30%);
    line-width: 4;
    line-opacity:.3;
    line-join: round;
    line-smooth:@smooth;
  }
  polygon-fill:@steel;
  polygon-opacity:.3;
  polygon-smooth:@smooth;
}



