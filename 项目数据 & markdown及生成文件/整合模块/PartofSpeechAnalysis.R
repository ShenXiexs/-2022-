#词性标记-基于spacyr包
#https://cran.r-project.org/web/packages/spacyr/vignettes/using_spacyr.html

library(spacyr)
library(reticulate)
spacy_initialize(model = "en_core_web_sm")
#spacyr is base on spaCy package of Python, it need to library the package of R-Python connection "reticulate", and initialize the python env as well. Meanwhile, the python interpreter of Rstudio should install spaCy and "en_core_web_*" model of language.

#in anaconda prompt: conda install spaCy, spacy-model-en_core_web_sm
#if the initialization is processed successfully, it will return the interpreter's directory and the information as followed:
#successfully initialized (spaCy Version: 3.3.0, language model: en_core_web_sm)


review_corpus %>% 
  spacy_parse(tag = TRUE, entity = FALSE, lemma = FALSE)
#Two fields are available for part-of-speech tags. The pos field returned is the Universal tagset for parts-of-speech, a general scheme that most users will find serves their needs, and also that provides equivalencies across languages.
#"tag" is a more detailed tagset provided by spacy, defined in each spacy language model, for English, this is the OntoNote5 version of the Penn Treebank tag set.
