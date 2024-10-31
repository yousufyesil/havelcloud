<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Caeser Encryption</title>
    <link rel="stylesheet" href="./static/style.css">
    <link rel="icon" type="image/png" href="thb.png">
    <!-- <script src="script.js"></script> -->


</head>
<!--
  Ich habe in meinem Projekt möglichst sichergestellt, dass es nicht möglich ist ein Fehler zu verursachen. 
  Wer dennoch versuchen möchte einen Fehler zu provozieren ist gerne eingeladen es auf eigener Verantwortung auszuprobieren. 
-->
<body>
<div class="navigation">
   <ul>
    <li><a class="navbar" href="pwGenerator.html">Generator</a></li>
    <li><a class="navbar" href="info.html">About</a></li>

  </ul>
</div>

 <div class="main_body">
  <form class="formfield" action="/add" method="post" id="inputBox">
    <div class="formfield">
          <br>
        
          <div class="inputBox">
            <input type="text" id="inputBox" name="password" required="required">
            <span>Dein Passwort</span>
          </div>
          <br>
       
    
          <br>
          <div class="submitBox">
            <input class="submit" type="submit" value="Passwort sichern" >
          </div>
            
        </div>
    </form>
    <!-- <div>
      <h4 class="counter"> Anzahl Passwörter: {{task_id_counter}}</h4>
    </div> -->
    <div id="list-container">
      
      <!--
        Hier wird an Bottlepy ein ausführbarer Python Code übergeben. Dadurch ist es möglich die hinzugefügten
        Elemente in einer Liste anzuzeigen.
      -->
      <ul id="list" >
          % for task in tasks:
          <div class ="elements">
              <li>{{task['password']}}</li>
              <div class="button-group">
                    <!-- Ändern-Formular -->
            <form action="/edit" method="post" style="display:inline;">
              <input type="hidden" name="password_id" value="{{task['password_id']}}">
              <button type="submit">Ändern</button>
          </form>

          <!-- Löschen-Formular -->
          <form action="/delete" method="post" style="display:inline;">
              <input type="hidden" name="password_id" value="{{task['password_id']}}">
              <button type="submit">Löschen</button>
          </form>

          <!-- Kopieren-Formular -->
          <form action="/copy" method="post" style="display:inline;">
              <input type="hidden" name="password_id" value="{{task['password_id']}}">
              <button type="submit">Kopieren</button>
          </form>
            </div>

          </div>

          % end
      </ul>
  </div>
  <form></form>
 </div>
    <!--
  <footer>
      <p>
          <a href="http://jigsaw.w3.org/css-validator/check/referer">
              <img style="border:0;width:88px;height:31px"
                  src="http://jigsaw.w3.org/css-validator/images/vcss"
                  alt="CSS ist valide!">
          </a>
      </p>
  </footer´ß09
    -->
  
</body>
</html>