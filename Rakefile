# frozen_string_literal: true

require 'time'


task default: %w[push]

task :fmt do
  sh 'rubocop -A'
end

task :push do
  sh 'git add .'
  sh 'git pull'
  sh "git commit -m 'update #{Time.new.inspect}'"
  sh 'git push'
end
