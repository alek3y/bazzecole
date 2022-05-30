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

Per l'_intersezione_ invece, è possibile solo quando i due eventi sono **\underline{compatibili}**, per cui $A \cap B \neq \emptyset$ e quindi sono _disgiunti_.
Per cui, il risultato sarà un insieme contentente tutti gli elementi in comune:
$$A \cap B = \{4, 6\}$$
$$C = \{1, 2\} \Rightarrow A \cap C = \emptyset \Rightarrow \textrm{incompatibili}$$

Mentre l'_evento contrario_ restituirà lo spazio dei risultati esclusi gli elementi dell'evento coinvolto:
$$\overline A = \{1, 2, 3\},\ \overline C = \{3, 4, 5, 6\}$$

## Probabilità totale

La _probabilità totale_ di due eventi è la **probabilità della loro unione**, che corrisponde alla somma delle probabilità dei due eventi esclusa la loro l'intersezione (per evitare che venga inclusa due volte).

$$p(A \cup B) = p(A) + p(B) - p(A \cap B)$$
