# Domande

## Definizione 3 tipi di progettazione

- _Concettuale_: modello entità - relazione usato per la rappresentazione dei dati in modo astratto
- _Logico_: usato per definire gli attributi delle tabelle poi presenti nel modello fisico (comprendendo chiavi primarie ed esterne)
- _Fisico_: costruzione del database vero e proprio

## Operazioni unarie e binarie

- _Unaria_: che opera solo su una tabella come proiezioni e selezioni
- _Binaria_: che opera su due tabelle come join, unione e intersezione

## Cos'è l'integrità referenziale?

È la proprietà del database che assicura la coerenza tra le relazioni delle tabelle

## Cosa sono le regole di cancellazione, inserimento, modifica?

- _default_: viene impostato un valore predefinito
- _set null_: viene impostato a null
- _on cascade_: l'azione ha effetto anche sui campi collegati

## Differenza tra DML (Data Manipulation Language) e DDL (Data Definition Language)

- _DML_: select, insert, update, delete (modifica dati)
- _DDL_: create, alter, drop (creazione, modifica vincoli, eliminazione)

## Differenza tra delete e drop

- _delete_: cancella dati dalla tabella
- _drop_: elimina la tabella (o colonna...)

## Prodotto cartesiano

Vengono unite tutte le righe di una tabella con tutte le righe di un'altra tabella, risultando in una tabella di grado g1*g2 e di cardinalità c1*c2 (indicando con g il grado e con c la cardinalità)

## Tipi di join

- _join/inner join_: unisce 2 tabelle dove la condizione di join è verificata (e.g. dove hanno un campo x uguale)
- _left join/left outer join_: unisce 2 tabelle dove la condizione di join è verificata, verrano presi tutti i campi della tabella di sinistra anche se non ci sono corrispondenze su quella di destra (in questo caso a destra verrano ineriti dei valori null)
- _right join/right outer join_: è l'opposto del left join
- _full join/full outer join_: unisce 2 tabelle dove la condizione di join è verificata, i campi senza corrispondenze verranno presi da entrambe le tabelle e verranno ineriti dei valori null (siano essi da sinistra o da destra)
- _cross join_: è il prodotto cartesiiano tra 2 tabelle senza alcuna condizione

## Tipi di attributi

- _atomico_: singola stringa (indivisibile)
- _composto_: una sequenza di stringhe (indirizzo)
- _calcolato_: una stringa calcolata (codice fiscale)
- _multiplo_: con più attributi (figlio1, figlio2, figlio3)

## Tupla

Sono i valori assunti dai campi di una riga di una tabella

## Istanza

Insieme di tuple di una tabella in un determinato momento

## Cardinalità di una tabella

Numero di tuple differenti in una tabella

## Join implicita

Al posto di utilizzare join per unire i campi, eseguo delle sotto query con cui confrontare i valori dei campi
