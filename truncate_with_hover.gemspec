# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "truncate_with_hover/version"

Gem::Specification.new do |s|
  s.name        = "truncate_with_hover"
  s.version     = TruncateWithHover::VERSION
  s.authors     = ["hoverlover"]
  s.email       = ["hoverlover@gmail.com"]
  s.homepage    = "https://github.com/hoverlover/truncate_with_hover"
  s.summary     = %q{Like Rails' TextHelper#truncate, except with hover text.}
  s.description = s.summary

  s.rubyforge_project = "truncate_with_hover"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
