#!/bin/bash

PARAMS="-c -P GZ/"
DOWNLOADER="wget"

mkdir -p GZ

# Source: http://cedr.mfcr.cz/cedr3internetv419/OpenData/OpenDataDumpPage.aspx

## CEDR

# CSV
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Dotace.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Etapa.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/PrijemcePomoci.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Rozhodnuti.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/RozhodnutiSmlouva.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/RozpoctoveObdobi.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/SplatkaKalendar.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/UzemniRealizace.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/AdresaBydliste.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/AdresaSidlo.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrGrantoveSchemav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrOpatreniv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrOperacniProgramv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrPodOpatreniv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrPrioritav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrProgramPodporav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrCinnostTypev01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikDotacePoskytovatelv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikDotaceTitulv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikFinancniProstredekCleneniv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikFinancniZdrojv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikRozpoctovaSkladbaParagrafv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikRozpoctovaSkladbaPolozkav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikStatniRozpocetKapitolav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikStatniRozpocetUkazatelv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikUcelZnakv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrPodprogramv01.csv.gz"
#.gz nikoliv CSV
#$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Adresa.n3.gz"


## CSU
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikStatv01.csv.gz"

## SZCR
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikPravniFormav01.csv.gz"

## RUIAN
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikKrajv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMestskyObvodMestskaCastv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikObecv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikOkresv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikVuscv01.csv.gz"

## MMR
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrCinnostTypev01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrGrantoveSchemav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrOpatreniv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrOperacniProgramv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrPodOpatreniv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrPodprogramv01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrPrioritav01.csv.gz"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrProgramPodporav01.csv.gz"

## EDSSMVS
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikProgramv01.csv.gz"

## ARES
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/EkonomikaSubjekt.csv.gz"

## ROB
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Osoba.csv.gz"

## 
#$DOWNLOADER $PARAMS	""
#$DOWNLOADER $PARAMS	""
