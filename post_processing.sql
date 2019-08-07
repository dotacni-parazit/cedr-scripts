UPDATE cedr.ciselnikObecv01 SET okresNadKod=REPLACE(okresNad, 'http://cedropendata.mfcr.cz/c3lod/ruian/resource/ciselnik/Okres/v01/','') WHERE 1=1;
UPDATE cedr.ciselnikOkresv01 SET krajNadKod=REPLACE(krajNad, 'http://cedropendata.mfcr.cz/c3lod/ruian/resource/ciselnik/Kraj/v01/','') WHERE 1=1;
