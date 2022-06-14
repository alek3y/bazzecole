# Informatica

## Definizioni

- **DBMS**: è l'_engine_ che permette la creazione, modifica e interrogazione **efficiente** di database (e.g. server MySQL, MariaDB, ...)
- **Superchiave**: l'insieme di tutte le possibili combinazioni di chiavi che renderebbero la tupla univoca all'interno della tabella
- **Gerarchia**: quando un'entità è figlio di un'altra, ossia quando un'entità è sottoinsieme di un'altra entità
- **Ristrutturazione**: è un processo che si svolge sulla progettazione concettuale che serve a rimuovere la _gerarchia_, separando o incorporando i figli con il padre
- **Atomicità**: quando un attributo non è più separabile (campo _semplice_, e.g. CAP) e quindi non è più **composto**
- **Istanza**: il contenuto e le proprietà dei una tabella in un momento specifico del tempo (una specie di foto della tabella)
- **Tabella**: è l'entità a livello _fisico_ che è composta da un numero di **campi** (gli attributi), cioè il **grado**, e da un numero di tuple (le righe dell'instanza), che è la **cardinalità**
- **Integrità referenziale**: è una _proprietà_ che assicura la coerenza tra le relazioni delle tabelle, attraverso i **vincoli di integrità**, che in pratica è la **foreign key**
- **Progettazione**: sono i procedimenti da fare per lo sviluppo di un database

	1. Progettazione concettuale, che attraverso il **modello E-R**, rappresenta gli oggetti di situazione nella realtà e le loro relazioni come delle entità
	2. Progettazione logica attraverso il **modello logico**, che descrive l'organizzazione dei dati, tra cui l'**integrità referenziale**
	3. Progettazione fisica, che consiste nel creare il database con SQL

- **Entità debole**: un'entità che, al contrario di quelle **forti**, non ha senso di esistere da sola
- **Dipendenza funzionale**: relativo alla _normalizzazione_, specifica il contesto di cui ha bisogno uno o più attributi per essere significativi.

	Per esempio, il voto che prende uno studente su un esame va salvato _in relazione_ all'esame e allo studente in questione: $\{\mathrm{matricola}, \mathrm{id\_esame}\} \to \mathrm{voto}$.
- **Sistema informatico**: è un tipo di **sistema informativo**, cioè l'insieme delle risorse che permettono a un gruppo o ad un'azienda di registrare le **informazioni** in modo automatico o meno (come per esempio, i docenti attraverso un registro cartaceo), che serve a semplificare la gestione dei **dati** e il reperimento delle **informazioni**

## Caratteristiche dei DBMS

Le proprietà che deve rispettare un _DBMS_ sono:

- Persistenza: i dati devono essere salvati permanentemente
- Accessibilità: dev'essere in grado di gestire l'accesso ai dati da parte di più programmi
- Efficienza: deve riuscire a elaborare grandi quantità di dati

## Vincoli

I tipi di vincoli sono:

- di **dominio**, che limita i campi specificando il **tipo di dato**
- di **tupla**, che sono le _condizioni_ applicate all'intera tupla (e.g. `voto >= 2 and voto <= 10`)
- di **chiave**, che rende la chiave _primaria_ **unica** e **senza** `NULL`
- di **integrità referenziale**

L'integrità referenziale è rispettata attraverso i vincoli di **cancellazione** e **modifica**:

1. `RESTRICT` o `NO ACTION`, che consiste nell'assicurarsi del riferimento e non fa niente in caso di errore
2. `CASCADE`, che **propagerà** l'operazione eseguita sulla tupla **della tabella padre**, cioè la riga a cui la chiave esterna riferisce, sulle figlie
3. `SET NULL`, che imposta il riferimento a `NULL` (se il campo non ha il vincolo `NOT NULL`)
4. `SET DEFAULT`, che imposta il riferimento al valore default

## Normalizzazione

Lo scopo della **normalizzazione** è quello di ridurre le **ridondanze** nel database, o comunque tutto quello che lo possano rendere **inefficiente**.

Le regole fondamentali sono:

1. **Prima forma normale** (_1NF_), che si aspetta di avere campi non composti, e quindi **atomici**, e la **chiave primaria**.
2. **Seconda forma normale** (_2NF_), che consiste nell'essere in _1NF_ e nel rimuovere tutti i campi che non dipendono dall'intera chiave primaria.

	Per esempio, avendo:
	$$T_1(\underline{A, B, C}, D, E, F)\ \mathrm{dove}\ \{A, B, C\} \to \{D, E\},\ C \to F$$

	La tabella è quasi corretta perchè $D$ ed $E$ dipendono da $A$, $B$ e $C$, cioè la chiave primaria. \
	Ma non è in _2NF_, perchè $F$ non dipende dall'intera chiave.

	Per sistemare è possibile separare la dipendenza in un altra tabella:
	$$T_1(\underline{A, B, C}, D, E)\ \mathrm{dove}\ \{A, B, C\} \to \{D, E\}$$
	$$T_2(\underline{C}, F)\ \mathrm{dove}\ C \to F$$
	con $T_1.C$ che riferisce a $T_2.C$.

3. **Terza forma normale** (_3NF_), che consiste nell'essere in _2NF_ e nel rimuovere la dipendenza **transitiva** che hanno gli attributi **non chiave** che dipendono da altri attributi **non chiave**.

	Per esempio:
	$$T_1(\underline{A, B}, C, D)\ \mathrm{dove}\ \{A, B\} \to C,\ C \to D$$

	La dipendenza è **transitiva** perchè $D$ non dipende direttamente dall'intera chiave primaria. \
	Per cui, per risolvere:
	$$T_1(\underline{A, B}, C)\ \mathrm{dove}\ \{A, B\} \to C$$
	$$T_2(\underline{C}, D)\ \mathrm{dove}\ C \to D$$
	con $T_1.C$ che riferisce a $T_2.C$.

## Transazioni

Una **transazione** è un operazione **atomica** (viene eseguita su un colpo) che accede o modifica i contenuti di un database. \
Per mantenere la consistenza dei dati (evitare _race condition_) vengono seguite le proprietà **ACID**:

- **A** (_Atomicità_): la transazione deve accadere in una volta o non proprio (in caso di errori)
- **C** (_Consistenza_): il database deve rispettare l'_integrità referenziale_ prima e dopo la transazione
- **I** (_Isolamento_): più transazioni devono poter avvenire senza interferenze
- **D** (_Durabilità_): il database dev'essere salvato sul disco alla fine della transazione così che i dati non vengano persi in caso di fallimento completo del sistema
