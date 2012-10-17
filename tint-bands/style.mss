@water: #b8dee6;

Map { background-color: @water; }

#countries::tint-bands {
  image-filters: agg-stack-blur(3,3);
  opacity: 0.3;
  line-join: round;
  [zoom=2] { line-width: 3; }
  [zoom=3] { line-width: 5; }
  [zoom=4] { line-width: 8; }
  [zoom=5] { line-width: 12; }
  [zoom=6] { line-width: 17; }
  [zoom>6] { line-width: 23; }
}
