begin
  fax = interfax.deliver(
    faxNumber: "+11111111112",
    file: 'test.pdf'
  )
  
  # wait for the fax to send
  # successfully
  loop do
    # reload the fax data
    fax = fax.reload
    # wait a second if pending
    if fax.status < 0
      sleep(1)
    else
      # output on success or error
      if fax.status == 0
        puts "Sent!"
        puts "Cost: #{fax.units*fax.costPerUnit}"
      else
        puts "Error: #{fax.status}"
      end
      break
    end
  end
rescue InterFAX::Client::BadRequestError 
  puts error.message
end



