from flask import Blueprint, request, jsonify, make_response
import json
from src import db


products = Blueprint('products', __name__)

# Get all the names and ID values of all the Products in the database
@products.route('/getproducts', methods=['GET'])
def get_products():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select productID, productName from Product')

    # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# Get all the names and ID values of all the Products in the database
@products.route('/marketstands', methods=['GET'])
def get_products2():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select standID, standName, location from MarketStand')

    # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers.
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# register as product-maker (add new product-maker)
@products.route('/registerpm', methods=['POST'])
def add_productMaker():
    # current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    PM_ID = request.form['PM_ID']
    firstName = request.form['firstName']
    lastName = request.form['lastName']
    phoneNumber = request.form['phoneNumber']
    emailAddress = request.form['emailAddress']
    streetAddress = request.form['streetAddress']
    city = request.form['city']
    state = request.form['state']
    zip = request.form['zip']
    query = f'INSERT INTO ProductMaker(PM_ID, firstName,lastName, phoneNumber, emailAddress, streetAddress, city, zip)'\
            f'VALUES (\"{PM_ID}", \"{firstName}", \"{lastName}", \"{phoneNumber}", \"{emailAddress}", \"{streetAddress}"' \
            f', \"{city}", \"{state}",\"{zip}")'
    cursor.execute(query)
    db.get_db.commit()
    return "Success!"




# # get the top 5 products from the database
# @products.route('/top5products')
# def get_most_pop_products():
#     cursor = db.get_db().cursor()
#     query = '''
#         SELECT p.productCode, productName, sum(quantityOrdered) as totalOrders
#         FROM products p JOIN orderdetails od on p.productCode = od.productCode
#         GROUP BY p.productCode, productName
#         ORDER BY totalOrders DESC
#         LIMIT 5;
#     '''
#     cursor.execute(query)
#        # grab the column headers from the returned data
#     column_headers = [x[0] for x in cursor.description]
#
#     # create an empty dictionary object to use in
#     # putting column headers together with data
#     json_data = []
#
#     # fetch all the data from the cursor
#     theData = cursor.fetchall()
#
#     # for each of the rows, zip the data elements together with
#     # the column headers.
#     for row in theData:
#         json_data.append(dict(zip(column_headers, row)))
#
#     return jsonify(json_data)