function [ux,uy]=lat2utm(lon,lat)




zone=utmzone(-35,-71);   %%%%%%%%%%% UTM zone  %%%%%%%%


[ellipsoid,estr] = utmgeoid(zone);
mstruct = defaultm('utm');
mstruct.zone = zone;
mstruct.geoid = almanac('earth','geoid','m','wgs84');
mstruct = defaultm(utm(mstruct));

[ux,uy] = mfwdtran(mstruct,lat,lon);

