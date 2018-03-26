# Example Docker InSpec Profile

This profile contains an example control for evaluating a locally running docker instance

## Prerequisites

- InSpec >= 2.0
- A locally running Docker container to evaluate

## Usage

Update the contents of `controls/default.rb` with the appropriate information for your container. Then run:

`inspec exec docker-demo/controls/default.rb`
