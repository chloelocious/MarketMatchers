from flask import Blueprint, request, jsonify, make_response
import json
from src import db

customers = Blueprint('customers', __name__)

# Get all customers from the DB
@customers.route('/getcustomers', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select customerID, firstName, lastName from Customer')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get details on the amount of money spent for each customer
@customers.route('/viewcustomertotal', methods=['GET'])
def get_moneySpent():
    cursor = db.get_db().cursor()
    cursor.execute('select firstName, lastName, moneySpent from Customer')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# register as customer (add new customer)
@customers.route('/registercust', methods=['POST'])
def add_customer():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    customerID = request.form['customerID']
    firstName = request.form['firstName']
    lastName = request.form['lastName']
    phoneNum = request.form['phoneNum']
    moneySpent = request.form['moneySpent']
    emailAddress = request.form['emailAddress']
    streetAddress = request.form['streetAddress']
    zip = request.form['zip']
    country = request.form['country']
    query = f'INSERT INTO Customer(customerID, firstName, lastName, phoneNum, moneySpent, emailAddress, streetAddress, zip, country)'\
            f'VALUES (\"{customerID}", \"{firstName}", \"{lastName}", \"{phoneNum}", \"{moneySpent}", \"{emailAddress}", \"{streetAddress}",' \
            f', \"{zip}", \"{country}")'
    cursor.execute(query)
    db.get_db.commit()
    return "Success!"