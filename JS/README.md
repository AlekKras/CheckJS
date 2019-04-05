# Retire

We are using Retire JS to check for any outdated plugins that you are using in your production.
This is a Docker solution.

## Build it

```
docker build . -tag=retire
```

## Run it

```
docker run --rm -v $PWD:/app retire -v
```

If after running this, you did not see anything, then there are no outdated plugins in your production.
To make sure you are correct, run the following:

```
echo $?
```

If the output is `0` then you are good