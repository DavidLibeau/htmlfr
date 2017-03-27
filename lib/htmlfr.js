var parser = new cssjs();

$(document).ready(function () {
    $("link[href$='.htmlfr.css']").each(function () {
        console.log($(this).attr("href"));
        $.get($(this).attr("href"), function (data) {
                console.log(data);
                var parsed = parser.parseCSS(data);

                console.log(parsed);
            });
    });
});