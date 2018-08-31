# Visual Studio Team Services Hosted Images
![Banner](/docs/resources/ImageGenBanner.png "Banner")

## Overview

This repo contains the scripts and instructions to generate the images used for the VSTS hosted pool images.  Specifically for Hosted VS2017, VS2015 and Linux.


# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Issues and Requests

If you have an issue with one of the images or you have a request to add or change a tool on one of our images:

  1.  Create an issue in this repo
  2.  Wait for approval or comments.  Our images have real constraints.  Primarily, disk space.  So it's a value (broad adoption of that tool) vs. cost (disk space and on-going maintenance) proposition.  Specify whether you will create a PR or if you are requesting for us to add it to the image.
  3.  Optionally, create a PR.

## Generating Images

The images are generated using [Packer](https://www.packer.io/).

## Windows
[How to use Packer to create Windows virtual machine images in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/build-image-with-packer)
## Linux
[How to use Packer to create Linux virtual machine images in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/build-image-with-packer)

## Instructions to Build Images
[VS2017](docs/vs2017.md)

