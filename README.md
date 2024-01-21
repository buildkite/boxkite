# boxkite
A bare-bones rails app (with packages flavour) for use in interviews (do *not* fork - clone this repo locally only)

## Setup

On a mac you can run `script/bootstrap.bash` to use an opinionated setup with homebrew + asdf, or setup however you'd like.

## Running the app

```
bin/dev
```

Open [http://localhost:3000](http://localhost:3000) in browser of your choice.

### Project background

This is a really bare bones Rails project generated by commands such as:

```
rails new . --name boxkite --database postgresql --skip-docker --css=tailwind
```


rails generate scaffold Post name:string title:string content:text
