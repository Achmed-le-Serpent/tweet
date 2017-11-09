require 'twitter'

class SendTweet
  def initialize(msg = "hello")
    @msg = msg
    log_in_to_twitter
    send_tweet
  end

  def log_in_to_twitter
    @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = "YrNJkpj5cnc075FtFhGY3dVdr"
        config.consumer_secret     = "BYFU0CIcnNkQwMLXZ4hmyuviSOm3hQ84e6dKiYbiZwYv1jjZ0L"
        config.access_token        = "918117928633061377-dr61fMYrEu5jyQDncnn7LQgrI0WIS2J"
        config.access_token_secret = "Q3RGbLRwFGl6hf642McUfs2lWSt8okBpD9lhZv31C8plS"
    end
  end

  def send_tweet
    @client.update(@msg)
  end
end
