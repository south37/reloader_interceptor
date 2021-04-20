require_relative 'lib/reloader_interceptor/version'

Gem::Specification.new do |spec|
  spec.name          = "reloader_interceptor"
  spec.version       = ReloaderInterceptor::VERSION
  spec.authors       = ["Nao Minami"]
  spec.email         = ["south37777@gmail.com"]

  spec.summary       = %q{A gRPC interceptor for using ActiveSupport::Reloader.}
  spec.description   = %q{A gRPC interceptor for using ActiveSupport::Reloader.}
  spec.homepage      = "https://github.com/wantedly/reloader_interceptor"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wantedly/reloader_interceptor"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "grpc"
  spec.add_runtime_dependency "activesupport"
end
