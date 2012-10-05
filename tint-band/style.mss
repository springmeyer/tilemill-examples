Map {
  background-color: #EBEAE8;
}

#countries {
  [NAME='Afghanistan'] {
    line-color:#F8C3BF;
    line-offset:-3;
    line-width:15;
    polygon-fill:black;
    polygon-comp-op:dst-in;
    ::mask {
      polygon-fill:#EBEAE8;
      comp-op:dst-in;
    }
  }
  [NAME!='Afghanistan'] {
    ::outline {
      line-color: #85c5d3;
      line-width: 2;
      line-join: round;
    }
    ::fill {
      polygon-fill: #EBEAE8;
    }
  }
}

