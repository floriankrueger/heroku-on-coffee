# Heroku on Coffee : Template Project

This is a template project you can use as a starting point in case you want to create a heroku app using node.js with coffee-script.

If you've installed GitHub for Windows, use the MinGW MSYS suite to generate a separate SSH key pair with `ssh-keygen -t rsa`. Make sure to create a passphrase when prompted, and copy the generated key pair to `C:\Users\{Username}\.ssh\`. On Windows, these keys are usually stored in `C:\Users\{Username}\.ssh\`, with GitHub's public key named `github_rsa.pub` and MSYS's public key named `id_rsa.pub` by default. We want to use the MSYS generated key because Heroku won't let us push our apps without it.

If you're working on "Unix"/Linux/Mac, you probably already have an SSH key pair in `$HOME/.ssh`. If you need to generate a key pair, the method is similar to that above - just use `ssh-keygen -t rsa -f ~/.ssh/id_rsa_heroku -C "Key for Heroku"`.

Clone this repo and then push to your own Heroku app:

    # Clone the repo
    $ git clone https://github.com/floriankrueger/heroku-on-coffee.git
    $ cd heroku-on-coffee/
    $ heroku login
    
    # Switch SSH key to the new one (heroku will prompt you for which one to use)
    $ heroku keys:add
    
    # Create the Heroku app or push to an existing app
    $ heroku create     # if you don't have an app yet
    $ heroku git:remote --add --app {your heroku app name here}   # if you have a blank app ready to use
    
    # Push the app to Heroku
    $ git push heroku master

A Demo of this Template (displaying "Hello World") is live at [http://herokuoncoffee.herokuapp.com/].
