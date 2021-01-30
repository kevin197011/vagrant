# frozen_string_literal: true

require 'yaml'

nodes = YAML.safe_load(File.read('config.yml'))['nodes']
puts nodes
