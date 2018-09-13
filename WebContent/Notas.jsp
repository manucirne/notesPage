<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.edu.insper.*,java.util.*,java.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<title>Infinity Note</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
        
<link rel="stylesheet" href="style.css">

<body class="orange lighten-5">
<jsp:useBean id="dao" class="br.edu.insper.DAO"/>

<!-- Barra de Navegacao -->
<nav>
  <div class="nav-wrapper orange hoverable">
    <a href="#" >&nbsp;<img src="logoNoteNome.png" class="logo"></a>
    <ul id="nav" class="right hide-on-med-and-down">
      <li><input type="search" placeholder="Search"></li>
      <li><button class="btn waves-effect waves-light material-icons orange darken-4" type="submit">search</button></li> <!-- name="action" -->
      <li>  &nbsp; &nbsp; &nbsp; &nbsp;  </li>    
      <li><a href="#">Sass</a></li>
      <li><a href="#">Components</a></li>
      <li><a href="#">JavaScript</a></li>
    </ul>
  </div>
</nav>
        

  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding class3">

  <!-- First Notes Grid-->
  <div class="w3-row-padding w3-padding-16">
    <div class="row">
     <div class="col s12 ">
       <div class="card darken-1">
        <div class="card-content">
          <form action="adicionarNota" method="post">
            <div class="input-field col s12">
            	<input id="id" name="id" type="number" style="display:none">
              	<input id="titulo" name="titulo" type="text">
              	<label for="titulo">Título</label>
            </div>
            <div class="input-field col s12">
              <textarea id="nota" name="nota" class="materialize-textarea"></textarea>
              <label for="nota">Nota</label>
            </div>
            <button class="btn waves-effect waves-light orange darken-3
            " type="submit">Submit</button>
          </form>
        </div>
       </div>
     </div>
    </div>
    <c:forEach var="nota" items="${dao.lista}" varStatus="id">
	    <div class="row">
		   <div class="col s12 ">
		     <div class="card darken-1 hoverable">
		       <div class="card-content">
		         <span class="card-title">${nota.titulo}</span>
					 <p>${nota.nota}</p>
		       <div class="card-action wrap">
		         <form>
		         	<input type="color" name="action">
		         </form>
		         <form  action="deletarNota" method="post">
		         	<input id="id" name="id" type="number" value="${nota.id}" style="display:none">
		         	<button class="btn waves-effect waves-light material-icons orange" type="submit">delete</button>
		         </form>
		         <form action="Editar.jsp">
		         	<input id="id" name="id" type="number" value="${nota.id}" style="display:none">
		         	<input id="titulo" name="titulo" type="text" value="${nota.titulo}" style="display:none">
		         	<input id="nota" name="nota" type="text" value="${nota.nota}" style="display:none">
		         	<button class="btn waves-effect waves-light material-icons orange darken-3" type="submit">edit</button>
		         </form>
		         </div>
		       </div>
		     </div>
		   </div>
		 </div>
	 </c:forEach>
  </div>
</div>


</body>
</html>