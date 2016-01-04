APPS = %w(
  auth
  casebook
  consumer
  folio
  rolodex
)

class Default < Thor
  APPS.each do |app|
    desc "#{app}", "run rails command in #{app}"
    define_method "#{app}" do |*args|
      system("cd #{app} && rails #{args.join(' ')}")
    end

    desc "#{app}", "run rake command in #{app}"
    define_method "#{app}:rake" do |*args|
      system("cd #{app} && rake #{args.join(' ')}")
    end

    desc "#{app}:test", "run rspec tests for #{app}"
    define_method "#{app}:test" do |*args|
      system("cd #{app} && rspec #{args.join(' ')}")
    end

    desc "#{app}:log", "tail log from #{app}"
    define_method "#{app}:log" do |env = 'development'|
      system("tail -f #{app}/log/#{env}.log")
    end

    desc "#{app}:migrate", "run migrations in #{app}"
    define_method "#{app}:migrate" do
      system("cd #{app} && rake db:migrate")
    end

    desc "#{app}:rollback", "rollback migrations in #{app}"
    define_method "#{app}:rollback" do
      system("cd #{app} && rake db:rollback")
    end
  end
end
