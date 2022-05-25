# Le applicazioni lato server

## La programmazione server-side

Il **web server** deve generare il contenuto in modo dinamico al momento della richiesta da parte del client.
Al giorno d'oggi esistono varie tecniche di programmazione server-side ed una prima classificazione può essere fatta in base alla loro relazione con **HTML**, dove lo script del server può essere:

- **embedded** come nel caso di PHP

- **separato**, associandolo ad un URL, e quindi possiamo usare:
    - **CGI** (Common Gateway Interface)
    - **Servlet**
    - **API** (Application Programming Interface)

### CGI

Questa tecnica consiste nell'invocare procedure remote attraverso un programma CGI presente nel server al quale vengono passati i dati da una pagina HTML.

Le applicazioni che utilizzano questo standard possono essere **scritte in qualsiasi linguaggio** in grado di leggere dallo standard input e scrivere sullo standard output.

Per **ogni richiesta** verrà generato **un processo**, inoltre possiamo definire questa tecnica **non portabile**, in quanto può differenziare in base al sistema operativo del server.

Esempio di **richiesta/risposta**:
1) Il **client** invia al server la richiesta di eseguire un programma CGI con dei parametri attraverso HTTP
2) Il **server** attraverso l'interfaccia CGI funge da collegamento al programma indicato dal client, passandogli i parametri
3) Il **programma CGI** ritorna al server i dati elaborati sotto forma di pagina HTML
4) Il **server** invia al client i dati elaborati tramite HTTP

### Servlet

A differenza del modello CGI, le servlet utilizzano **java** dove ogni istanza è un **oggetto** e risultano quindi **portatili** grazie alla **JVM**, inoltre una servlet viene caricata una singola volta, creando per **ogni richiesta un thread**, ottimizzando l'accesso alle risorse tramite caching.

L'ambiente di esecuzione delle servlet viene chiamato **container**, esso ne gestisce tutto il loro ciclo di vita, comprendendo quindi: la **comunicazione** con i client, la **sicurezza**, il **multithreading**.

Esempio di **richiesta/risposta**:
1) Il **client** invia una richiesta al web server per usare una servlet
2) **Se è la prima richiesta** da parte del client allora il server istanzia la servlet
3) Un **thread viene generato** per far comunicare il client alla servlet e gli viene passata la richiesta dal client
4) Il **thread-servlet elabora e ritorna** la risposta al server, il quale la invierà al client

