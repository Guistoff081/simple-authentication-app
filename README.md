# Simple Authentication App

This is a README file for setting up and running a Rails 7 application with simple user authentication with PostgreSQL 14, Redis, and Tailwind CSS using a Docker Compose file.

## Prerequisites

Before you begin, make sure you have the following installed on your system:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Rails 7](https://rubyonrails.org/)
- [Ruby-3.2.2](https://www.ruby-lang.org/)

## Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/Guistoff081/simple-authentication-app
   cd simple-authentication-app

2. Build up docker images:

   ```bash
   docker-compose build
   docker-compose up

3. Bundling with yarn:

    ```bash
    bundle install
    yarn install
4. Prepare databases

   ```bash
   rails db:create
   rails db:migrate

5. Running the Application
   - The app has by default a Procfile that is used by Foreman to run each required process.
   - To start the app just run:
     ```bash
     bin/dev

6. Debugging
   - The app use the ```gem "debug"``` and is configured to run the debugger in a remote session
   - So, just open a new bash window and run:
     ```bash
     bundle exec rdbf -a

7. Testing
   ```bash
   bundle exec rspec

## Contributing
If you'd like to contribute to this project, please follow the usual Git and GitHub workflow:

Fork the repository.
Create a new branch for your feature or bug fix.
Make your changes and commit them.
Push your branch to your fork.
Create a pull request against the main repository.
## License
This project is licensed under the MIT License - see the LICENSE file for details.
