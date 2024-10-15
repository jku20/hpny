# hpny

A program to take template HTML files and combine them together into a website. 

## Requirements
This project is written in [mercury](https://mercurylang.org). Any recent version of its compiler should work. Build and testing infrastructure depends on [make](https://www.gnu.org/software/make) as well as other common Linux utilities like `diff`.

## Building

Clone the repo and go to its root. Run the command:
```
make
```
This will build the `hpny` binary in the root directory. 

## Testing

Run the command:
```
make test
```
Any failures will be marked by diffs between expected output and `<test>.exp` files.
