Gem::Specification.new do |s|
  s.name              = 'activejob-locking'
  s.version           = '0.6.2'
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = 'ActiveJob locking to control how jobs are enqueued and performed.'
  s.license           = 'MIT'
  s.homepage          = 'http://github.com/s-jcs/activejob-locking'
  s.authors           = ['S-JCS']

  s.files             = %w(README.md Rakefile LICENSE HISTORY.md Gemfile)
  s.files            += Dir.glob('lib/**/*')
  s.files            += Dir.glob('test/**/*')

  s.add_dependency('activejob', '~> 6.1.7')
  s.add_development_dependency('minitest')
  s.add_development_dependency('redis-mutex')
  s.add_development_dependency('redis-semaphore')
  s.add_development_dependency('redlock')
  s.add_development_dependency('suo')

  s.description       = <<desc
activejob-locking lets you control how ActiveJobs are enqueued and performed:

Allow only one job to be enqueued at a time (based on a lock_id)
Allow only one job to be performed at a time (also based on a lock_id)
desc
end
