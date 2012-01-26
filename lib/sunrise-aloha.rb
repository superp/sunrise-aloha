require 'pathname'

module SunriseAloha
  def self.root_path
    @root_path ||= Pathname.new( File.dirname(File.expand_path('../', __FILE__)) )
  end
  
  def self.assets
    Dir[root_path.join('vendor/assets/javascripts/aloha/**', '*.{js,css}')].inject([]) do |list, path|
      filename = Pathname.new(path).relative_path_from(root_path.join('vendor/assets/javascripts')) 
      list << filename unless filename == 'aloha/aloha.js'
      list
    end
  end
end

require 'sunrise-aloha/engine'
