<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Nome da Página</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>

            


<link rel="stylesheet" href="style.css">

<body class="yellow lighten-5">

<!-- Barra de Navegacao -->
<nav>
  <div class="nav-wrapper orange">
    <a href="#" >&nbsp;<img src="logoNoteNome.png" class="logo"></a>
    <ul id="nav" class="right hide-on-med-and-down">
      <li><input type="search" placeholder="Search"></li>
      <li><button class="btn waves-effect waves-light material-icons indigo darken-3" type="submit" name="action">search</button></li> 
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
        <div class="card-content blue-text">
          <form action="/adicionarNota" method="post">
            <div class="input-field col s12">
              <input id="titulo" name="titulo" type="text">
              <label for="titulo">Título</label>
            </div>
            <div class="input-field col s12">
              <textarea id="nota" name="nota" class="materialize-textarea"></textarea>
              <label for="nota">Nota</label>
            </div>
            <button class="btn waves-effect waves-light indigo darken-3
            " type="submit">Submit</button>
          </form>
        </div>
       </div>
     </div>
    </div>
    <div class="row">
	   <div class="col s12 ">
	     <div class="card darken-1">
	       <div class="card-content blue-text">
	         <span class="card-title">Card Title</span>
	         <p>I am a very simple card. I am good at containing small bits of information.
	          I am convenient because I require little markup to use effectively.</p>
	       </div>
	       <div class="card-action">
	         <input type="color" name="action">
	       </div>
	     </div>
	   </div>
	 </div>
            
    <div class="row">
     <div class="col s12 ">
       <div class="card darken-1 hoverable">
         <div class="card-content ">
           <span class="card-title">Card Title</span>
           <p>I am a very simple card. I am good at containing small bits of information.
            I am convenient because I require little markup to use effectively.</p>
         </div>
         <div class="card-action">
           <a href="#">Change your card color</a><input type="color" name="action">
         </div>
       </div>
     </div>
   </div>

   <div class="row">
     <div class="col s12 ">
       <div class="card darken-1">
         <div class="card-content">
           <span class="card-title">Card Title</span>
           <p>I am a very simple card. I am good at containing small bits of information.
            I am convenient because I require little markup to use effectively.</p>
         </div>
         <div class="card-action">
           <a href="#">Change your card color</a>
         </div>
       </div>
     </div>
   </div>
  </div>
</div>


</body>
</html>