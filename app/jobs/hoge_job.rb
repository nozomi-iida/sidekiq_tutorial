class HogeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "start sidekiq job"
  end
end
