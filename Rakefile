# frozen_string_literal: true

task default: %w[push]

task :fmt do
  sh 'rubocop -A'
end

task :push do
  sh 'git add .'
  sh 'git pull'
  sh "git commit -m 'update #{}'"
  sh 'git push'
end
