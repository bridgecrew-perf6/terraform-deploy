# Two-Tier with apache AWS Architecture

After you run `terraform apply` on this configuration, it will
automatically output the DNS address of the ELB. After your instance
registers, this should respond with the default apache web page.

Run with a command like this:

```
terraform apply -var 'key_name={your_aws_key_name}' \
   -var 'public_key_path={location_of_your_key_in_your_local_machine}'
```

For example:

```
terraform apply -var 'key_name=terraform' -var 'public_key_path=/Users/tf/.ssh/terraform.pub'
```

Alternatively to using `-var` with each command, we can update `terraform.tfvars` file directly to mentioned key path.

Note: Make sure before executing this we should have a public private key pair and private key should be added in agent.
Command to add private key in ssh agent
ssh-add <key-name>