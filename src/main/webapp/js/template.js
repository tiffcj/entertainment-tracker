function renderTemplate(templateId, renderObj, renderToId) {
    var template, templateHtml;
    template = $("#" + templateId).html();
    templateHtml = Mustache.to_html(template, renderObj);
    $("#" + renderToId).html(templateHtml);
}

