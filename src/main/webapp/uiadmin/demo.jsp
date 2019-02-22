<!doctype html>
<html lang="en">
<head>
<%@include file="adminHeaders.jsp" %>

    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Dialog - Default functionality</title>
 
<!--  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>-->
  <script>
  $( function() {
    $( "#dialog" ).dialog();
  } );
  </script>
</head>
<body>
 
<div id="dialog" title="Basic dialog">
  <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>
 
 <%@include file="adminfootersfiles.jsp" %>

</body>
</html>