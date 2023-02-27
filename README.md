# Website 

```
This website is based heavily of the original designed of Dominik Moritz, 
https://github.com/domoritz/domoritz.github.io.
```


## Write

```
bundle exec jekyll post "My New Post"
```

## Run

```
bundle exec jekyll serve --livereload
```

## Run with Docker

```
docker run \
  --volume="$PWD:/srv/jekyll" \
  -p 4000:4000 -p 35729:35729 \
  -it jekyll/jekyll \
  jekyll serve --livereload
```
