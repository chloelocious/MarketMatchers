from flask import Blueprint, request, jsonify, make_response, json
from src import db

marketstands = Blueprint('marketstands', __name__)

# Get all invoices from the DB
@marketstands.route('/invoices', methods=['GET'])
def get_invoices():
    # Don't include billing, don't want to give out credit card info!
    cursor = db.get_db().cursor()
    cursor.execute('select invoiceID, customerID, total, invoiceDate from Invoice')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get stand employee names
@marketstands.route('/employees', methods=['GET'])
def get_all_employees():
    cursor = db.get_db().cursor()
    cursor.execute('select IDNum, firstName, lastName, standName, standID from Employee')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@marketstands.route('/employees/<standID>', methods=['GET'])
def get_employees_from_stand(standID):
    cursor = db.get_db().cursor()
    cursor.execute('select IDNum, firstName, lastName, standName from Employee\
        where standID={0}'.format(standID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@marketstands.route('/stands', methods=['GET'])
def get_stand_locations():
    cursor = db.get_db().cursor()
    cursor.execute('select standID, standName, standDescription, location from MarketStand')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response