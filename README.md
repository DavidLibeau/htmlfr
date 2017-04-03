# HTMLfr

>Rendre accessible la création de sites web à tous. Écrire du HTML en français.

[En savoir plus (HTMLfr.org)](https://htmlfr.org)

*:warning: HTMLfr est encore en cours de développement ! Voir les [versions disponibles](https://github.com/DavidLibeau/htmlfr/releases).*

## :dart: Intention 

Pour beaucoup de personnes, **l'anglais est un frein dans l'apprentissage des nouvelles technologies**. Pourquoi ne pas utiliser le français pour créer ou apprendre à créer des sites web ? HTMLfr.org permet cela de façon très simple.

## :thumbsup: Utiliser HTMLfr

Vous pouvez dès à présent coder des sites web en français. Visitez [HTMLfr.org](https://htmlfr.org) pour plus d'informations.

Voici un exemple très simple pour commencer : 
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="lib/algorithme-htmlfr.xsl"?>
<htmlfr>
  <tete>
    <titre>Bonjour</titre>
    <lien url="test.htmlfr.css" type="text/css" rel="feuillestyle" />
  </tete>
  <corps>
    <t1>Bonjour</t1>
    <p>
      Et si on pouvait écrire du HTML, créer des sites web, en <fort>français</fort> ? <l url="http://htmlfr.org" cible="_onglet" data-test="test">En savoir plus</l>
    </p>
  </corps>
</htmlfr>
```
Attention, les deux premières lignes de l'exemple sont obligatoires, ainsi que le fichier *algorithme-htmlfr.xsl* !

## :computer: Technologies utilisées

HTMLfr utilise le strandard XML et le language XSLT pour transformer un document HTML en français, en un document HTML en anglais, interprétable par les navigateurs web. Il utilise JavaScript pour transformer du CSS en français en un CSS en anglais.

## :blue_heart: Contribution

Ce projet est libre d'utilisation, de modification et de contribution. Contactez [@DavidLibeau](https://davidlibeau.fr/Contact) pour participer, ou contribuez directement sur GitHub.

## :page_with_curl: Licence

HTMLfr est sous [licence libre](LICENSE). Vous pouvez utiliser, modifier, distribuer, contribuer, tant que vous continuez de repecter la liberté des autres à faire pareil. C'est le principe de la licence libre de [GNU](https://gnu.org).
