# Dispositivi e reti mobili

## Reti mobili

Le **reti mobili** sono diverse dalle **reti wireless** (le quali sono implementate su reti locali) in quanto sono caratterizzate da _terminali che possono muoversi_ mantenendo attiva la connessione anche a chilometri di distanza.

Classificazione in base al tipo di mobilità:

- **Access mobility**, sistemi cordless indoor con raggio inferiore ai 500m (come i telefoni), che si connettono alla rete fissa tramite un _access point_
- **Terminal mobility**, il terminale è in movimento e rimane connesso in una rete di telecomunicazione
- **Service profile portability**, il terminale si può connettere non solo alla propria rete, ma anche ad altre reti di telecomunicazione usufruendo della portabilità del profilo su provider diversi
- **Personal mobility**, in questo sistema è l'utente ad essere riconosciuto dai sistemi di telecomunicazione, di conseguenza potrà utilizzare qualsiasi terminale lui voglia, si parla quindi di _Personal Communication Services_.

Nel caso della _SIM card_ si parla di terminal mobility e può connetersi anche ad altre reti in caso di servce profile portability.

Classificazione delle reti in base alla tecnologia utilizzata:

- **I generazione**, affermatasi negli anni 80 era in grado di trasmettere solo per via _analogica_ ed in grado di gestire solo la _voce_
- **II generazione**, nel 2006 con lo standard _GSM (Global System for Mobile Communication)_ nacque la prima forma di trasmissione digitale e con essa gli _SMS (Short Message Service)_ per i messaggi, gli _MMS (Multimedia Message Service)_ per mandare/ricevere media, il prorocollo _WAP (Wireless Application Protocol)_ per accedere ad internet, ed il protocollo _GPRS (General Packet Radio Service)_ per la comunicazione a pacchetto di dati
- **III generazione**, nasce il 3G che usa il protocollo _UMTS (Universal Mobile Telecommunications System)_  come standard, inoltre con il successivo _HSPA (High Speed Packet Access)_ venne completata l'offerta di servizi multimediali, avendo per esempio videochiamate fluide
- **IV generazione**, nascono le reti _LTE (Long Term Evolution)_ veloci quasi quanto le reti domestiche, in grado di navigare su internet senza rallentamenti.

## I dispositivi mobili

Si dividono in quattro tipologie, ognuna con le proprie caratteristiche:

- **Pocket PC**: palmari touch con discreta potenza di calcolo, sono _phone edition_ se permettono le funzionalità telefoniche, altrimenti sono _standard_
- **Smartphone**: dispositivi prettamente telefonici, meno potenti dei pocket PC
- **Tablet PC**: molto simili ai notebook ma dotati di touch screen
- **UMPC (Ultra Mobile PC)**: sono una via di mezzo tra Pocket PC e Notebook

## Mobile apps

Prima di procedere con lo sviluppo di un app per mobile, bisogna valutare che tipo di app vogliamo creare dato che esistono molteplici tecnologie che possono essere utilizzate,
vediamo ora i tipi di app che possono essere sviluppate.

### Web apps o PWA (Progressive Web Apps)

Sono app che girano dentro ad un browser standard e sono costruite per funzionare bene sui dispositivi mobili (si pensa prima a farle andare bene su mobile e poi su desktop).

#### Vantaggi

- usano standard web come HTML/CSS/JS
- facili da mantenere
- meno costose da sviluppare dato che non richiedono di saper utilizzare linguaggi nativi
- multipiattaforma

#### Svantaggi

- devono appoggiarsi ad un browser
- sono più lente delle app scritte in linguaggio nativo
- non possono interagire con l'hardware del dispositivo (ad esempio non posono accedere alla telecamera)

### Native apps

Sono app scritte nel linguaggio nativo del dispositivo e quindi costruite appositamente per quella piattaforma.

#### Vantaggi

- molto veloci
- distribuite negli app store
- interagiscono con l'hardware del dispositivo

#### Svantaggi

- costruite per una singola piattaforma
- scritte con lianguaggi nativi e quindi più complessi
- molto costose
- difficili da mantenere

### Hybrid apps

Sono percepite come app native dato che non bisogna accederci dal browser, ma in realtà girano dentro ad una web view (browser specializzato per un'app in particolare) oppure attraverso un framework.

I **vantaggi** in questo caso sono un compromesso tra quelli delle app web e quelli delle app native, ovvero:

- facili e veloci da costruire, poco costose, multipiattaforma, senza browser, accedono alle funzionalità hardware del dispositivo.

Anche qui gli **svantaggi** sono una combinazione di quelli delle app web e quelli delle app native, tra cui:

- app più lente e meno interattive di quelle native e più costose delle app web
