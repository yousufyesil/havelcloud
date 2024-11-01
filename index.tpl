<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Manager</title>
    <link rel="stylesheet" href="./static/style.css">
    <link rel="icon" type="image/png" href="thb.png">
    <!-- <script src="script.js"></script> -->


</head>
<!--
  Ich habe in meinem Projekt möglichst sichergestellt, dass es nicht möglich ist ein Fehler zu verursachen. 
  Wer dennoch versuchen möchte einen Fehler zu provozieren ist gerne eingeladen es auf eigener Verantwortung auszuprobieren. 
-->
<body>


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
      <ul id="list">
        <!-- Mit Hilfe der For-Schleife werden im Array passwords die Elemente abgerufen und dargestellt. -->
        % for task in passwords:
        <div class="pfield">
          <div class="elements">
            <!-- Passwort in einem Block-Element anzeigen -->
            <div class="password">{{task['password']}}</div>
            <!-- Horizontale Linie unter dem Passwort -->
            <!-- Text unter der Linie -->
            <div class="button-group">
              <div class="button">
                  <!-- Ändern-Formular -->
              <form action="/encrypt" method="post" style="display:inline;">
                <input type="hidden" name="password_id" value="{{task['password_id']}}">
                <input type="hidden" name="password" value="{{task['password']}}">
                <input type="hidden" name="encrypted" value="{{task['encrypted']}}">
                <button type="submit" class="icon-button">
                  <span class="edit-icon"></span>
                </button>
  
              </form>
              </div>
              <div class="button">
                 <!-- Löschen-Formular -->
              <form action="/delete" method="post" style="display:inline;">
                <input type="hidden" name="password_id" value="{{task['password_id']}}">
                <button type="submit" class="icon-button">
                  <span class="delete-icon"></span>
                </button>
  
              </form>
        
              </div>
              <div class="button">
                
              <!-- Copy-Button
              password_id wird an die Funktion copy übergeben
              
              -->
              <form action="/copy" method="post" style="display:inline;">
                <input type="hidden" name="password_id" value="{{task['password_id']}}">
                <button type="submit" class="icon-button">
                  <span class="copy-icon"></span>
                </button>
              </form>
              </div>
            
        
             
              
            </div>
            
          <div name="pw-strength" id="pw-strength">
            <hr> <span class="sec"> {{task['security_level']}}</span>
              </div></div>
          <br>
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