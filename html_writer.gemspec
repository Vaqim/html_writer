Gem::Specification.new do |s|
  s.name        = 'html_writer'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = 'This is my first gem!'
  s.description = 'html_writer create html file with stats of my pet!'
  s.authors     = ['Vaqim']
  s.email       = 'vadimser1355@gmail.com'
  s.files       = ['lib/html_writer.rb']
  s.homepage    = ''
  s.metadata    = { 'source_code_uri' => 'https://github.com/Vaqim/html_writer' }

  s.add_runtime_dependency 'nokogiri'
  s.add_runtime_dependency 'sanitize'
end
