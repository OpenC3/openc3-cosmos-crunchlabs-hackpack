# encoding: ascii-8bit

# Copyright 2026 OpenC3, Inc.
# All Rights Reserved.
#
# This file may only be used under the terms of a commercial license
# purchased from OpenC3, Inc.
#
# The development of this software was funded in-whole or in-part by MethaneSAT LLC.

Gem::Specification.new do |s|
  s.name = 'openc3-cosmos-label-maker'
  s.summary = 'OpenC3 COSMOS CrunchLabs Hack Pack Label Maker Plugin'
  s.description = <<-EOF
    This plugin adds the COSMOS target definition for the CrunchLabs Hack Pack Label Maker.
  EOF
  s.license = 'MIT'
  s.authors = ['Clay Kramp']
  s.email = ['clay@openc3.com']
  s.homepage = 'https://github.com/OpenC3/openc3-cosmos-crunchlabs-hackpack'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 3.0'

  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
    time = Time.now.strftime("%Y%m%d%H%M%S")
    s.version = '0.0.0' + ".#{time}"
  end
  s.files = Dir.glob("{targets,lib,tools,microservices,public}/**/*") + %w(Rakefile README.md LICENSE.txt plugin.txt)
  s.metadata = {
    "source_code_uri" => "https://github.com/OpenC3/openc3-cosmos-crunchlabs-hackpack",
    "openc3_store_title" => "CrunchLabs Hack Pack Label Maker",
    "openc3_store_keywords" => "crunchlabs, hack pack, label maker, target",
    "openc3_store_image" => "public/store_img.png",
    "openc3_store_access_type" => "public",
    "openc3_cosmos_minimum_version" => "6.0.0"
  }
end
