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
    define_method "#{app}" do |cmd|
      system("cd #{app} && rails #{cmd}")
    end
  end
end
