---
layout: page
title: Home
permalink: /home/
redirect: https://thoth-station.ninja
---

<html>
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="refresh" content="1;url={{ page.redirect }}"/>
    <link rel="canonical" href="{{ page.redirect }}"/>
    <script type="text/javascript">
         window.location.href = "{{ page.redirect }}"
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-123174547-2"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-123174547-2');
    </script>
    <title>Page Redirection</title>
</head>
<body>
If you are not redirected automatically, follow <a href='{{ page.redirect }}'>this link</a>.
</body>
</html>
