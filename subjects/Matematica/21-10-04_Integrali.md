# Indefiniti

Di un integrale
$$\int f(x) dx$$

- $\int$ è il simbolo di integrazione
- $f(x)$ è la funzione **integranda**
- $dx$ indica la variabile di integrazione

## Primitiva

La funzione primitiva $F(x)$ di un integrale è il risultato dell'integrazione, che derivata restituisce l'_integranda_.
$$F(x) = \int f(x) dx$$
$$\frac{\mathrm{d}}{\mathrm{d}x}F(x) = f(x)$$

## Metodi di risoluzione

I principali metodi di integrazione sono:

1. Integrali immediati
2. Funzioni razionali fratte
3. Sostituzione
4. Integrazione per parti

### Integrali immediati

$$
\int x^n dx = \frac{x^{n+1}}{n+1} + c
\hspace{4em}
\int \frac{1}{x} dx = \ln|x| + c
\hspace{4em}
\int e^x dx = e^x + c
$$
$$
\int -\sin{x} dx = \cos{x} + c
\hspace{4em}
\int \cos{x} dx = \sin{x} + c
$$
$$
\int \tan{x} dx = -\ln|\cos{x}| + c
\hspace{4em}
\int \cot{x} dx = \ln|\sin{x}| + c
$$
$$
\int \frac{1}{\cos^2{x}} dx = \tan{x} + c
\hspace{4em}
\int \frac{1}{\sin^2{x}} dx = -\cot{x} + c
$$
$$
\int \frac{1}{\sqrt{1-x^2}} dx = \arcsin{x} + c = -\arccos{x} + c
\hspace{4em}
\int \frac{1}{1+x^2} dx = \arctan{x} + c
$$

### Funzioni razionali fratte

In base al grado del numeratore $N(x)$ e del denominatore $D(x)$ si avranno diversi _metodi di integrazione_:

- Quando $\deg(N(x)) \geq \deg(D(x))$, allora si usa il metodo di **divisione tra polinomi**
- Altrimenti, si risolve con il metodo **A e B**.

### Sostituzione

Lo scopo di questo metodo è quello di semplificare il processo di integrazione sostituendo _quello che da fastidio_ con la variabile $t$.

Un esempio:
$$\int -\frac{1}{\sqrt{1-x}} dx$$
$$t = \sqrt{1-x} \rightarrow t^2 = 1-x \rightarrow 2t dt = -1 dx$$

A questo punto, la sostituzione consiste nel rimpiazzare $\sqrt{1-x}$ con $t$ e $-1 dx$ con $2t dt$:
$$\int \frac{2t}{t} dt = \int 2 dt = 2t = 2\sqrt{1-x} + c$$

### Integrazione per parti

Questo metodo semplifica l'integrazione di un'integranda composta dalla moltiplicazione tra due funzioni $f(x)$ e $g'(x)$, dove $g'(x)$ è la derivata di $g(x)$.

$$\int f(x)g'(x) dx = f(x)g(x) - \int f'(x)g(x) dx$$

Dove i fattori da scegliere sono:

- $f(x)$ o **fattore finito**, che deve essere _facilmente derivabile_
- $g'(x) dx$ o **fattore differenziale**, per cui $g'(x)$ deve essere _facilmente integrabile_

# Definiti

L'integrale definito di una funzione continua all'interno dell'intervallo $\left[a, b\right]$ esprime l'area sottesa alla funzione.

$$\int_a^b f(x) dx$$

## Proprietà

1. Di **linearità**: \
$$\int_a^b \left(\alpha f(x) + \beta g(x)\right) dx = \alpha \int_a^b f(x) dx + \beta \int_a^b g(x) dx$$ \
con $\alpha, \beta \in \mathbb{R}$.
2. Di **additività**: \
$$\int_a^c f(x) dx = \int_a^b f(x) dx + \int_b^c f(x) dx$$
3. Del **teorema della media**: \
![Rettangolo la cui area equivale all'integrale](https://i.ibb.co/Kqv39kc/image.png) \
L'area sottesa di una funzione $f(x)$ è uguale all'area del rettangolo che ha per base $b-a$ e altezza $f(z)$ (chiamato _valore medio_) ricavabile con: \
$$f(z) = \frac{\int_a^b f(x) dx}{b - a}$$