Wiedervorlage von Mails
=======================

Dieses Script ist ein Wiedervorlage-System für E-Mails.

Mails werden vom Posteingang in einen Unterordner (z.B. 1d = 1 Tag) geschoben.
Dieses Script (cleanmails.sh) sucht nun nach Mails, die älter als 1 Tag sind und übergibt den Dateinamen an das Script mvmails.sh, was die Mail wieder in den Posteingang verschiebt.

Das Script cleanmails.sh muss regelmäßig (z.B. per Cronjob 1 Mal/Stunde) gestartet werden.

Ordnerstruktur im Beispiel:
Posteingang
  |
  --> _Wiedervorlage
        |
        --> 1_1h     (1 Stunde)
            1_6h     (6 Stunden)
            1_12h    (12 Stunden)
            2_1d     (1 Tag)
            2_2d     (2 Tage)
            2_3d     (3 Tage)
            3_1w     (1 Woche)
            3_2w     (2 Wochen)
            4_1m     (1 Monat)
            9_Archiv (jede Mail wird hierher kopiert)
