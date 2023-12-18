#!/usr/bin/env sh
VENDORS="umap/static/umap/vendors"

mkdir -p $VENDORS/leaflet/ && cp -r node_modules/leaflet/dist/** $VENDORS/leaflet/
mkdir -p $VENDORS/editable/ && cp -r node_modules/leaflet-editable/src/*.js $VENDORS/editable/
mkdir -p $VENDORS/editable/ && cp -r node_modules/leaflet.path.drag/src/*.js $VENDORS/editable/
mkdir -p $VENDORS/hash/ && cp -r node_modules/leaflet-hash/*.js $VENDORS/hash/
mkdir -p $VENDORS/i18n/ && cp -r node_modules/leaflet-i18n/*.js $VENDORS/i18n/
mkdir -p $VENDORS/editinosm/ && cp -r node_modules/leaflet-editinosm/Leaflet.EditInOSM.* $VENDORS/editinosm/
mkdir -p $VENDORS/editinosm/ && cp -r node_modules/leaflet-editinosm/edit-in-osm.png $VENDORS/editinosm/
mkdir -p $VENDORS/minimap/ && cp -r node_modules/leaflet-minimap/src/** $VENDORS/minimap/
mkdir -p $VENDORS/loading/ && cp -r node_modules/leaflet-loading/src/** $VENDORS/loading/
mkdir -p $VENDORS/markercluster/ && cp -r node_modules/leaflet.markercluster/dist/** $VENDORS/markercluster/
mkdir -p $VENDORS/contextmenu/ && cp -r node_modules/leaflet-contextmenu/dist/** $VENDORS/contextmenu/
mkdir -p $VENDORS/heat/ && cp -r node_modules/leaflet.heat/dist/** $VENDORS/heat/
mkdir -p $VENDORS/fullscreen/ && cp -r node_modules/leaflet-fullscreen/dist/** $VENDORS/fullscreen/
mkdir -p $VENDORS/toolbar/ && cp -r node_modules/leaflet-toolbar/dist/** $VENDORS/toolbar/
mkdir -p $VENDORS/formbuilder/ && cp -r node_modules/leaflet-formbuilder/*.js $VENDORS/formbuilder/
mkdir -p $VENDORS/measurable/ && cp -r node_modules/leaflet-measurable/Leaflet.Measurable.* $VENDORS/measurable/
mkdir -p $VENDORS/photon/ && cp -r node_modules/leaflet.photon/*.js $VENDORS/photon/
mkdir -p $VENDORS/csv2geojson/ && cp -r node_modules/csv2geojson/*.js $VENDORS/csv2geojson/
mkdir -p $VENDORS/togeojson/ && cp -r node_modules/@tmcw/togeojson/dist/togeojson.umd.js $VENDORS/togeojson/togeojson.js
mkdir -p $VENDORS/osmtogeojson/ && cp -r node_modules/osmtogeojson/osmtogeojson.js $VENDORS/osmtogeojson/
mkdir -p $VENDORS/georsstogeojson/ && cp -r node_modules/georsstogeojson/GeoRSSToGeoJSON.js $VENDORS/georsstogeojson/
mkdir -p $VENDORS/togpx/ && cp -r node_modules/togpx/togpx.js $VENDORS/togpx/
mkdir -p $VENDORS/tokml && cp -r node_modules/tokml/tokml.js $VENDORS/tokml
mkdir -p $VENDORS/locatecontrol/ && cp -r node_modules/leaflet.locatecontrol/dist/L.Control.Locate.css $VENDORS/locatecontrol/
mkdir -p $VENDORS/locatecontrol/ && cp -r node_modules/leaflet.locatecontrol/src/L.Control.Locate.js $VENDORS/locatecontrol/
mkdir -p $VENDORS/dompurify/ && cp -r node_modules/dompurify/dist/purify.js $VENDORS/dompurify/
mkdir -p $VENDORS/colorbrewer/ && cp node_modules/colorbrewer/index.js $VENDORS/colorbrewer/colorbrewer.js
mkdir -p $VENDORS/simple-statistics/ && cp node_modules/simple-statistics/dist/simple-statistics.min.js $VENDORS/simple-statistics/
mkdir -p $VENDORS/uuid/ && cp node_modules/uuid/dist/*.js $VENDORS/uuid/

echo 'Done!'
