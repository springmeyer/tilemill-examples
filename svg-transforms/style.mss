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

// data from: http://wildfire.cr.usgs.gov/firehistory/data.html
// Watch out: v0.10.x has rendering hang when marker-width:0;
#fire[SIZECLASSN > 0] {
  [YEAR_ = '2012'] {
      marker-file:url(svg/flame.svg);
      marker-fill:darkred;
      marker-width:10;
      marker-transform:scale([SIZECLASSN],[SIZECLASSN]);
      //marker-allow-overlap:true;
      //marker-ignore-placement:true;
  }
}



