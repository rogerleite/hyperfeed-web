# Add lib folder to LOAD_PATH
libdir = File.expand_path(File.join(File.dirname(__FILE__), "lib"))
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "hyperfeed"
require "hyperfeed/web"

map('/') { run Hyperfeed::Web::Index }
map('/feeds') { run Hyperfeed::Web::Feeds }
