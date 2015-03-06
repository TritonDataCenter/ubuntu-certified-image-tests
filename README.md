# Overview

These are the tests used to validate images before being released to the Joyent Public Cloud and images.joyent.com.

These tests are are based on [Serverspec](http://serverspec.org) "Serverspec.org").

## Installation and Setup

To run the tests you will need ruby (1.9.3+ or 2.0.0 should work) and rubygems installed.

Install serverspec with

    gem install serverspec

Copy the `properties_example.yml` file to `properties.yml`

Modify `properties.yml` with the name and properties you want to test. 

Next, edit your `~/.ssh/config` file with the host information of the virtual machines you want to test. The name you chose for _Host_ in `~/.ssh/config` should match what you have in `properties.yml`. 

    ubuntu-12.04:
      :roles:
        - ubuntu
      :name: Ubuntu 12.04.5 LTS 
      :version: 20150225 
      :doc_url: https://docs.joyent.com/images/linux/ubuntu-certified

    ubuntu-14.04:
       :roles:
            - ubuntu
       :name: Ubuntu 14.04.2 LTS
       :version: 20150225.2
       :doc_url:

And an example `~/.ssh/config` file:

    Host ubuntu-12.04
      HostName x.xx.xx.xxx
      User ubuntu

    Host ubuntu-14.04
      HostName x.xx.xx.xxx
      User ubuntu

## Running the tests

To run the tests, run the following command (within this directory):

    rake serverspec

Or just:

    rake

More information on how to create serverspec tests can be found here:

http://serverspec.org/tutorial.html

There's a list of useful Resource Types here that you can use for testing:

http://serverspec.org/resource_types.html
