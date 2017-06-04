#!/bin/bash

PARAMS="-c -nv -P 7Z/"
PARAMS_CISELNIK="-c -nv -P 7Z_CISELNIK/"
DOWNLOADER="wget"

# Source: http://cedr.mfcr.cz/cedr3internetv419/OpenData/OpenDataDumpPage.aspx

## CEDR

# CSV
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Dotace.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Etapa.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/PrijemcePomoci.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Rozhodnuti.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/RozhodnutiSmlouva.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/RozpoctoveObdobi.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/SplatkaKalendar.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/UzemniRealizace.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/AdresaBydliste.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/AdresaSidlo.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrGrantoveSchemav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrOpatreniv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrOperacniProgramv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrPodOpatreniv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrPrioritav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrProgramPodporav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrCinnostTypev01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikDotacePoskytovatelv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikDotaceTitulv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikFinancniProstredekCleneniv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikFinancniZdrojv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikRozpoctovaSkladbaParagrafv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikRozpoctovaSkladbaPolozkav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikStatniRozpocetKapitolav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikStatniRozpocetUkazatelv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikUcelZnakv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikCedrPodprogramv01.csv.7z"
# 7Z nikoliv CSV
#$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Adresa.n3.7z"


## CSU
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikStatv01.csv.7z"

## SZCR
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikPravniFormav01.csv.7z"

## RUIAN
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMestskyObvodMestskaCastv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikObecv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikOkresv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikVuscv01.csv.7z"

## MMR
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrCinnostTypev01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrGrantoveSchemav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrOpatreniv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrOperacniProgramv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrPodOpatreniv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrPopdprogramv01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrPrioritav01.csv.7z"
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikMmrProgramPodporav01.csv.7z"

## EDSSMVS
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/ciselnikProgramv01.csv.7z"

## ARES
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/EkonomikaSubjekt.csv.7z"

## ROB
$DOWNLOADER $PARAMS	"http://cedropendata.mfcr.cz/c3lod/Osoba.csv.7z"

## 
#$DOWNLOADER $PARAMS	""
#$DOWNLOADER $PARAMS	""
