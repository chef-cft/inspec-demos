# Example Azure InSpec Profile

This profile contains an example control for evaluating Azure virtual machines

## Prerequisites

- InSpec >= 2.0

## Credentials FIle

### Credentials File

The simplest way is to create the file `~/.azure/credentials` with the following format. The profile is configured to look for this file by default do no settings are required.

```
[<SUBSCRIPTION_ID>]
client_id = "<CLIENT_ID>"
client_secret = "<CLIENT_SECRET>"
tenant_id = "<TENANT_ID>"
```

## Usage

Update the `azure_virtual_machine` resource in `controls/default.rb` directory with the appropriate information for the VM you'd like to evaluate. Then, from your terminal, run the following command:

`inspec exec azure-demo/controls/default.rb -t azure://`

