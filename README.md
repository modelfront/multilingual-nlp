# How to make your NLP system multilingual



---
## The problem

So you have an NLP system - a chat bot, a search engine, NER, a classifier... - working well for English.

And you want to make it work for other languages - or even for all languages.

##### Examples

##### Chat
Answering with the correct answer in a chat

##### Classification
Detecting malicious comments on a social network (Facebook, Wikipedia) or malicious ads on an ads network (Google)

##### Search
[Searching](https://modelfront.com/search) across products (eBay, AirBnb) person and company names (Facebook, Polixis)


---
## Approaches

We see a few common approaches:

#### Real data
Manually create more labelled training data for each language

#### Hack
Machine-translate at inference or query time

#### Synthetic data
Machine-translate the training data

#### Zero-shot
Use a cross-lingual model like BERT or LASER and hope for transfer learning

Or combinations of multiple approaches.


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
How often does the dataset update?  


---
## Multilingual or *cross*lingual?

https://cs.stackexchange.com/questions/65200/what-is-a-difference-between-cross-lingual-ir-and-multi-lingual-ir

"The first workshop on CLIR was held in Zürich during the SIGIR-96 conference."

---
## Machine translation

Which machine translation system to use?

#### Pre-trained models
Fairseq, OPUS, T5, [...](https://modelfront/compare)
They can be fine-tuned to customize and are available on HuggingFace.

#### APIs
Google Translate, Microsoft Translate, DeepL, ModernMT, Lingvanex, [...](https://modelfront/compare)

- most languages: Google Translate, Lingvanex
###### Fastest customisation: ModernMT
###### Best price
Lingvanex, ModernMT, unofficial APIs

#### Special systems
For niche tasks
###### Transliteration
[deepchar](https://github.com/deepchar)
###### Schwiizertüütsch and Rumantsch
de ⇆ als, fr ⇆ als, en ⇆ als

###### Gaming

---

## Multilingual language models

### BERT

### LASER

### XLM

...

---

## Extreme scenario: long-tail languages 

Alemannic (Schwyzertüütsch), Rumantsch, and Patois arpitan

Similar to transliteration:

##### Monolingual data
But no parallel data

##### No standard orthography

### Bootstrapping

We can bootstrap with monolingual data if machine translation supports similar languages like German and French.

