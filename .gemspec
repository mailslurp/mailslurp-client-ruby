
# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "mailslurp_client"
  s.version     = "15.19.16"
  s.licenses    = ["MIT"]
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Official MailSlurp API Client"
  s.description = "Create emails addresses in Ruby then send and receive real emails and attachments. See https://www.mailslurp.com/ruby/ for full Ruby documentation. Get an API Key at https://app.mailslurp.com"
  s.authors     = ["mailslurp"]
  s.require_path = 'lib'
  s.email       = "contact@mailslurp.dev"
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md SUPPORT.md SECURITY.md)
  s.homepage    = "https://www.mailslurp.com/ruby"
  s.metadata    = { "source_code_uri" => "https://github.com/mailslurp/mailslurp-client-ruby" }
end
