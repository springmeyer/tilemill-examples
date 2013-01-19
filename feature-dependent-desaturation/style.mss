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

@color_true:red;
@color_false:green;
#data{
  marker-width:20;
  marker-line-width:0;
  marker-allow-overlap:true;
  [boolean="true"] {
     marker-fill:@color_true; 
     [desaturate="true"] {
         marker-fill:desaturate(@color_true,50%);
     }
  }
  [boolean="false"] {
     marker-fill:green; 
     marker-fill:@color_false; 
     [desaturate="true"] {
         marker-fill:desaturate(@color_false,50%);
     }
  }
  // this must be after other rules
  // to ensure it overrides them
  [catch_all="true"] {
    [boolean="true"] {
        marker-fill:desaturate(@color_true,100%);
    }
    [boolean="false"] {
        marker-fill:desaturate(@color_false,100%);
    }
  }
}
