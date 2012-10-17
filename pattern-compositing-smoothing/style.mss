Map {
  background-color: #b8dee6;
  background-image:url("paper.png");
}

#countries {
  ::outline {
    one/line-color: #85c5d3;
    one/line-width: 3.5;
    one/line-join: round;
    one/line-opacity:.9;
    one/line-smooth:15;
    one/line-comp-op:color-burn;
    one/line-clip:false;
    two/line-color: #85c5d3;
    two/line-width: 1.5;
    two/line-join: round;
    two/line-opacity:.9;
    two/line-smooth:55;
    two/line-comp-op:color-burn;
    two/line-clip:false;
    [zoom>=5] {
      line-width:.5;
    }
  }
  polygon-fill: #fff;
  polygon-gamma:.4;
  comp-op:difference;
}





