Secret Key
==========

Provides an accessor for a secret key stored in <code>tmp</code>.

Compatibility
-------------

Tested with Ruby 1.8.6, 1.8.7, and 1.9.1.

Setup
-----

<pre>
sudo gem install secret_key --source http://gemcutter.org
</pre>

Usage
-----

<pre>
require 'rubygems'
require 'secret_key'
key = SecretKey.new(File.dirname(__FILE__)).read
</pre>