// Open  "https://developer.mozilla.org/en-US/docs/Web/CSS/Reference"
// Run this script in console

// PART 1

var ref = [];

var target = $('.index a');

target.each(function() {
    var attr = $(this).text();
    var href = $(this).attr('href');
    $.get(href, function(html) {
        console.log("> "+attr);
        console.log("> "+href);
        html = $(html);
        var syntax = html.find('#Syntax').nextUntil('#Examples')
        var string = syntax.first().text();
        string = string.replace(/\n$/g, '');
        if(attr.indexOf(':') !== 0)
          ref.push({attr: attr, syntax: string});
        // html = $('<body></body>').append(syntax).html();
        // console.log(html);
    });
});

// PART 2
// When NETWORK DONE

console.log(JSON.stringify(ref));
var hash = ref.map(function(elem) {
    return '(puthash "'+elem.attr+'" "'+elem.syntax+'" h)'
});
var elisp = ["(let ((h (make-hash-table :test 'equal)))"]
elisp = elisp.concat(hash);
elisp = elisp.concat([
  '(find-file "css-eldoc-hash-table.el")',
  '(kill-region (point-min) (point-max))',
  '(insert "(setq css-eldoc-hash-table ")',
  '(insert (prin1-to-string h))',
  '(insert ")")',
  '(insert "(provide \'css-eldoc-hash-table)")',
  '(save-buffer))'
]);
console.log(elisp.join('\n'));