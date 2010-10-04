source :rubygems

gems = %w[rspec rspec-core rspec-expectations rspec-mocks]
gems.each do |g|
  $LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + "/../#{g}/lib")
end
gemspec
gems.each do |g|
  @dependencies.reject!{|dep| dep.name == g}
  gem g, :path => "../#{g}"
end
