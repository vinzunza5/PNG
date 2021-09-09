function [la,lo,up]=xyz2lat_f(x,y,z)

		[a,b,c]=cart2sph(x,y,z);
		lo=rad2deg(a);
		la=rad2deg(b);
		up=(0.001*c-6341);
%up en kilimeters
		
	


