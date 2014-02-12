Pan masker
==========
<img src="https://badge.fury.io/rb/pan_masker.png" alt="Gem Version" />

A simple gem to scan a string, find and mask mastercard, visa and verve credit/debit card pans.


## Installation

1. Add pan_masker to your Gemfile as you normally would do with any bundler powered gem. 

        gem 'pan_masker'

1. Run a bundle install on your project 

        bundle install

1. Require pan_masker in your controller or helper classes

        require 'pan_masker'

## Usage

1. Find and mask all card type pans found in string supplied

        Pan_masker.mask('string to be scanned')

1. Find and mask specific card type pans
        
        Pan_masker.mask('string to be scanned','card type')

## How it works

The gem scans a string block for pans of lenght 16 (mastercard and visa) and 19 and masks them

