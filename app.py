from flask import Flask , render_template, request, redirect, url_for, session
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/hostel'#/dbname
app.secret_key = 'def'
db = SQLAlchemy(app)

@app.route('/',methods = ['GET', 'POST'])
def index():
    return render_template("index.html")
    
@app.route('/about',methods = ['GET', 'POST'])
def aboutus():
    return render_template("about.html")

class Sign(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    firstname = db.Column(db.String(50), unique=True, nullable=False)
    lastname = db.Column(db.String(50), unique=True, nullable=False)
    email = db.Column(db.String(50), unique=True, nullable=False)
    phone = db.Column(db.String(10), unique=True, nullable=False)
    gender = db.Column(db.String(6), unique=True, nullable=False)
    password = db.Column(db.String(10), unique=True, nullable=False)

@app.route('/signup', methods = ['GET', 'POST'])
def signup():
    if(request.method=='POST'):
        firstname=request.form.get('firstname')
        lastname=request.form.get('lastname')
        email=request.form.get('email')
        phone=request.form.get('phone')
        gender=request.form.getlist('gender')
        password=request.form.get('psw')
        entry= Sign(firstname=firstname,lastname=lastname,email=email,phone=phone,gender=gender,password=password)
        db.session.add(entry)
        db.session.commit()
        return render_template("success.html")
    return render_template("signup.html")

@app.route('/login', methods = ['GET', 'POST'])
def login(): 
    if(request.method=='POST'):
        y = 0
        email=request.form.get('email')
        password=request.form.get('psw')
        
        admin_email = 'hostel123@gmail.com'
        admin_password = 'hostel123'
        if(email==admin_email and password==admin_password):
            return render_template("admin.html")


        #tablename
        Check = Sign.query.all()

        for x in Check:
             if(email==x.email and password==x.password):
                 y = 1
                 return render_template("user.html")
        if y == 0:
            return render_template('error.html')
              
    return render_template('login.html')

class Contact(db.Model):
    contact_id = db.Column(db.Integer, primary_key=True)
    contact_firstname = db.Column(db.String(50), unique=True, nullable=False)
    contact_lastname = db.Column(db.String(50), unique=True, nullable=False)
    contact_email = db.Column(db.String(50), unique=True, nullable=False)
    contact_phone = db.Column(db.String(50), unique=True, nullable=False)
    contact_gender = db.Column(db.String(50), unique=True, nullable=False)
    contact_complaint = db.Column(db.String(50), unique=True, nullable=False)

@app.route('/contact', methods = ['GET', 'POST'])
def contactus():
    if(request.method=='POST'):
        contact_firstname=request.form.get('contact_firstname')
        contact_lastname=request.form.get('contact_lastname')
        contact_email=request.form.get('contact_email')
        contact_phone=request.form.get('contact_phone')
        contact_gender=request.form.getlist('contact_gender')
        contact_complaint=request.form.get('contact_complaint')
        entry= Contact(contact_firstname=contact_firstname,contact_lastname=contact_lastname,contact_email=contact_email,
                       contact_phone=contact_phone,contact_gender=contact_gender,contact_complaint=contact_complaint)
        db.session.add(entry)
        db.session.commit()
        return render_template("success.html")
    return render_template("contact.html")

@app.route('/admin', methods = ['GET', 'POST'])
def admin():
     return render_template('admin.html')

@app.route('/user', methods = ['GET', 'POST'])
def user():
     return render_template('user.html')

class Personal(db.Model):
    personal_id = db.Column(db.Integer, primary_key=True)
    personal_firstname = db.Column(db.String(50), unique=True, nullable=False)
    personal_lastname = db.Column(db.String(50), unique=True, nullable=False)
    personal_email = db.Column(db.String(50), unique=True, nullable=False)
    personal_age = db.Column(db.String(50), unique=True, nullable=False)
    personal_phone = db.Column(db.String(50), unique=True, nullable=False)
    personal_gender = db.Column(db.String(10), unique=True, nullable=False)
    personal_alternatephone = db.Column(db.String(50), unique=True, nullable=False)
    personal_nationality = db.Column(db.String(50), unique=True, nullable=False)
    personal_city = db.Column(db.String(50), unique=True, nullable=False)
    personal_native = db.Column(db.String(50), unique=True, nullable=False)
    personal_semester = db.Column(db.String(50), unique=True, nullable=False)
    personal_degree = db.Column(db.String(50), unique=True, nullable=False)

@app.route('/personal', methods = ['GET', 'POST'])
def personal():
    if(request.method=='POST'):
        personal_firstname=request.form.get('personal_firstname')
        personal_lastname=request.form.get('personal_lastname')
        personal_email=request.form.get('personal_email')
        personal_age=request.form.get('personal_age')
        personal_phone=request.form.get('personal_phone')
        personal_gender=request.form.getlist('personal_gender')
        personal_alternatephone=request.form.get('personal_alternatephone')
        personal_nationality=request.form.get('personal_nationality')
        personal_city=request.form.get('personal_city')
        personal_native=request.form.get('personal_native')
        personal_semester=request.form.get('personal_semester')
        personal_degree=request.form.getlist('personal_degree')
        entry= Personal(personal_firstname=personal_firstname,personal_lastname=personal_lastname,personal_email=personal_email,
                     personal_age=personal_age,personal_phone=personal_phone,personal_gender=personal_gender,personal_alternatephone=personal_alternatephone,
                     personal_nationality=personal_nationality,personal_city=personal_city,personal_native=personal_native,
                     personal_semester=personal_semester,personal_degree=personal_degree)
        db.session.add(entry)
        db.session.commit()
    return render_template('personal.html')

@app.route('/images', methods = ['GET', 'POST'])
def images():
     return render_template('images.html')

@app.route('/mess', methods = ['GET', 'POST'])
def mess():
     return render_template('mess.html')

class Addrooms(db.Model):
    addrooms_id = db.Column(db.Integer, primary_key=True)
    addrooms_firstname = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_lastname = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_email = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_roomno = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_roomtype = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_food = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_semester = db.Column(db.String(50), unique=True, nullable=False)
    addrooms_startdate = db.Column(db.Date, unique=True, nullable=False)
    addrooms_enddate = db.Column(db.Date, unique=True, nullable=False)

@app.route('/addrooms', methods = ['GET', 'POST'])
def addrooms():
    if(request.method=='POST'):
        addrooms_firstname=request.form.get('addrooms_firstname')
        addrooms_lastname=request.form.get('addrooms_lastname')
        addrooms_email=request.form.get('addrooms_email')
        addrooms_roomno=request.form.getlist('addrooms_roomno')
        addrooms_roomtype=request.form.getlist('addrooms_roomtype')
        addrooms_food=request.form.getlist('addrooms_food')
        addrooms_semester=request.form.get('addrooms_semester')
        addrooms_startdate=request.form.get('addrooms_startdate')
        addrooms_enddate=request.form.get('addrooms_enddate')
        entry= Addrooms(addrooms_firstname=addrooms_firstname,addrooms_lastname=addrooms_lastname,addrooms_email=addrooms_email,
                     addrooms_roomno=addrooms_roomno,addrooms_roomtype=addrooms_roomtype,addrooms_food=addrooms_food,addrooms_semester=addrooms_semester,
                     addrooms_startdate=addrooms_startdate,addrooms_enddate=addrooms_enddate)
        db.session.add(entry)
        db.session.commit()
    return render_template('addrooms.html')

@app.route('/contactdetails', methods = ['GET', 'POST'])
def contactdetails():
     data=Contact.query.all()
     return render_template('contactdetails.html', ContactDetails=data)

@app.route('/displaypersonal', methods = ['GET', 'POST'])
def displaypersonal():
     data=Personal.query.all()
     return render_template('displaypersonal.html', DisplayPersonal=data)

@app.route('/displayrooms', methods = ['GET', 'POST'])
def displayrooms():
     data=Addrooms.query.all()
     return render_template('displayrooms.html', DisplayRooms=data)

if __name__ == '__main__':
   app.run(debug = True)