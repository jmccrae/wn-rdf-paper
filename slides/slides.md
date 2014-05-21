% Publishing and Linking WordNet using _lemon_ and RDF
% ♣John M<sup>c</sup>Crae, ♦Christian Fellbaum, ♣Philipp Cimiano
% ♣Semantic Computing Group, University of Bielefeld. ♦Princeton University

# What is WordNet?

* WordNet is one of the oldest and most widely used lexico-semantic resources
* Has been used for
    * Word sense disambiguation
    * Query expansion
    * Entity recognition
    * Event processing
    * Sentiment analysis
    * etc., etc.,

# WordNet as a global project

<div class="leftcol">
* WordNets have been developed for over 70 languages
* Has been extended by
    * FrameNet
    * VerbNet
    * OntoNotes
    * etc., etc.,
* It is difficult to link back to the original
* More so as WordNet synsets are not stable cross-version!
    * Actually, it is not clear which synsets map
</div>
<div class="rightcol">
<img src="img/gwa.gif" style="width:400px;"/>
</div>

# WordNet-RDF

* WordNet needs RDF
* To be a stable center of the LLOD cloud
* To enable easy interversion linking
* To integrate with the Semantic Web community

# Wait, hasn't this been done already?

* Yes:
    * W3C WordNet
    * VU Wordnet 3.0 
    * As part of UBY, BabelNet, etc.
* But:
    * Not involved with development of WordNet
    * Not hosted by data producer (Princeton)
    * Not updated with new releases

# So..., what is a (ontology-)lexicon?

<div class="leftcol">
*  A lexicon is a collection of lexical information
*  We do not need to define semantics within the lexicon
*  “An ontology-based semantic lexicon would leave the semantics to the
      ontology, focusing instead on providing domain-specific terms and object
      descriptions in the ontology.” (Buitelaar, 2010)
</div>
<div class="rightcol">
![](img/core2.png)
</div> 

# _lemon_ Design goals
*  RDF(S)
*  Conciseness
*  Not prescriptive 
    *  i.e., uses data categories
*  Semantics by reference 
    *  i.e., uses ontologies
*  Extensible
 
# Forms
<div>
_lemon_ allows us to distinguish between different forms:
</div>
<div style="padding:30px;position:relative;left:100px;">
<span style="padding:30px;">
_“edema”_ (**singular**)
</span>
<span style="padding:30px;">
_“edemata”_ (**plural**)
</span>
</div>
<div>
Hence, forms are also nodes:
</div>
<div class="hbox">
![](img/ex-lemon-forms.png)
</div>



# Senses
<div>
_lemon_ allows us to say something about why a particular word is used
</div>
<div style="padding:30px;position:relative;left:100px;">
<span style="padding:30px;">
_“edema”_ (**modern**)
</span>
<span style="padding:30px;">
_“dropsy”_ (**antiquated**)
</span>
</div>
<div>
Hence we introduce a sense to describe the usage of a word with a given meaning
</div>
<div class="hbox">
![](img/ex-lemon-senses.png)
</div>

# _lemon_ and WordNet

* _lemon_ as the W3C Model for lexica should be a natural choice
* WordNet strongly influenced the development of the Lexical Markup Framework (LMF)
* LMF strongly influenced _lemon_
* Thus, _lemon_ fits closely to WordNet

# WordNet as an ontology

* But... _lemon_ requires reference to an ontology
* We treat the WordNet synset graph as the ontology
* We do not assign the synsets OWL types
    * Instead they are `skos:Concept`s

# WordNet stable identifiers

Synsets:

<pre>
http://wordnet-rdf.princeton.edu/wn31/103547513-n
</pre>

* Version: `wn31`
* Part-of-speech: `1********-n`
* Offset identifier: `03547513`

Words:

<pre>
http://wordnet-rdf.princeton.edu/wn31/hotel-n
</pre>

* Version: `wn31`
* Lemma: `hotel`
* Part-of-speech: `n`

# Wordnet data example

<div class="hbox">
![The 'hotel' lexical entry](img/WordNet-hotel.png)
</div>

# External data linking

* Open Multilingual Wordnet 
* lemonUBY
* VerbNet
* W3C WordNet

# Including translations

* There are three ways of including translations in _lemon_
<div class="hbox">
![](img/Lemon Translation.png)
</div>

# Including translations

* By Reference
    * Ontology-based semantics
* By Sense Relationship
    * Allows exact correspondence, e.g., "NATO"@en => "OTAN"@fr, "North Atlantic Treaty Organization"@en => "Organisation du traité de l'Atlantique Nord"@fr
    * Explicit links
* As datatype property
    * No further annotation
    * Easy to query

# Links to other resources

* lemonUBY
    * To WordNet 3.0 data on lexical entries and synsets
* VerbNet
    * To frames on a sense level
* W3C WordNet
    * Links on a lexical entries and synsets
* Your data?

# Linking to previous version

* URI schemes are also supported for previous version
    * Implemented by 303 redirect

e.g.,

<div style="text-align:center;width:100%;"><tt>http://wordnet-rdf.princeton.edu/wn30/03542333-n</tt></div>

<div style="text-align:center;width:100%;font-size:150%;padding:50px;">⇓</div>

<div style="text-align:center;width:100%;"><tt>http://wordnet-rdf.princeton.edu/wn31/103547513-n</tt></div>

# Summary

* First Princeton WordNet version
* Provides stable identifiers
    * i.e., will support the interlingual index
* Linked already to many resources
* Includes extra data (e.g., translations) from other open licensed resources

These slides [http://jmccrae.github.io/wn-rdf-paper/slides/slides.html](http://jmccrae.github.io/wn-rdf-paper/slides/slides.html) (CC-BY)
