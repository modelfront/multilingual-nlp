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

| System           | Description               | Training datasets                                | | `en`    | [`it`<sup>en</sup>](data/lazy) | [`es`<sup>en</sup>](data/lazy) | [`tr`<sup>en</sup>](data/lazy) |
|-------------------|---------------------|------------------------------------------------------------------------|-|:-------:|:-------:|:-------:|:-------:|
| English  | Translate at inference <br/> "Lazy" | `en`                                                               | |    x%   |    y%   |    z%   |    w%   |
|                                        |                                                                        | |         |         |         |       |
|                |                            |                                                                    | | **`en`**| **`it`**| **`es`**| **`tr`**|
| English | Do nothing <br/>"Zero-shot" | `en`                                                                   | |   (x%)  |    y%   |    z%   |    w%   |
|                                        |                                                                        | |         |         |         |       |
| Italian <br/> Real data  |  Human benchmark   | `it`                                                                    | |         |    y%   |         |         |
| Multilingual <br/> Real data | Human benchmark <br/> "$$$" | `en`, `it`, `es`, `tr`                                                 | |    x%   |    y%   |    z%   |    w%   |
|                                        |                                                                        | |         |         |         |       |
| Multilingual <br/> Synthetic | Translate at training <br/> "Eager" | `en`, [`en`<sup>`it`</sup>](data/eager), [`en`<sup>`es`</sup>](data/eager), [`en`<sup>`tr`</sup>](data/eager)    | |    x%   |    y%   |    z%   |    w%   |
| Multilingual <br/> Synthetic | Translate and filter at training  | `en`, `en`<sup>`it` filtered</sup>, `en`<sup>`es` filtered</sup>, `en`<sup>`tr` filtered</sup> | |    ?    |    ?    |    ?    |    ?   |

`x`<sup>`y`</sup> indicates a dataset in language x that was machine-translated to language y.

##### Translation and filtering

Translation at inference to English:  
 [`it`<sup>en</sup>](https://console.modelfront.com/#/evaluations/603d1fe43324be001701493e)
 
 [`es`<sup>en</sup>](https://console.modelfront.com/#/evaluations/603d1ff73324be0017014956)
 
 [`tr`<sup>en</sup>](https://console.modelfront.com/#/evaluations/603d200d3324be001701496e)

Translation at training from English:
 [`en`<sup>`it`</sup>](https://console.modelfront.com/#/evaluations/603d22a53324be0017014bec)
 
 [`en`<sup>`es`</sup>](https://console.modelfront.com/#/evaluations/603d26463324be0017014c6e)
 
 [`en`<sup>`tr`</sup>](https://console.modelfront.com/#/evaluations/603d265d3324be0017014c86)
 

---

### Advanced

- Ensembles and fine-tuning
- Rebalancing
- Inspect the false positives and false negatives
- Scale up the number of languages
- Use more data
- Change the filtering threshold


