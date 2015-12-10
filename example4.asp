@{ 
var db = Database.Open("SmallBakery") ; 
var query = "SELECT * FROM Product ORDER BY Name"; 
var data = db.Query(query); 
var grid = new WebGrid(data); 
}
<html> 
<head> 
<title>Displaying Data Using the WebGrid Helper</title> 
</head> 
<body> 
<h1>Small Bakery Products</h1> 
<div id="grid"> 
@grid.GetHtml()
</div> 
</body> 
</html>