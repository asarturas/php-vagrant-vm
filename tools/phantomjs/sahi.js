if (phantom.args.length === 0) {
  console.log('Usage: sahi.js &lt;Sahi Playback Start URL&gt;');
  phantom.exit();
} else {
  var address = phantom.args[0];
  console.log('Loading ' + address);
  var page = new WebPage();
  page.open(address, function(status) {
    if (status === 'success') {
      page.viewportSize = { width: 1000, height: 1000 };
      page.render('/tmp/screenShot' + i +  '.png');
      i++;
      var title = page.evaluate(function() {
        return document.title;
      });
      console.log('Page title is ' + title);
    } else {
      console.log('FAIL to load the address');
    }
  });
}
