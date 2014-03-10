# Tree

Print directory as a tree.

## Installation

Add this line to your application's Gemfile:

    gem 'rtree'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rtree

## Usage

Command Line Usage:

	$ rtree -h
	Usage: rtree DIRECTORY
    -l N                             Directory depth.
        --hidden                     Show hidden files.
    -h, --help                           HELP
    
    $ rtree -l 1 .
    |-- bin
	|-- Gemfile
	|-- lib
	|-- LICENSE.txt
	|-- Rakefile
	|-- README.md
	|-- tree-0.0.1.gem
	|-- tree.gemspec
	
	$ rtree .
	|-- bin
	|   |-- rtree
	|-- Gemfile
	|-- lib
	|   |-- tree
	|   |   |-- version.rb
	|   |-- tree.rb
	|-- LICENSE.txt
	|-- Rakefile
	|-- README.md
	|-- tree-0.0.1.gem
	|-- tree.gemspec
	
Use in ruby code:

	require 'rtree'
	Dir.tree '.'
	# Use parameters
	Dir.tree '.',:show_hidden=>true,:level=>1

## Contributing

1. Fork it ( http://github.com/<my-github-username>/rtree/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

