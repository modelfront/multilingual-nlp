### [How to make your NLP system multilingual](/)
# Lab

For this lab, we'll use a dataset of Wikipedia comments labelled for toxicity by humans.

## [Jigsaw Multilingual Toxic Comment Classification](https://www.kaggle.com/c/jigsaw-multilingual-toxic-comment-classification/data?select=test.csv)
#### Use TPUs to identify toxicity comments across multiple languages

> The Conversation AI team, a research initiative founded by Jigsaw and Google, builds technology to protect voices in conversation.  
> ...  
> This year, we're taking advantage of Kaggle's new TPU support and challenging you to build multilingual models with English-only training data.  
> ...  
> Jigsaw's API, Perspective, serves toxicity models and others in a growing set of languages (see our documentation for the full list). Over the past year, the field has seen impressive multilingual capabilities from the latest model innovations, including few- and zero-shot learning. We're excited to learn whether these results "translate" (pun intended!) to toxicity classification. Your training data will be the English data provided for our previous two competitions and your test data will be Wikipedia talk page comments in several different languages.  
> ...  
> *Disclaimer: The dataset for this competition contains text that may be considered profane, vulgar, or offensive.*  


---

### Datasets


### Evaluation


### Questions

How well does a system trained on English only do on other languages?

How does adding other languages affect the accuracy on English?

Does the quality of the machine translation matter?

What is the relationship between training data size and accuracy?

---

### Experiments

<Colab notebook>

---

### Results

| System                                | Datasets                 | English | Spanish | Russian |
|---------------------------------------|--------------------------|:-------:|:-------:|:-------:|
| Real data                             | en, es, ru               |    x%   |    y%   |    z%   |
|                                       |                          |         |         |         |
| Zero-shot                             | en                       |    x%   |    y%   |    z%   |
| Translate at inference time           | en                       |    x%   |    y%   |    z%   |
| Translate at training time            | en, es(en), ru(en)       |    x%   |    y%   |    z%   |
| Translate and filter at training time | en, f(es(en)), f(ru(en)) |         |         |         |


