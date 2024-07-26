# Buggy Meter

Buggy Meter is a social media application similar to Instagram, built using Ruby on Rails with PostgreSQL as the database.

## Table of Contents

- [Introduction](#introduction)
- [System Overview](#system-overview)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Database Setup](#database-setup)
- [Running the Application](#running-the-application)
- [Deployment](#deployment)
- [Screenshots](#screenshots)
- [Contributing](#contributing)

## Introduction

Buggy Meter is designed to offer a comprehensive social media experience, focusing on simplicity and essential features. Users can register, create profiles, post images, like, and comment on posts. The application emphasizes a streamlined user interface and robust backend support.

## System Overview

The Buggy Meter application follows a typical MVC (Model-View-Controller) architecture of Rails, ensuring a clean separation of concerns and scalable codebase. PostgreSQL is used for data persistence, leveraging its reliability and performance.

## Features

- **User Authentication**: Secure user registration and login.
- **Profile Management**: Users can create and update their profiles.
- **Image Uploading**: Post images with descriptions.
- **Social Interactions**: Like and comment on posts.
- **Follow System**: Follow other users to see their posts in the feed.

## Requirements

- Ruby 3.x
- Rails 7.x
- PostgreSQL
- Docker (optional, for containerized development)
- Node.js and Yarn (for managing JavaScript dependencies)

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/seamoonpandey/buggy-meter.git
    cd buggy-meter
    ```

2. Install dependencies:

    ```bash
    bundle install
    yarn install
    ```

## Configuration

1. Set up environment variables:

    Create a `.env` file in the root directory and add the following:

    ```plaintext
    DATABASE_USERNAME=your_postgres_username
    DATABASE_PASSWORD=your_postgres_password
    ```

2. Update `config/database.yml` with your PostgreSQL configuration.

## Database Setup

1. Create and migrate the database:

    ```bash
    rails db:create
    rails db:migrate
    ```

2. Seed the database with initial data (if available):

    ```bash
    rails db:seed
    ```

## Running the Application

Start the Rails server:

```bash
rails server
```

Access the application at `http://localhost:3000`.

## Deployment

1. Ensure you have Heroku CLI installed and are logged in.

2. Create a new Heroku app:

    ```bash
    heroku create
    ```

3. Deploy to Heroku:

    ```bash
    git push heroku main
    heroku run rails db:migrate
    ```

4. Open the app in your browser:

    ```bash
    heroku open
    ```

## Screenshots

### Home Page
![image](https://github.com/user-attachments/assets/8b8e766c-2fbb-4c85-9b58-f69344c81239)


### User Profile
![image](https://github.com/user-attachments/assets/9a396962-e8b0-4dcb-ba00-1070aa0e28ee)


### Post Creation
![image](https://github.com/user-attachments/assets/aa9b89b4-92bd-429d-b2d2-73a255a8ff1f)

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.
