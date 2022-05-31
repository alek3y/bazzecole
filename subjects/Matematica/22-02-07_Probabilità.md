# Probabilità

Le principali definizioni riguardanti la probabilità sono:

- **Spazio dei risultati**, che è l'insieme dei possibili risultati di un'osservazione o esperimento (e.g. le sei facce del dado)
- **Evento**, cioè un sottoinsieme dello spazio dei risultati (e.g. la faccia del numero due)

$$S = \{1, 2, 3, 4, 5, 6\}$$
$$E_1 = \{2\},\ E_2 = \{x \in S\ |\ \textrm{x è pari}\} = \{2, 4, 6\}$$
dove $S$ è l'insieme dei risultati, mentre $E_1$ ed $E_2$ sono l'insieme degli eventi.

Questi eventi possono essere di tipo:

- **Elementare**, cioè un'insieme degli eventi che contiene un solo elemento (per cui è _aleatorio_)
- **Certo**, quando corrisponde allo spazio dei risultati
- **Impossibile**
- **Aleatorio** (o _casuale_), cioè tutti gli eventi che potrebbero verificarsi oppure no

## Frequenza

La frequenza $f$ di un esperimento è il rapporto tra il **numero di successi** concreti $m$ e il **numero di prove** effettuate $n$.

$$f = \frac{m}{n}$$
dove $0 \leq f \leq 1$.

Nel caso in cui $f = 0$, non significa che l'evento sia _impossibile_, visto che potrebbero essere necessarie altre prove perchè almeno un successo si verifichi. \
Allo stesso modo se $f = 1$ non significa che l'evento sia _certo_.

## Definizione

Per cui la probabilità di un evento $E$ è:
$$p(E) = \frac{n_E}{n_S}$$
dove $n_E$ è il **numero di casi favorevoli** all'evento (all'interno dell'insieme evento), mentre $n_S$ è il **numero dei casi possibili** (spazio dei risultati).

Al contrario della _frequenza_, se $p(E) = 0$ l'evento è **impossibile**, e quindi la frequenza $f = 0$. \
Per cui se $p(E) = 1$ allora l'evento è **certo** e $f = 1$.

## Operazioni

- **Unione**: $A \cup B$
- **Intersezione**: $A \cap B$
- **Evento contrario**: $\overline A$

Per esempio, operando all'interno dello spazio dei risultati
$$S = \{1, 2, 3, 4, 5, 6\}$$
l'_unione_ restituisce tutti gli elementi contenuti all'interno degli eventi coinvolti:
$$A = \{4, 5, 6\},\ B = \{2, 4, 6\}$$
$$A \cup B = \{2, 4, 5, 6\}$$

Per l'_intersezione_ invece, è possibile solo quando i due eventi sono **compatibili**, per cui $A \cap B \neq \emptyset$ e quindi non sono _disgiunti_.
Per cui, il risultato sarà un insieme contentente tutti gli elementi in comune:
$$A \cap B = \{4, 6\}$$
$$C = \{1, 2\} \Rightarrow A \cap C = \emptyset \Rightarrow \textrm{incompatibili}$$

Mentre l'_evento contrario_ restituirà lo spazio dei risultati esclusi gli elementi dell'evento coinvolto:
$$\overline A = \{1, 2, 3\},\ \overline C = \{3, 4, 5, 6\}$$

## Probabilità totale

La _probabilità totale_ di due eventi è la **probabilità della loro unione**, cioè la somma delle probabilità dei due eventi esclusa la loro l'intersezione (per evitare che venga inclusa due volte).

$$p(A \cup B) = p(A) + p(B) - p(A \cap B)$$

Nel caso in cui $A \cap B = \emptyset$, allora $p(A \cap B) = 0$ e quindi equivale alla somma delle due probabilità.

## Probabilità contraria

La _probabilità contraria_ di un evento è la probabilità dell'**evento contrario**, che unito all'evento da un _evento certo_.

$$p(\overline A) + p(A) = 1$$
$$p(\overline A) = 1 - p(A)$$

## Probabilità condizionata

La _probabilità condizionata_ di un evento $A$ condizionato a $B$ è la probabilità che si verifichi $A$, considerando che $B$ si è già verificato.

$$p(A/B) = \frac{p(A \cap B)}{p(B)} = \frac{n_{A \cap B}}{n_B}$$

Un esempio:
$$S = \textrm{un mazzo da 40}$$
$$E_1 = \textrm{esce una carta rossa},\ E_2 = \textrm{esce una carta di cuori}$$
$$p(E_2 / E_1) = \frac{n_{E_2 \cap E_1}}{n_{E_1}} = \frac{10}{20} = \frac{1}{2}$$

## Eventi indipendenti

Due eventi sono considerati **indipendenti** quando
$$p(A) = p(A / B)$$
cioè quando, per l'evento $A$, _non importa_ che $B$ si sia verificato oppure no, dato che non cambia le probabilità di $A$.

## Probabilità composta

La probabilità composta equivale alla probabilità che si verifichino due eventi congiunti **dipendenti**.
$$p(A \cap B) = p(A / B) \cdot p(B)$$

Quando sono **indipendenti** invece, $p(A) = p(A / B)$ quindi:
$$p(A \cap B) = p(A) \cdot p(B)$$
