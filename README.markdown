Secret Key
==========

Provides an accessor for a secret key stored in <code>tmp</code>.

Setup
-----

<pre>
gem sources -a http://gems.github.com
sudo gem install winton-secret_key
</pre>

Usage
-----

<pre>
key = SecretKey.new(File.dirname("__FILE__"))
key.read
</pre>