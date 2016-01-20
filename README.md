# Take-me-to-the-riot

My foray into the Riot ecosystem and how I can use it with Django. This first commit is a Riot to-do app with in-browser compilation. I do not recommend in-browser compilation as it can get impossible to debug. On go for this option if you like to pull your hair out of your scalp.

## Run locally

First you should install superstatic if you do not have that
```bash
$ npm install -g superstatic
```
Clone the repo
```bash
$ git clone git@github.com:raybesiga/take-me-to-the-riot.git
$ cd to/this/dir
$ superstatic
```

To look at the precompiled branch, run the following git command
```bash
$ git checkout precompiled-todo
```

And let us install Riot globally
```bash
$ npm install -g riot 
```


Open the URL shown in the terminal in your browser. When you inspect the to do web component in your browser, you will not be able to view the source code for it. This is why I believe pre-compiling it is a better option. Let us do that. We are going to create a branch for the precompiled version.





