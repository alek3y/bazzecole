# La normalizzazione delle tabelle

La **normalizzazione** consiste nel eliminare le **ridondanze** ovvero i dati che si ripetono inutilmente al fine di mantenere la coerenza dei dati contenuti nelle relazioni.

## Anomalie

Possono essere presenti delle anomalie nel caso in cui i dati non siano stati normalizzati, e possono essere di: **modifica**, **cancellazione**, **inserimento**.

Dove è quindi neccessario operare su molte tuple a causa di dati ridondanti, oppure dove non è proprio possibile inserire altri dati senza aver modificato tutta la relazione.

## Prima forma normale

Si dice che una relazione è in prima forma normale se tutti i suoi attributi sono **valori atomici** e possiede una **chiave primaria** che identifica univocamente la tupla.

## Seconda forma normale

Deve essere in **1NF**, in più non ci devono essere dipendenze funzionali tra i campi della relazione, ovvero tutti devono **dipendere solo e soltando dalla chiave primaria** (quindi non da un campo che dipende solamente in parte dalla chiave primaria composta).

Viene normalizzata creando nuove tabelle in **1NF** relazionate tra loro senza aggiungere o togliere campi.

## Terza forma normale

Deve essere in **2NF**, in questo passaggio si dovranno eliminare le **dipendenze transitive** tra i campi della relazione, ovvero quando un campo è determinante per un campo che a sua volta è determinante per un altro campo.

Ad esempio nel caso di _x -> y -> z_: **z** è in dipendenza transitiva rispetto a **x**.

## Forma normale di Boyce-Codd

La relazione deve essere in **1NF** ed ogni determinante deve essere una **chiave candidata** ovvero che **potrebbe** essere chiave primaria.
