Map {
  background-color: black;
}

/*
data from https://github.com/astronexus/HYG-Database
 - created 'hygxyz.vrt' following www.gdal.org/ogr/drv_csv.html
 - created 'hygxyz.csvt': Integer,Integer,Integer,Integer,Integer,Integer,String,Real,Real,Real,Real,Real,Integer,Real,Real,String,Real,Real,Real,Real,Real,Real,Real
 - ogr2ogr -t_srs epsg:3857 stars.shp hygxyz.vrt -skipfailures
 - shapeindex stars.shp
*/

#stars {
  marker-width:[AbsMag]/5;
  marker-opacity:1;
  marker-line-width:.5;
  marker-line-opacity:.5;
  marker-line-color:white;
  marker-clip:false;
  marker-fill:white;
  marker-line-width:0;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  [ProperName!=''] {
     marker-fill:#ffed93;
     marker-width:[AbsMag];
  }
}




