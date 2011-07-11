# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mananbo/version"

Gem::Specification.new do |s|
  s.name        = "mananbo"
  s.version     = Mananbo::VERSION
  s.authors     = ["Bryan McKelvey"]
  s.email       = ["bryan.mckelvey@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Study for the JLPT}
  s.description = %q{Study for the JLPT}

  s.rubyforge_project = "mananbo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
