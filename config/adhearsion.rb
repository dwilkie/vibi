Adhearsion.config do |config|
  config.development do |dev|
    dev.platform.logging.level = :debug
  end

  config.punchblock.platform = :xmpp
end

Adhearsion::Events.draw do
end

Adhearsion.router do
  route 'default', CallController
end
