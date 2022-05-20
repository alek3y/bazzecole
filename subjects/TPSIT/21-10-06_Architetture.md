# Architetture

## Sistemi distribuiti

Normalmente le applicazioni girano su computer con un singolo processore, anche chiamati _sistemi centralizzati_. Tutti i dati si trovano quindi in un unico sistema.
Si hanno **sistemi distribuiti** invece quando le applicazioni o/e le informazioni si trovano su più host cooperanti.

### Classificazione

- Sistemi **cluster**, costituito da più computer con gli stessi componenti
- Sistemi **grid**, opera a più computer con componenti diversi, sia per l'hardware che il software
- Sistemi distribuiti pervasivi, in cui ogni nodo dell'ecosistema è mobile e sfrutta connessioni wireless

Le caratteristiche di questo tipo di sistemi sono:

- _Affidabilità_: superano guasti tramite la ridondanza dei dati
- _Integrazione_: si integrano con componenti diversi
- _Trasparenza_: operano come un sistema singolo agli occhi dell'utente
- _Economicità_: costano meno con più componenti meno performanti ottentendo comunque alte prestazioni
- _Apertura_: utilizzano protocolli standard
- _Collaborazione_: possono condividere le proprie risorse hardware e software
- _Scalabilità_: integrano facilmente nuovi dispositivi hardware

Invece, gli svantaggi riguardano:

- Sviluppo software
- Complessità della struttura, riguardante la comunicazione interna
- Sicurezza, dato che è probabile l'ascolto dei dati in comunicazione
- Comunicazione, vista la mole di dati nei canali di trasmissione

## Evoluzione dei sistemi distribuiti

I sistemi distribuiti usano più microchip, dato che il rimpicciolimento dei transistor causa errori (quindi invalidando la _Legge di Moore_, per cui il numero di transistor raddoppia ogni 18 mesi).

### Strutture

- _SISD_, cioè con un'istruzione si elabora un dato alla volta
- _SIMD_, come per le GPU che elaborano più dati con una istruzione
- _MIMD a multiprocessore_, che hanno la memoria in comune (come i _thread_)
- _MIMD a multicomputer_, che usano lo scambio di messaggi per la condivisione dei dati (come con _fork_)

### Architettura Web-centric

Con l'evoluzione di questi sistemi è nata la struttura che ruota intorno al Web, per cui le applicazioni utilizzate dall'utente si trovano completamente sul server. \
Per cui la struttura _Client-Server_ si trova interamente nel Web, rendendolo un sistema distribuito.

Un esempio è _Google Docs_ che ha l'interfaccia client sul Web che comunica con il server che fa da backend per gestire i documenti salvati.

### Middleware

Forniscono dei framework per semplificare lo sviluppo e la pubblicazione di applicazioni che si affidano ai sistemi distribuiti. Per questo motivo si concentra principalmente sulla comunicazione tra i componenti del sistema, e non sull'applicazione stessa (come la gestione degli errori).

## HTTP

Il protocollo **HTTP** segue la struttura _Client-Server_ dove il server rimane in ascolto per nuove connessioni, mentre il client le avvia.
Per la comunicazione sfrutta il protocollo TCP, per cui viene aperta un canale di trasmissione fino alla fine della comunicazione.

Per la connessione, invece, il client usa un **URL**, che generalmente è strutturato così: `http://admin:password@192.168.1.1:8080/cgi-bin/index.php?interface=enp4s0`.

Esistono due versioni del protocollo, _HTTP/1.0_ e _HTTP/1.1_ entrambe su **porta 80**. La versione sicura HTTPS gira su **porta 443**.

Dopo aver stabilito un canale TCP tra client e server la comunicazione avviene con **richieste** e **risposte** HTTP.

### Richiesta

La prima riga di una _richiesta_ contiene la risorsa (come `/cgi-bin/index.php`), la versione HTTP usata dal client e metodo utilizzato, che può essere principalmente:

- GET
- POST
- PUT
- DELETE

Dopo la prima riga **obbligatoria** si trovano gli header **opzionali**, come per esempio:
```
Content-Type: text/html
Accept-Encoding: gzip
```

Il corpo (**body**) della richiesta si trova dopo una riga vuota (`\r\n`) alla fine dell'header. \
Qui è possibile inviare dei dati in _POST_, come per esempio delle informazioni di un _form_ codificate in URL. Questo perchè è possibile inviare questi dati anche in _GET_ secondo il formato `primachiave=valore&secondachiave=altrovalore` che viene aggiunto alla fine della risorsa richiesta separandola con un `?`.

### Risposta

Nella risposta invece oltre che alla versione si ha il codice di stato che descrive la riuscita della richiesta.

Si suddividono in:

- 1xx, per le **informazioni**
- 2xx, per indicare il **successo**
- 3xx, per il **reindirizzamento**
- 4xx, per gli **errori del client**
- 5xx, per gli **errori del server**

I più conosciuti sono:

- _100 Continue_, inviato prima dal client per chiedere al server se può continuare la richiesta
- _200 OK_
- _201 Created_, per confermare il successo di _POST_ o _PUT_
- _301 Moved Permanently_, per le risorse spostate in percorsi diversi
- _302 Found_, per le risorse spostate temporaneamente
- _400 Bad Request_
- _401 Unauthorized_, per credenziali (HTTP) mancanti
- _403 Forbidden_, per permessi del filesystem mancanti
- _404 Not Found_
- _500 Internal Server Error_
