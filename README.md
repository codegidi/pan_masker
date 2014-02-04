Pan masker
==========

A simple gem to scan a string, find and mask mastercard, visa and verve credit/debit card pans.


## Installation

1. Add pan_masker to your Gemfile as you normally would do with any bundler powered gem. 

        gem 'pan_masker'

1. Run a bundle install on your project 

        bundle install

1. Require pan_masker in your controller or helper classes

        require 'pan_masker'

1. Find and mask your pan

        Pan_masker.mask('string to be scanned')

## How it works

The gem scans a string block for pans of lenght 16 (mastercard and visa) and 19 and masks them

