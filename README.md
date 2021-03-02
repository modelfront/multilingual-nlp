# How to make your NLP system multilingual

Many NLP systems are built for one language first but, in the real world, content comes in many languages.

Making your NLP system multilingual is easy conceptually and getting easier and easier thanks to new tools.

What types of systems can we easily make multilingual?  What are the approaches and technologies?  How can we evaluate the results?

> This repo was first created for a [workshop](https://appliedmldays.org/events/amld-epfl-2021/workshops/how-to-make-your-nlp-system-multilingual) at EPFL Applied Machine Learning Days 2021.
> 
> Nerses Nersesyan, Junior AI Engineer, Polixis  
> Adam Bittlingmayer, CEO, ModelFront  


---
## The problem

So you have an NLP system - a chat bot, a search engine, NER, a classifier... - working well for English.

And you want to make it work for other languages - or even for all languages.

Examples:

##### Chat
Answering with the correct answer in a chat

##### Entity recognition
Find mentions of protein interactions in medical research papers

##### Classification
Detecting malicious comments on a social network (Facebook, Wikipedia) or malicious ads on an ads network (Google Ads)

##### Search
[Searching](https://modelfront.com/search) across products (eBay, AirBnb) person and company names (Facebook, Polixis) or places (Google Maps)

Common theme:  
- Real-world input - The data are crawled or user-generated.  We have no control over the input in production.
- Numeric output - Classification, regression, retrieval, recommendation...  We are not required to generate text.

What's *not* a flavor of this problem?  
Translation itself.  Text generation like GPT-3.  Grammarly or LanguageTool.


---
## Approaches

We see a few common approaches:

#### Real data
Manually create more labelled training data for each language  
$$$

#### Translate at inference
Machine-translate at inference or query time  
"Lazy"

#### Zero-shot
Fine-tune a multilingual pretrained model like BERT or LASER and hope for transfer learning  
"Do nothing

#### Translate at training
Machine-translate at training data  
"Eager"

Or combinations of multiple approaches.

So which approach to use when?

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

> “The first workshop on CLIR was held in Zürich during the SIGIR-96 conference.”


---
## Machine translation

Which machine translation system to use?

#### Pre-trained models
Fairseq, OPUS, T5, [...](https://modelfront/compare)
They can be fine-tuned to customize and are available on HuggingFace.

#### APIs
Google Translate, Microsoft Translate, DeepL, ModernMT, Lingvanex, [...](https://modelfront/compare)

###### Most languages
Google Translate, Lingvanex
###### Fastest customization
ModernMT
###### Best price
Lingvanex, ModernMT, unofficial APIs

#### Special systems
For niche tasks
###### Transliteration
[deepchar](https://github.com/deepchar)
###### Long-tail languages
Schwiizertüütsch, Rumantsch, Patois arpitan
###### Gaming

---

## Multilingual language models

Pretrained on large monolingual datasets with hundreds of languages

### BERT

### LASER

### XLM

...

---

## Extreme scenario: long-tail languages 

Alemannic (Schwyzertüütsch), Rumantsch or Patois arpitan

Similar to transliteration:

- **Monolingual data** but no parallel data

- **No standard** orthography

### Bootstrapping

We can bootstrap from monolingual data if we have bad machine translation
for **back-translation**.

##### Rules-based
Using rules or dictionaries  
For e.g. Alemannic:German

##### Similar languages
Using existing systems that support languages like German and French  
For e.g. Alemannic:English  
Can also bridge to German

---

# Lab

We can apply these concepts on the *Jigsaw Multilingual Toxic Comment Classification* using Wikipedia datasets provided by Google.

See [lab.md](lab.md)

---

# Conclusions

It's easy and getting easier.

The translation quality does not need to be perfect.

Translating at inference or query time does not scale.

There is no optimal approach - there are trade-offs.





