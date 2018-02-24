function renderTemplate(templateId, renderObj, targetId, append) {
    var template, templateHtml;
    template = $("#" + templateId).html();
    templateHtml = Mustache.to_html(template, renderObj);
    if (append) {
        $("#" + targetId).append(templateHtml);
    } else {
        $("#" + targetId).html(templateHtml);
    }
}
