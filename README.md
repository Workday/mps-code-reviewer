# mps-code-review

A code review tool for MPS providing basic review interaction, in-line comment viewing, and node-specific comments.

## Features

* Configurable connection to Bitbucket pull requests from within MPS
* Reviewer tool showing pull request details and activities.
* Toggleable inline comment view
* Submit comments to a pull request
* Commenting on the currently selected node.

## Getting Started

Read our [contribution guidelines](CONTRIBUTING.md) before making changes to the project. Substantial contributions will require a [Contributor License Agreement](https://docs.google.com/a/workday.com/forms/d/e/1FAIpQLSclaAYSjgNkwTkyPo5IHm8_XTiW7q4iusHZGYtJac-6kS6gjg/viewform) before a pull request can be merged.

### Prerequisites

MPS or an MPS-based IDE

### Installing

After cloning the repository, run `gw setup`. This will download all necessary libraries for development and build.

Open the project folder using MPS and rebuild the project. Once this has completed you should see the Reviewer tool in the sidebar.

If you wish to connect to a review, enter information in 
```
Preferences -> Other Settings -> Bitbucket Review Configuration
```

Note: Providing Pull Request ID overrides all requests to work with the specified pull request. This is useful for performing testing when working within the project.

## Deployment

Running `gw build` will build the MPS plugin zip which, upon completion, can be found in 
```
dist/build/artifacts/reviewPlugin/com.workday.yp.review.zip
```
This can be installed as a plugin in MPS.

## Built With

* [Mbeddr Platform](http://mbeddr.com/) - MPS library providing tons of awesome features.

## Contributing

Read our [contribution guidelines](CONTRIBUTING.md) for details on contributions and pull requests.

## Authors

* **Tyler Hodgkins** - [ty1824](https://github.com/ty1824)
* **Tamas Szabo** - [szabta89](https://github.com/szabta89)
* **Justin Horton** - [justinhorton](https://github.com/justinhorton)

See also the list of [contributors](CONTRIBUTORS) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE.md](LICENSE.md) file for details