
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>fadeOut alerts</title>
  <style>
  p {
    font-size: 150%;
    cursor: pointer;
  }
  </style>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>

<p>
  This paragraph will fade
</p>

<script>
$( "p" ).click(function() {
  $( "p" ).fadeOut( "slow" );
});
</script>

</body>
</html>
