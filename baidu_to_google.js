// baidu_to_google.js (示例)
if ($request && $request.url) {
  let url = $request.url;
  if (/\/s\?/.test(url)) {
    let m = url.match(/[?&](?:wd|word)=([^&]+)/i);
    let kw = m ? decodeURIComponent(m[1]) : "";
    let newUrl = "https://www.google.com/search?q=" + encodeURIComponent(kw);
    $done({ url: newUrl });
  } else {
    // 非搜索页面统一跳 Google 首页
    $done({ url: "https://www.google.com" });
  }
} else {
  $done({});
}
