# Equazioni Differenziali

Un'equazione differenziale è un'equazione in cui l'**incognita è una funzione**, invece di un numero.

La forma di un'equazione differenziale **del primo ordine** si attiene alla seguente regola:
$$F(x; y; y') = 0$$
che definisce la relazione tra una variabile $x$, una funzione $y$ e la sua derivata $y'$.

Risolvere questo tipo di equazioni significa trovare l'**integrale generale**, cioè l'insieme di tutte le infinite soluzioni dipendenti da $c$.
Trovare il valore di $c$ invece, significa trovare l'**integrale particolare**, chè è possibile attraverso il **problema di Cauchy**, riconducibile alla seguente forma:
$$\begin{cases} F(x; y; y') = 0 \\ f(x_1) = y_1 \end{cases}$$
dove la condizione $f(x_1) = y_1$ è detta **condizione iniziale** con $x_1, y_1 \in \mathbb{R}$.

Di queste equazioni se ne possono trovare:

- Del tipo $y' = f(x)$
- A variabili separabili
- Lineari omogenee e complete

## Del tipo $y' = f(x)$

Integrando entrambi i membri sarà possibile ottenere il valore della primitiva $y$.

$$\int y' dx = \int f(x) dx \Rightarrow y = \int f(x) dx$$

## A variabili separabili

Un'equazione differenziale è a **variabili separabili** quando segue la forma:
$$y' = g(x) \cdot h(y)$$
dove $g(x)$ è un'equazione che ha $x$ come argomento, mentre $h(y)$ ha $y$ come argomento.

Per questo le due variabili si possono separare:
$$\frac{dy}{dx} = g(x) \cdot h(y) \hspace{2em} \frac{dy}{h(y)} = g(x)dx$$
$$\int \frac{1}{h(y)} dy = \int g(x) dx$$

Un esempio:
$$y' = xy + y \hspace{2em} \frac{dy}{dx} = y(x + 1) \hspace{2em} \int \frac{1}{y} dy = \int (x+1) dx$$
$$
\ln|y| = \frac{x^2}{2} + x + c \hspace{2em}
|y| = e^{\frac{x^2}{2} + x + c} \hspace{2em}
|y| = ce^{\frac{x^2}{2} + x} \hspace{2em}
y = \pm ce^{\frac{x^2}{2} + x}
$$
$$y = ce^{\frac{x^2}{2} + x}$$

## Lineari del primo ordine

Un'equazione differenziale è **lineare** quando segue la forma
$$y' = a(x)y + b(x)$$
che ricorda quella delle _funzioni lineari_ $y = mx + q$.

Quando $b(x) = 0$ è detta **lineare omogenea**, mentre quando $b(x) \neq 0$ è detta **lineare completa**.

### Lineare omogenea

La risoluzione di questo tipo è possibile applicando il metodo **a variabili separabili**, ma anche attraverso la formula
$$y = ke^{\int a(x) dx}$$
dove $k \in \mathbb{R}$, e può essere chiamato $c$.

### Lineare completa

Questo tipo è risolvibile con la formula
$$y = e^{\int a(x) dx} \cdot \left(\int b(x) \cdot e^{-\int a(x) dx} dx + c\right)$$
che diventa quella per le equazioni **lineari omogenee** quando $b(x) = 0$.

Definendo $A(x) = \int a(x) dx$ è possibile _ricavarla_ con:
$$
y' = a(x)y + b(x) \hspace{2em}
y' - a(x)y = b(x) \hspace{2em}
e^{-A(x)}(y' - a(x)y) = e^{-A(x)} \cdot b(x)
$$
$$y'e^{-A(x)} - a(x)e^{-A(x)}y = b(x)e^{-A(x)},\ \textrm{con il primo membro derivata di}\ e^{-A(x)}y$$
$$D(e^{-A(x)}y) = b(x)e^{-A(x)} \hspace{2em} \frac{y}{e^{A(x)}} = \int b(x)e^{-A(x)} dx + c$$
$$y = e^{A(x)} \left(\int b(x)e^{-A(x)} dx + c\right)$$
