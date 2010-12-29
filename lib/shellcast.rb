require 'rubygems'
require 'fileutils'
require 'colored'
require 'xdg'
require 'yaml'
require 'json'

module ShellCast

  APP_NAME   = 'shellcast'
  DATA_DIR   = File.join(XDG::Data.home,   APP_NAME)
  CONFIG_DIR = File.join(XDG::Config.home, APP_NAME)

  def shellcast_dir(shellcast_id)
    File.join(ShellCast::DATA_DIR, shellcast_id.to_s)
  end
  module_function :shellcast_dir

  autoload :Recorder,  'shellcast/recorder.rb'
  autoload :Player,    'shellcast/player.rb'
  autoload :Publisher, 'shellcast/publisher.rb'

end
