# Rails API Authentication with Devise and JWT

[![Ruby](https://img.shields.io/badge/Ruby-3.x+-red.svg)](https://ruby-lang.org)
[![Rails](https://img.shields.io/badge/Rails-7.x+-red.svg)](https://rubyonrails.org)
[![Devise](https://img.shields.io/badge/Devise-4.x-blue.svg)](https://github.com/heartcombo/devise)
[![JWT](https://img.shields.io/badge/JWT-0.8.x-blue.svg)](https://jwt.io)

A secure, production-ready API authentication system built with Rails, Devise, and JWT (JSON Web Tokens) for token-based authentication.

## Table of Contents
- [Authentication Overview](#authentication-overview)
- [Why JWT?](#why-jwt)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Setup](#setup)
- [Configuration](#configuration)
- [API Endpoints](#api-endpoints)
- [Security Considerations](#security-considerations)
- [License](#license)

## Authentication Overview

HTTP is stateless, meaning each request is independent. However, web applications need to maintain session information (like user logins) to provide personalized experiences without requiring authentication on every request.

This implementation uses JWT (JSON Web Tokens) for authentication:

1. Upon successful login, the server generates an encrypted `accessToken` containing:
   - User ID
   - Expiration time
2. The client stores this token (typically in localStorage)
3. Subsequent requests include this token in the `Authorization` header
4. The server decrypts the token to authenticate the user

## Why JWT?

Advantages over traditional cookie-based authentication:
- **Stateless**: No session stored in database
- **Scalable**: Reduced database lookups
- **Secure**: Encrypted tokens prevent tampering
- **Flexible**: Works across domains (CORS-friendly)

## Features

- User registration with custom fields (name, email, password)
- JWT token generation with expiration
- Secure token revocation on logout
- CORS configuration for cross-origin requests
- JSON:API compliant responses
- Custom error handling
- Session management for API-only Rails apps

## Tech Stack

- **Ruby on Rails** (API mode)
- **PostgreSQL** database
- **Devise** for authentication
- **Devise-JWT** for token handling
- **JSONAPI-Serializer** for response formatting
- **Rack-CORS** for cross-origin requests

## Setup

### 1. Clone the repository
```bash
git clone https://github.com/faresabe/API-Authentication-Devise-and-Devise-JWT-Integration.git
cd API-Authentication-Devise-and-Devise-JWT-Integration
