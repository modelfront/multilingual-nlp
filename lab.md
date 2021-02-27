### [How to make your NLP system multilingual](/)
# Lab

For this lab, we'll train models for **binary classification** on a multilingual dataset of Wikipedia comments labelled for **toxicity** by humans.

## [Jigsaw Multilingual Toxic Comment Classification](https://www.kaggle.com/c/jigsaw-multilingual-toxic-comment-classification/data?select=test.csv)
> ### Use TPUs to identify toxicity comments across multiple languages
> The Conversation AI team, a research initiative founded by Jigsaw and Google, builds technology to protect voices in conversation.  
> ...  
> This year, we're taking advantage of Kaggle's new TPU support and challenging you to build multilingual models with English-only training data.  
> ...  
> Jigsaw's API, Perspective, serves toxicity models and others in a growing set of languages (see our documentation for the full list). Over the past year, the field has seen impressive multilingual capabilities from the latest model innovations, including few- and zero-shot learning. We're excited to learn whether these results "translate" (pun intended!) to toxicity classification. Your training data will be the English data provided for our previous two competitions and your test data will be Wikipedia talk page comments in several different languages.  
> ...  
> *Disclaimer: The dataset for this competition contains text that may be considered profane, vulgar, or offensive.*  

Importantly, this dataset includes human-generated human-labelled data in multiple languages.

How do our multilingual techniques do compared to a scenario where we actually have human-generated human-labelled data?

---

### Datasets

Google has provided about half a million English comments as well as data in other languages.

> Currently, Perspective API has production TOXICITY and SEVERE_TOXICITY attributes in the following languages:
>    English (en)  
>    Spanish (es)  
>    French (fr)  
>    German (de)  
>    Portuguese (pt)  
>    Italian (it)  
>    Russian (ru)  


### Questions

How well does a system trained on English only do on other languages?

How does adding other languages affect the accuracy on English?

What is the effect of machine translation quality?

What is the relationship between training data size and accuracy?

What is the relationship between the number of languages covered and the zero-shot accuracy?

How does all of the above vary across tasks?


---

### Experiments

We'll use a small amount of the training data.

<Colab notebook>

---

### Evaluation and results

| System                                | Datasets                       | | `en` | `fr`  | `ru` |
|---------------------------------------|--------------------------------|-|:-------:|:-------:|:-------:|
| Zero-shot                             | `en`                           | |    x%   |    y%   |    z%   |
| Real data, separate                   | `fr`                           | |         |    y%   |         |
| Real data, multilingual               | `en`, `fr`, `ru`               | |    x%   |    y%   |    z%   |
|                                       |                                | |         |         |         |
| Translate at inference time           | `en`                           | |    x%   |    y%   |    z%   |
| Translate at training time            | `en`, `fr(en)`, `ru(en)`       | |    x%   |    y%   |    z%   |
| Translate and filter at training time | `en`, `f(fr(en))`, `f(ru(en))` | |    ?    |    ?    |    ?    |


### Advanced

- Inspect the false positives and false negatives
- Scale up the number of languages
- Use more data



