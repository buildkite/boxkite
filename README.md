# boxkite
A bare-bones rails app (with packages flavour) for use in interviews (do *not* fork - clone this repo locally only)

<p align="center">
  <img src="/app/assets/images/ruby_box_kite.jpg" width="200" />
</p>

## Setup

On a mac you can run an opinionated setup with homebrew + asdf to completly get rolling:

```
script/bootstrap.bash
```

Or ensure you have all the dependencies (and versions) listed in [.tool-versions](https://github.com/buildkite/boxkite/blob/main/.tool-versions) then run:

```
bin/setup
```

## Running the app

```
bin/dev
```

Open [http://localhost:3000](http://localhost:3000) in browser of your choice.

## Running tests

```
bin/rails spec
```

### Project background

This is a really bare bones Rails project generated by commands such as:

```
bin/rails new . --name boxkite --database postgresql --skip-docker --css=tailwind
```

```
bin/rails g scaffold RepositoryType name:string --force
bin/rails g scaffold Repository repository_type:references name:string --force
bin/rails g scaffold Package repository:references name:string version:string --force
```


--

<p align="center">
  <img src="/app/assets/images/fly_green_box_kite.jpg" width="200" />
</p>
