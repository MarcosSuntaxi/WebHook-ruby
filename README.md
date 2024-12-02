# Ruby Webhook Example

This is a simple Ruby-based project that demonstrates how to set up and interact with webhooks. The project listens for HTTP requests and processes data accordingly.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Ruby version 3.3.6 or higher (can be checked with `ruby -v`).
- `gem` (Ruby's package manager) should be installed. This usually comes with Ruby.
- A basic understanding of Ruby and webhooks.

## Installation

### 1. Install Ruby

If you haven't already installed Ruby, follow the installation steps provided for your operating system.

- **Windows**: You can install Ruby using RubyInstaller (https://rubyinstaller.org/).
- **macOS / Linux**: You can install Ruby using `brew` or package managers like `apt`.

### 2. Install Dependencies

To run this project, you'll need to install a few Ruby gems (libraries). Navigate to your project directory and run the following command in your terminal:

    
    gem install sinatra
    gem install json


These commands will install:

Sinatra: A DSL for quickly creating web applications in Ruby.
JSON: A library to work with JSON data.
Alternatively, you can create a Gemfile for your project and install all dependencies at once:

1. Create a file named Gemfile in the root directory of your project with the following contents:
source 'https://rubygems.org'
    ```bash
    gem 'sinatra'
    gem 'json'

2. Install the dependencies by running:
    ```bash
    bundle install

3.  Set Up Webhook Listener
Once dependencies are installed, you can start the server by running:
    ```bash
    ruby app.rb

This will start a web server that listens for incoming webhook requests on http://localhost:4567.