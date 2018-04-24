# MPS Code Review [![Build Status](https://travis-ci.org/Workday/mps-code-reviewer.svg?branch=master)](https://travis-ci.org/Workday/mps-code-reviewer)

A code review plugin for MPS providing basic review interaction, in-line comment viewing, and node-specific comments.

## Features

* Configurable connection to Bitbucket pull requests from within MPS
* Reviewer tool showing pull request details and activities.
* Toggleable inline comment view
* Submit comments to a pull request
* Commenting on the currently selected node.

## Plugin Use

The plugin binaries can be found [here](https://github.com/Workday/mps-code-reviewer/releases).

The review tool will be enabled in the right-hand sidebar. It will not do anything until it is properly configured in:
```
Preferences -> Other Settings -> BitbucketCodeReviewConfiguration
```

## Getting Started

Read our [contribution guidelines](CONTRIBUTING.md) before making changes to the project. Substantial contributions will require a Contributor License Agreement before a pull request can be merged.

### Prerequisites

MPS or an MPS-based IDE

### Installing

After cloning the repository, run `gw setup`. This will download all necessary libraries for development and build.

Open the project folder using MPS and rebuild the project. Once this has completed you should see the Reviewer tool in the sidebar.

If you wish to connect to a review, enter information in 
```
Preferences -> Other Settings -> BitbucketCodeReviewConfiguration
```

Note: Providing Pull Request ID overrides all requests to work with the specified pull request. This is useful for performing testing when working within the project.

## Deployment

Running `gw build` will build the following two MPS plugins as zip files:
```
dist/build/artifacts/reviewPlugin/com.workday.yp.review.zip
dist/build/artifacts/reviewPlugin/com.workday.yp.review.git.zip
```
Once the plugins are built, `gw install` will install or update the plugins. Subsequently, `gw uninstall` will uninstall the plugins.

## Built With

* [Mbeddr Platform](http://mbeddr.com/) - MPS library providing tons of awesome features. In particular, we are using Conditional Editors to provide the inline comment view.

## Contributing

Read our [contribution guidelines](CONTRIBUTING.md) for details on contributions and pull requests.

## Authors

* **Tyler Hodgkins** - [ty1824](https://github.com/ty1824)
* **Tamas Szabo** - [szabta89](https://github.com/szabta89)
* **Justin Horton** - [justinhorton](https://github.com/justinhorton)

See also the list of [contributors](CONTRIBUTORS.md) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE.md](LICENSE.md) file for details
