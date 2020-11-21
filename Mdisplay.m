clc;clear;


%2D plot testing
gx = geoaxes;

latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
geoplot(gx,[latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geobasemap(gx,'colorterrain');
%2D plot testing

%3D map display testing
uif = uifigure;
pos = [0 0 uif.Position(3) uif.Position(4)];
tgroup = uitabgroup(uif,'Position',pos);

tab1 = uitab(tgroup,'Title','Default Basemap');
g1 = geoglobe(tab1);

tab2 = uitab(tgroup,'Title','Gray Terrain Basemap');
g2 = geoglobe(tab2,'Basemap','grayterrain');
%3D map display testing