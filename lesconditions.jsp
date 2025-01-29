<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur1" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur2" name="valeur2">
    <p>Saisir la valeur 3 : <input type="text" id="inputValeur3" name="valeur3">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String Valeur1 = request.getParameter("Valeur1"); %>
    <% String Valeur2 = request.getParameter("Valeur2"); %>
    <% String Valeur3 = request.getParameter("Valeur3"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (Valeur1 != null && Valeur2 != null && Valeur3 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% 
          int intValeur1 = Integer.parseInt(Valeur1); 
          int intValeur2 = Integer.parseInt(Valeur2); 
          int intValeur3 = Integer.parseInt(Valeur3); 
        %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
         
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>

<% if ((intValeur3 > intValeur1 && intValeur3 < intValeur2) || (intValeur3 > intValeur2 && intValeur3 < intValeur1)) { %>
<p> Oui C (<%=intValeur3%>) est comprise entre A(<%=intValeur1%>) et B(<%=intValeur2%>).</p>
<% } else { %>
<p>La valeur de C (<%=intValeur3%>) n'est pas comprise entre A(<%=intValeur1%>) et B(<%=intValeur2%>).</p>
<% } %>

Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<% if (intValeur1 %2 ==0) { %>
<p>Le nombre est pair.</p>
<% } else { %>
<p>Le nombre est impair.</p>
<% } %>

<% if (intValeur2 %2 ==0) { %>
<p>Le nombre est pair.</p>
<% } else { %>
<p>Le nombre est impair.</p>
<% } %>

<h2>Exercice 3 : Jeu du chiffre aleatoire</h2>
<p>Écrivez un programme afin que le joueur devine le chiffre aléatoire généré par le système.</p>



<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
