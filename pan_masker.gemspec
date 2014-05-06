Gem::Specification.new do |s|
  s.name               = "pan_masker"
  s.version            = "0.2.2"
  s.executables        << 'pan_masker'
  s.authors            = ["Mayowa Anibaba"]
  s.date               = %q{2014-02-03}
  s.description        = %q{A simple gem to scan a string, find and mask mastercard, visa, discover and verve credit/debit card pans to comply with PCIDSS standards}
  s.email              = %q{me@codegidi.com}
  s.files              = ["lib/pan_masker.rb","lib/pan_masker/masker.rb","lib/pan_masker/finder.rb","bin/pan_masker"]
  s.test_files         = ["test/test_pan_masker.rb"]
  s.homepage           = %q{http://rubygems.org/gems/pan_masker}
  s.require_paths      = ["lib"]
  s.summary            = "Pan masker"
  s.license            = 'MIT'
end

