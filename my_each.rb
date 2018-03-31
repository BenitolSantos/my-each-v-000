def my_each(collection)
  count = 0
  while count < collection.length #works with arrays too! .size doesn't work here
   yield collection[count]
   #yield is used without inserting anything.
   #no reason to and can't because inserting a line ({} or do)
   #doesn't work without the access of the variables that are defined in the method.
    count += 1
  end
  collection
end



=begin
1) my_each iterates over each element
   Failure/Error: expect($stdout).to receive(:).exactly(words.length).times
     (#<IO:<STDOUT>>).(*(any args))                           ^What marcel galang forgot
         expected: 4 times with any arguments                      to mention was
         received: 3 times with any arguments                      length was needed.
                                                            that's why size didn't work

=end


#studygroup personel said this works
=begin
my_each([1,2,3,4]) do |i|
   i * 2
end
=end
