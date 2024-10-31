from bottle import Bottle, run, template, static_file,request, redirect
import pyperclip as pc
app = Bottle()

tasks = []
task_id_counter = 0

# Route für die Startseite
@app.route('/')
def index():
    return template('index', tasks=tasks, task_id_counter=task_id_counter,)

# Statische Dateien wie z.B .css Dateien oder Icons werden über @route aus dem Verzeichnis "static" geladen
@app.route('/static/<filename>')
def serve_static(filename):
    return static_file(filename, root='./static')  


# Neues Passwort hinzufügen mithilfe von POST
@app.route('/add', method='POST')
def add_task():
    global task_id_counter
    password = request.forms.get('password') 

    
    if password: 
        new_task = {
            'password': password,
            'password_id': task_id_counter
        }
        tasks.append(new_task)
        # Vergabe der ID zur Identifikation des Passworts
        task_id_counter += 1

    #Rückkehr auf Startseite
    return redirect('/')  

# Passwort löschen
@app.route('/delete', method='POST')

def delete_task():
    password_id = request.forms.get('password_id')
    # Mit einer For-Schleife iterieren und bei einem Match der ID das zugehörige Passwort entfernen
    for task in tasks:
        if task['password_id'] == int(password_id):
            tasks.remove(task)
    return redirect('/')    


# Passwort kopieren
@app.route('/copy', method='POST')

def copy_task():
    password_id = request.forms.get('password_id')
    # Passwort anhand der ID finden
    for task in tasks:
        if task['password_id'] == int(password_id):
            # Mit pyperclip kann ein Password kopiert werden
            pc.copy(task['password'])
    # Rückkehr auf Startseite
    return redirect('/')


@app.route('/edit', method='POST')
def edit_task():
    password_id = request.forms.get('password_id')
    new_password = request.forms.get('new_password')
    for task in tasks:
        if task['password_id'] == int(password_id):
            task['password'] = new_password
    return redirect('/')


if __name__ == '__main__':
    run(app, host='localhost', port=8080, debug=True)
