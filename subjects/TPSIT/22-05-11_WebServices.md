# Web Services: protocolli SOAP e REST

## Cosa è un Web Service 
Un **web service** è una pattaforma che permette a diverse applicazioni di dialogare tra loro attraverso uno standard
di comunicazione indipendente dalla piattaforma stessa dove gli utilizzatori sono ignari di come è implementato.

Per far comunicare il *client* con il *server* è neccessario avere:
1. un **medium** per comunicare, ad esempio **HTTP**
2. un **formato** interpretabile da diverse applicazioni, ad esempio **XML**, **JSON**

Un **servizio** è una risorsa che si scambiano 2 o più applicazioni, non è quindi equiparabile ad un **sito** web
il quale offre testo e grafica per un essere umano.

Le soluzioni di web service più utilizzate sono:
- **SOAP** con medium HTTP (POST) e formato XML
- **REST** con medium HTTP (POST, GET, PUT, DELETE) e formato XML, JSON, Text

Questo meccanismo consente di creare **un'architettura facilmente componibile**, rendendo facile l'utilizzo di 
molteplici tecnologie.

## Il protocollo SOAP
Il protocollo **SOAP** (Simple Object Access Protocol) è basato su **XML** e utilizza l'approccio di chiamate remote di metodi presenti
su altri nodi della rete

Il **ciclo di vita** di un WS di tipo **SOAP** può essere riassunto nelle seguenti fasi:
1. Il **server** crea il servizio descritto da un documento **WSDL** (Web Service Description Language) in formatto XML,
    il quale contiene tutti i parametri e valori di ritorno.\
    La pubblicazione del servizio è affidata ad un **registro UDDI** (Universal Description Discovery and Integration)
2. Il **client** nella fase di **discovery** interroga il registro per scoprire i servizi di cui avrà bisogno
3. Il **client** chiede al servizio il documento **WSDL** per indivduare gli **URI** e i modi con cui interrogarlo
4. Il **client** crea uno strato software chiamato **request agent** il quale comunicherà con il **provider agent** del **server**.\
    La funzione degli agent è quella di gestire i messaggi **SOAP** assemblando e disassemblando messaggi nel formato XML
    per permettere la comunicazione automatica tra client e server

## Il protocollo REST
Il protocollo **REST** (REpresentational State Transfer) è molto più leggero di quello SOAP in quanto si basa sulla
corrispondenza diretta tra oggetti remoti individuati da:
- **URI** (Uniform Resource Identifiers)
- **comandi HTTP** (GET, PUT, POST, DELETE)

Il successo di REST rispetto a SOAP è che non è limitato al web e non richiede di imparare nuovi protocolli, in quanto
sfrutta semplicemente meglio l'HTTP.\
Le risorse sono individuate nel modo più naturale possbile, ovvero attraverso **URI parlanti**, che sono appunto autodescrittivi, mentre
Il formato utilizzato per mandare/ricevere informazioni è il **JSON**.

### Principali differenze tra REST e SOAP
- REST è incentrato sulla **risorsa**, mentre SOAP sul **servizio**
- REST gestisce le risorse con chiamate HTTP, mentre SOAP espone dei metodi accessibili dal client
- REST ha una riduzione della parte di configurazione

### Azioni CRUD
REST utilizza soltanto i metodi legati al protocollo HTTP, i quali permettono di eseguire operazioni CRUD: Create, Read, Update, Delete;
le quali agiscono sulle risorse.

| METODO HTTP | OPERAZIONE CRUD | DESCRIZIONE                   |
|:-----------:|-----------------|-------------------------------|
| POST        | Create     C    | Crea una nuova risorsa        |
| GET         | Read       R    | Ottiene una risorsa esistente |
| PUT         | Update     U    | Aggiorna una risorsa          |
| DELETE      | Delete     D    | Elimina una risorsa           |

### Vantaggi
L'utilizzo dell'architettura **RESTful** porta notevoli vantaggi come:
- Utilizzo di tecnologie standard
- Separazione tra client e server
- Portabilità del frontend ad altre piattaforme
- Scalabilità 
- Indipendenza da linguaggi e tecnologie specifiche
