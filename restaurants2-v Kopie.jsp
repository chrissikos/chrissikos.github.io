<%@ page import="java.sql.*"%>
<%@ page import="se1_02.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>   
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Restaurants</title>
    
</head>

<body>
       <img src="FoodLover.logo.png" alt="Logo" >
      
       <div align="left"></div>    
        
        <a href="Home-ÜberUns2.html" class="button"><button>Home</button></a>
            
        <a href="restaurants2.html" class="button"><button>Restaurants</button></a>
          
        <a href="Kontakt.html" class="button"><button>Kontakt</button></a>
    
        <link rel="stylesheet" href="style.css" type="text/css"> 
        <h1>Küche auswählen</h1>
        <h2>Herzlich Willkommen</h2>
        <p> Du hast dich für Food Lover entschieden und damit eine gute Wahl getroffen. Entdecke jetzt dein zukünftiges     Lieblings- Restaurants in München.
        </p>
    
    <form>
        
        Auf was hast du Lust?<br>
        <br>
            &#160&#160&#160&#160&#160&#160&#160&#160&#160&#160
        <input type="checkbox" name="asiatisch" value="asiatisch" tabindex="1">Asiatisch 
        <br><br>   
            &#160&#160&#160&#160&#160&#160&#160&#160&#160&#160
        <input type="checkbox" name="indisch" value="indisch" tabindex="1">Indisch
        <br><br>
            &#160&#160&#160&#160&#160&#160&#160&#160&#160&#160
        <input type="checkbox" name="italienisch" value="italienisch" tabindex="1">Italienisch
        <br><br>
            &#160&#160&#160&#160&#160&#160&#160&#160&#160&#160
        <input type="checkbox" name="türkisch" value="türkisch" tabindex="1">Türkisch
        <br><br>
      
            &#160&#160&#160&#160&#160&#160&#160&#160&#160&#160
        <input type="checkbox" name="persisch" value="persisch" tabindex="1">Persisch
   <%
     out.print("Test");
try {
	String connectionURL = "jdbc:mysql://gauss.wi.hm.edu:3070/se1_foodlover?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
	Connection connection = null;
	 Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection(connectionURL, "hashemi", "");
		if(!connection.isClosed())
		{
			out.print("connection succeeded");
		}
		else 
		{
			out.print("connection failed");
		}
}
catch(Exception ex) {
System.out.println("Unable to connect to database - " +ex);
}

      $sql = "Select * From Restaurant where Küche='Asiatisch'"  
    $Restaurant = $pdo->query($sql)->fetch();
 {System.out.print $Restaurant('Name')}
%> 
   <?php
    
    $pdo=new PDO('mySQL:host=jdbc:mysql://gauss.wi.hm.edu:3070/se1_foodlover?useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false;dbname='se1_foodlover', 'ckos@localhost','db3inf@FK09') or die ("Verbindung nicht möglich");
   
    $sql= "Select * From Restaurant where Küche='Asiatisch'"  
    $Restaurant = $pdo->query($sql)->fetch();
echo $Restaurant['Name']
?>
    </form>
    
    <div align="left"></div>
    
    <a href="RestaurantAuswahl2.html" class="button"><button>Los geht's</button></a>
  
    

</body>


</html>