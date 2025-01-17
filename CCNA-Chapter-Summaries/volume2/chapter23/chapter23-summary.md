# Chapter 23: Understanding REST and JSON

## REST-Based APIs

### REST-Based (RESTful) APIs

*   REST APIs follow six foundational rules: client/server architecture, stateless operation, clear statement of cacheable/uncacheable, uniform interface, layered, and code-on-demand.
*   The first three attributes are the most important in how REST APIs work.

### Client/Server Architecture

*   REST APIs use a client/server architecture.
*   The REST server is an application that creates a REST API.
*   The REST client is any application that makes a REST API call.

### Stateless Operation

*   Stateless operation means that the REST server does not keep data about prior REST requests or clients.
*   Each REST request is self-contained.

### Cacheable (or Not)

*   Cacheable means that a REST client can store a copy of a resource for a specified amount of time.
*   This improves performance by retrieving resources less often.

## Data Serialization and JSON

### The Need for a Data Model with APIs

*   REST clients and servers exchange data using variables.
*   Variables are names or labels with assigned values.
*   Data structures define related sets of variables and values.
*   REST APIs use data serialization languages to represent variables and data structures in a standardized way.

### Data Serialization Languages

*   JSON (JavaScript Object Notation): A human-readable data serialization language commonly used with REST APIs.
*   XML (Extensible Markup Language): A data-focused text markup language that allows data modeling.
*   YAML (YAML Ain't Markup Language): A data modeling language that is easy for humans to read.

### Recognizing the Components of JSON

*   JSON objects are enclosed in curly braces `{}`.
*   JSON arrays are enclosed in square brackets `[]`.
*   Key:value pairs represent variable names and their values.

### Interpreting JSON Key:Value Pairs

*   Keys are text strings enclosed in double quotes.
*   Values can be text strings, numeric values, arrays, or objects.
*   Multiple key:value pairs are separated by commas.

### Interpreting JSON Objects and Arrays

*   Objects are enclosed in curly braces `{}` and contain key:value pairs.
*   Arrays are enclosed in square brackets `[]` and contain a list of values.
*   Objects and arrays can be nested.

### Minified and Beautified JSON

*   Minified JSON removes all whitespace to reduce file size.
*   Beautified JSON adds whitespace for human readability.
*   Most tools can toggle between minified and beautified JSON.