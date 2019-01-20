
# Shopify Internship Challenge
## Introduction
This repository is for the project submission for the Shopify Backend Intern Challenge. This project is built in Ruby on Rails and extends ***RESTful API*** for user authentication, product management etc. This project also extends functionality for GraphQL queries for product management. The API is secured with access only by *access-tokens* issued to users for making request. The API also allows CORS and uses API throttling to protect from DDOS attacks.

## Running the Project
To setup and run the project locally follow the following steps: 
    
        > git clone https://github.com/akshitahluwalia/shopify-intern-challenge
        > cd shopify-intern-challenge
        > bundle
        > rake db:setup
        > rake db:migrate
        > rake db:seed
        > rails s
    

The project is now running on your [http://localhost:3000](http://localhost:3000). To run the project in production mode :

    > RAILS_ENV=production rake db:setup
    > RAILS_ENV=production rake db:migrate
    > RAILS_ENV=production rake db:seed
    > RAILS_ENV=production rails s

## Model Schema Definition
The product and user models are defined as follows: 
![Schema Defination.](./readme%20images/schema.png)

## API Documentation
The documentation for the API is built on Postman Doc for ease of understanding and reproduction. The documentation has been created with the sample requests, headers and mock `JSON` response.  The requests can be easily made by copying the format and making necessary changes to the request. To access the documentation for the project navigate to [Postman API Documentation](https://documenter.getpostman.com/view/2369433/RzteSCBB).

![Link to the postman documentation.](./readme%20images/postman.jpg)

## Execution Flow
To execute the request follow the elaborate postman documentation. 

 1. Register a new user by Signing up.
 2. Sign in the user using Sign in request.
 3. Use the credentials recieved in header i.e., ****access-token***,* ***client*** and ***uid*** to authenticate further requests .
![Credentials](./readme%20images/credentials.png)
 4. Play around with various CRUD endpoints for the Products using authentication credentials.

## GraphQL Implementation Documentation

A set of queries and mutations have been implemented for basic CRUD operations for products and they are exposed at [http://localhost:3000/graphiql](http://localhost:3000/graphiql) for development. You can also send in a POST request with the query string at **http://localhost:3000/graphql** . Follow the screenshots for querying the `Product`'s from the GraphQL and mutating with them .  

Additionally you can also send the request from the postman or equivalent API toolkit.

 - Fetching all the ***Products*** in the database.
![GraphQL query for fetching all products](./readme%20images/allProducts.png)

- Fetching all the ***available*** products in the database.
![GraphQL query for fetching all available products](./readme%20images/allProductsAvailable.png)

- Fetching individual ***Product*** by ***id*** from the database.
![GraphQL query for fetching product by id](./readme%20images/singleProduct.png)

- Creating a ***Product*** using GraphQL.
![GraphQL query for creating a product](./readme%20images/createProduct.png)

- Updating a ***Product*** using GraphQL.
![GraphQL query for updating a product](./readme%20images/updateProduct.png)

- Deleting a ***Product***  by ***id*** using GraphQL.
![GraphQL query for deleting a product](./readme%20images/deleteProduct.png)

