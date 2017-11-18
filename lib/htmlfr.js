var parser = new cssjs();

var traduction;

$(document).ready(function () {
    $.ajax("lib/traduction-htmlfr.xml").always(function(data) {
        console.log(data);
        traduction=data;
        $("link[href$='.htmlfr.css']").each(function () {
            var fichierCssFr=$(this).attr("href");
            console.log("Fichier : "+fichierCssFr);

            $.ajax(fichierCssFr).always(function(data) {
                var cssFr=parser.parseCSS(data.responseText); //Récupération du CSS            
                var css=""; //Initialisation du texte de retour

                for(propriété in cssFr){ //Pour chaque propriété
                    css+=t(cssFr[propriété].selector)+" { "; //Traduction du sélecteur

                    var règles=cssFr[propriété].rules;
                    for(règle in règles){ //Pour chaque règle
                        css+=t(règles[règle].directive)+" : "+t(règles[règle].value); //Traduction de la directive et de sa valeur
                    }
                    css+=" } ";
                }

                $("head").append("<style id=\"cssFr-"+fichierCssFr.replace(".htmlfr.css","")+"\">"+css+"</style>"); //Intégration du CSS traduit dans le site web
            });
        });
    });
});



/*
* Traduction
*/
function t(français){
    var anglais="";
    
    anglais=traduction.evaluate("//balise[fr[text()=\""+français+"\"]]/en", traduction, null, XPathResult.STRING_TYPE, null).stringValue; //Traduction depuis la base de données    
    
    if(anglais==""){ //Si aucune traduction n'a été trouvée
        anglais=français; //On retourne tel quel
    }
    return anglais;
}