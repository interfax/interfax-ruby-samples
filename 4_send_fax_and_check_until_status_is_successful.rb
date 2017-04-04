fax = interfax.deliver(
  faxNumber: "+11111111112",
  file: 'path/to/fax.pdf'
)

# wait for the fax to send
# successfully
loop do
  # reload the fax data
  fax = fax.reload
  # sleep if pending
  if fax.status < 0
    sleep(10)
  else
    # output on success or error
    if fax.status == 0
      puts "Sent!"
    else
      puts "Error: #{fax.status}"
    end
    break
  end
end
