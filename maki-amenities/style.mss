
#pdx-poi{
  //marker-width:15;
  // possible, but not a great idea unless
  // you can be sure you have svg's for every category
  //marker-file:url("[amenity].svg");
  [amenity="restaurant"] {
    marker-file:url("maki/restaurant.svg");
    marker-width:15;
  }
  [amenity="cafe"] {
    marker-file:url("maki/cafe.svg");
    marker-width:15;
    marker-fill:sienna;
  }
  [amenity="pub"],[amenity="bar"] {
    marker-file:url("maki/beer.svg");
    marker-fill:steelblue;
    marker-width:15;
  }
  [amenity="arts_centre"] {
    marker-file:url("maki/art-gallery.svg");
    marker-fill:purple;
    marker-width:15;
  }
  [amenity="post_box"] {
    marker-file:url("maki/post.svg");
    marker-fill:steelblue;
    marker-width:15;
  }
  [amenity="bank"] {
    marker-file:url("maki/bank-24.png");
    marker-fill:steelblue;
    marker-width:15;
  }
  [amenity="public_building"] {
    marker-file:url("maki/town-hall.svg");
    marker-width:15;
  }
  [amenity="school"],[amenity="kindergarten"] {
    marker-file:url("maki/school.svg");
    marker-width:15;
  }
  [amenity="bicycle_parking"] {
    marker-file:url("maki/bicycle.svg");
    marker-width:15;
  }
  [amenity="fast_food"] {
    marker-file:url("maki/fast-food.svg");
    marker-width:15;
  }
  // not matching: telephone,place_of_worship, parking
  /*::text {
    text-name:[amenity];
    text-face-name:"DejaVu Sans Book";
    text-allow-overlap:true;
    text-dx:20;
  }
  */
}
