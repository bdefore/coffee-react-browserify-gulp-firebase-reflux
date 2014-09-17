# Boilerplate for react with coffee-reactify and browserify

This is a boilerplate repo for using react with coffee-reactify and browserify, and running it with gulp.

Originally forked from https://github.com/tcoopman/react-es6-browserify and
ported to coffee-reactify.

## Installation

```
npm install
```

After the installation, run `gulp` and browse to _http://localhost:8888_

The compiled code can be found in dist/bundle/app.js.

## What do you get

* A gulpfile with livereload
* Compilation of the cjsx [1]

## Compilation step

All the steps can be found in _gulpfile.js_. Most of the inspiration comes from [7]. You should check this post, there is a great gulpfile included!

## Sources

* [0] Browserify - https://github.com/substack/node-browserify
* [1] coffee-reactify - https://github.com/jsdf/coffee-reactify
* [7] Fast build with browserify and reactjs - http://blog.avisi.nl/2014/04/25/how-to-keep-a-fast-build-with-browserify-and-reactjs/
