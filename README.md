# How to make your NLP system multilingual

This should be easy!

---
## The problem

---
### Examples

- Classification
- Search - commerce
- Search - Polixis

---
## Approaches

---

### Trade-offs
Ease
Simplicity
Data requirements
Language support
Accuracy
Speed
Price
...

### Decision inputs
How accurate?
How many languages?
How much labelled data?
How much throughput/speed?
How much effort?
How frequent?  (Retraining)


---
## Multilingual or *cross*lingual?

https://cs.stackexchange.com/questions/65200/what-is-a-difference-between-cross-lingual-ir-and-multi-lingual-ir

"The first workshop on CLIR was held in Zürich during the SIGIR-96 conference."

---
## Machine translation

Which machine translation system to use?

- pre-trained model

- API like Google Translate

- a special system (transliteration, Schwiizertüütsch...)


### Pre-trained machine translation models

- Fairseq

- OPUS
...


### Machine translation APIs

- Most languages: Google Translate, Lingvanex

- Fastest customisation: ModernMT

- Best price: Lingvanex, ModernMT


### Special machine translation systems

- transliteration (deepchar)

- Schwiizertüütsch (de ⇆ als)

...

---

## Multilingual language models

### BERT

### LASER

### XLM

...

---

## Extreme scenario: long-tail languages 

Alemannic (Schwyzertüütsch) and Rumantsch
Similar to transliteration - no standard orthography

Bootstrapping from similar languages

