# Setlist API

A web API for specialized musician setlist info sourced from setlist.fm, providing features not offered by the official [setlist.fm API](https://api.setlist.fm).

## Development
### Go
The setlist API is a [Go](https://golang.org) application. Assuming that you already have a standard [Go installation and workspace](https://golang.org/doc/install) set up, you can retrieve the source code with `go get github.com/codestothestars/setlist-api` and then build the application by running `go build` from the `setlist-api` directory.

### Development Server
If you would like to develop and run the API on a dedicated local development server, this repository provides a Vagrantfile for an Ubuntu 16.04 server with Go. If you have Vagrant installed, run `vagrant up` from the root of the repository to bring up the server. See the [Vagrant](https://www.vagrantup.com) website for instructions on installing and using Vagrant.

### Building and Running
The `go build` command will build an executable binary for the application. If you are using the provided Vagrant development server, after connecting to the server using `vagrant ssh`, you can use the provided alias `rebuild`, which kills the `setlist-api` application (if running), builds it, and then runs it in the background.

## Contributing
Before submitting a pull request, make sure that you...
1. Write/edit [documentation comments](https://golang.org/doc/effective_go.html#commentary) for all new/modified members.
1. Write/edit [unit tests](https://golang.org/doc/code.html#Testing) for all new/modified functionality.
1. Correct all compilation warnings.
1. Run all unit tests with `go test` and correct all failures.

## API Documentation
The API documentation will go here when there is an API to document.
