#!/bin/bash

PARAMS="-c -P GZ/"
DOWNLOADER="wget"

mkdir -p GZ

# From http://cedr.mfcr.cz/cedr3internetv419/OpenData/OpenDataDumpPage.aspx
# Extracted using extract_urls.js paste into browser JS/dev console

CEDR="https://cedropendata.mfcr.cz/c3lod/AdresaBydliste.csv.gz https://cedropendata.mfcr.cz/c3lod/AdresaSidlo.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrCinnostTypev01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrGrantoveSchemav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrOpatreniv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrOperacniProgramv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrPodOpatreniv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrPodprogramv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrPrioritav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikCedrProgramPodporav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikDotacePoskytovatelv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikDotaceTitul_RozpoctovaSkladbaPolozkav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikDotaceTitul_StatniRozpocetUkazatelv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikDotaceTitulv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikFinancniProstredekCleneniv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikFinancniZdrojv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikRozpoctovaSkladbaParagrafv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikRozpoctovaSkladbaPolozkav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikStatniRozpocetKapitolav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikStatniRozpocetUkazatelv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikUcelZnak_DotacniTitulv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikUcelZnakv01.csv.gz https://cedropendata.mfcr.cz/c3lod/Dotace.csv.gz https://cedropendata.mfcr.cz/c3lod/Etapa.csv.gz https://cedropendata.mfcr.cz/c3lod/PrijemcePomoci.csv.gz https://cedropendata.mfcr.cz/c3lod/Rozhodnuti.csv.gz https://cedropendata.mfcr.cz/c3lod/RozhodnutiSmlouva.csv.gz https://cedropendata.mfcr.cz/c3lod/RozpoctoveObdobi.csv.gz https://cedropendata.mfcr.cz/c3lod/SplatkaKalendar.csv.gz https://cedropendata.mfcr.cz/c3lod/UzemniRealizace.csv.gz"
CSU="https://cedropendata.mfcr.cz/c3lod/ciselnikStatv01.csv.gz"
SZCR="https://cedropendata.mfcr.cz/c3lod/ciselnikPravniFormav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikPravniFormav02.csv.gz"
RUIAN="https://cedropendata.mfcr.cz/c3lod/ciselnikKrajv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMestskyObvodMestskaCastv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikObecv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikOkresv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikVuscv01.csv.gz"
MMR="https://cedropendata.mfcr.cz/c3lod/ciselnikMmrCinnostTypev01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrGrantoveSchemav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrOpatreniv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrOperacniProgramv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrPodOpatreniv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrPodprogramv01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrPrioritav01.csv.gz https://cedropendata.mfcr.cz/c3lod/ciselnikMmrProgramPodporav01.csv.gz"
EDSSMVS="https://cedropendata.mfcr.cz/c3lod/ciselnikProgramv01.csv.gz"
ARES="https://cedropendata.mfcr.cz/c3lod/EkonomikaSubjekt.csv.gz"
ROB="https://cedropendata.mfcr.cz/c3lod/Osoba.csv.gz"

ALL="${CEDR} ${CSU} ${SZCR} ${RUIAN} ${MMR} ${EDSSMVS} ${ARES} ${ROB}"

for SOURCE in ${ALL}; do
  ${DOWNLOADER} ${PARAMS} "${SOURCE}"
done
