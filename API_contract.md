### POST /auth/register

**Description:** Registers a user

**Request Body:**

{
"name": "string, required",
"email": "string, required",
"password": "string, required"
}

**RESPONSES:**
{
"message": "User registered successfully",
"user": { "id": "string", "name": "string", "email": "string" },
"token": "jwt_token_string"
}

### POST /auth/login

**Description:** Authenticates a user and returns a token.

**Request Body:**
{
"email": "string",
"password": "string"
}

**RESPONSES:**

{
"token": "jwt_token_string",
"user": {
"id": "123",
"email": "example@example.com"
}
}

### GET /products

**Description:** Fetch list of all products

[
{
"id": "string",
"name": "string",
"price": number,
"description": "string"
}
]

### GET /products/:id

**Description:** Fetch a single product by ID.

{
"id": "string",
"name": "string",
"price": number,
"description": "string"
}

### POST /products

**Description:** Create a new product.

**Request Body**

{
"name": "string, required",
"price": "number, required",
"description": "string, optional"
}

**Responses**

{
"message": "Product created successfully",
"product": {
"id": "string",
"name": "string",
"price": number,
"description": "string"
}
}

### POST /orders

**Description:** Create a new order.

**Request Body**

{
"userId": "string, required",
"items": [
{ "productId": "string", "quantity": number }
],
"totalAmount": "number, required",
"status": "string (e.g., 'pending'), optional"
}

**Responses**

{
"message": "Order created successfully",
"order": {
"id": "string",
"userId": "string",
"items": [
{ "productId": "string", "quantity": number }
],
"totalAmount": number,
"status": "string"
}
}

### GET /orders/:id

**Description:** Get details of a specific order by ID.

{
"id": "string",
"userId": "string",
"items": [
{ "productId": "string", "quantity": number }
],
"totalAmount": number,
"status": "string"
}

### GET /orders/user/:userId

**Description:** Get all orders placed by a specific user.

[
{
"id": "string",
"userId": "string",
"items": [
{ "productId": "string", "quantity": number }
],
"totalAmount": number,
"status": "string"
}
]
