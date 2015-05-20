Adhearsion.config do |config|
  config.development do |dev|
    dev.platform.logging.level = :debug
  end
end

Adhearsion::Events.draw do
end

Adhearsion.router do
  unaccepting do
    route 'default', CallController
  end
end
