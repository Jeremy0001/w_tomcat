w_tomcat Cookbook
==================

[![Build Status](https://travis-ci.org/haapp/w_tomcat.svg?branch=master)](https://travis-ci.org/haapp/w_tomcat)

Chef cookbook to instal and configure Apache Tomcat. Expects high availability use case.


Requirements
------------
Cookbook Dependency:

* firewall
* java
* tomcat

Supported Platform:
Ubuntu 14.04, Ubuntu 12.04

Usage
-----
#### w_tomcat::default

Include with `w_common` in your node/role's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[w_common]",
    "recipe[w_tomcat]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Install reqired gems
```
bundle install
```
4. Write your change
5. Write tests for your change (if applicable)
6. Run the tests, ensuring they all pass
```
bundle exec rspec
bundle exec kithen test
```
7. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
* Joel Handwell @joelhandwell
