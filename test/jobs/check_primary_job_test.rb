require "test_helper"

class CheckPrimaryJobTest < ActiveJob::TestCase  
  include ActiveJob::TestHelper  
  described_class = CheckPrimaryJob

  test "job queueing" do  
    jobs = described_class.queue_adapter.enqueued_jobs
    orig_size = jobs.size
    described_class.perform_later Number.first
    assert (jobs.size == orig_size + 1)
  end  
end  
