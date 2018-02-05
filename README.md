## Sauced_Cucumber

This code is provided on an "AS-IS” basis without warranty of any kind, either express or implied, including without limitation any implied warranties of condition, uninterrupted use, merchantability, fitness for a particular purpose, or non-infringement. Your tests and testing environments may require you to modify this framework. Issues regarding this framework should be submitted through GitHub. 

### Environment Setup

1. Global Dependencies
    * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
    * Or Install Ruby with [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Install [Rake](http://docs.seattlerb.org/rake/)
    ```
    $ gem install rake
    ```
    * Install bundler (Sudo may be necessary)
    ```
    $ gem install bundler
    ```

2. Sauce Credentials
    * In the terminal export your Sauce Labs Credentials as environmental variables:
    ```
    $ export SAUCE_USERNAME=<your Sauce Labs username>
	$ export SAUCE_ACCESS_KEY=<your Sauce Labs access key>

Windows:
set SAUCE_USERNAME=<your Sauce Labs username>
set SAUCE_ACCESS_KEY=<your Sauce Labs access key>
    ```

3. Project Dependencies
	* Install packages (Use sudo if necessary)
	```
	$ bundle install
	```

### Running Tests

* Tests in Parallel:
	```
	$ rake test_sauce
	```

### Resources
##### [Sauce Labs Documentation](https://wiki.saucelabs.com/)

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [Cucumber Documentation](https://cucumber.io/docs/reference)

##### [Ruby Documentation](http://ruby-doc.org/)
