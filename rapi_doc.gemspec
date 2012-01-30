# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rapi_doc"
  s.version     = "0.3.3"
  s.author      = "Joel Cogen"
  s.email       = "joel@joelcogen.com"
  s.homepage    = "https://github.com/joelcogen/rapi_doc"
  s.summary     = %q{Documentation generation for RESTful APIs}
  s.description = %q{Documentation generation for RESTful APIs}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ["lib"]
end