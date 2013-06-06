Map {
  background-image:url(img/natural_paper.png);
}

#countries {
  ::outline {
    line-color: #83837c;
    line-width: .5;
    line-join: round;
    polygon-pattern-file:url(img/linedpaper.png);
  }
}

#parks {
    polygon-pattern-file:url(img/shade_medium.png);
    line-pattern-file:url(img/line_dotted_4.png);
    [zoom > 5] {
      line-pattern-file:url(img/line_double_14.png);
    }
}
