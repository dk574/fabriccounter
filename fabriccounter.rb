print "Hi! We're testing out this simple estimator for your next fabric shopping expedition! For now, we do not have many options for you to pick from, but you may hear a little more from us once we fix this up a bit. In the mean time, let's get started!" "\n"
   
  print "1. Skirt" "\n"
  print "2. Dress" "\n"
  print "3. Blouse" "\n"
  
  "\n"
  
  puts "Are you making a - straight skirt, straight dress or a blouse?"
  
  "\n"
  
  choice = gets.strip
  
  
  if choice === "straight skirt"
    
    puts "Waist: "
      waist = gets.to_r
      
      puts "Hip: "
      hip = gets.to_r
      
      puts "Skirt length: "
      skirt_length = gets.to_i
     
      hip_inches = hip + 10 
      yards1 = hip_inches / 36.to_r
      
      waist_inches = waist + 10
      yards2 = waist_inches / 36.to_r
      
      width = skirt_length + 5

    if waist_inches > hip_inches
     puts "You need #{yards1.to_i} and #{yards1-yards1.to_i} yard(s) with a #{width} width. 
     NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
      
  elsif hip_inches > waist_inches
     puts "You need #{yards2.to_i} and #{yards2-yards2.to_i} yard(s) with a #{width} width. NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
   elsif hip_inches === waist_inches
    puts "You need #{yards2.to_i} and #{yards2-yards2.to_i} yards with a #{width} width. NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
  else "Invalid input."
   end
  
  elsif choice === "straight dress"
      puts "Type your height in inches (1ft = 12in): " 
      height = gets.to_i
      puts "What's your bust?"
      bust = gets.to_r
      puts "Waist: "
      waist = gets.to_r
      puts "Hip: "
      hip = gets.to_r
      
      puts "Are you wearing sleeves? Y or N?"
      getting_arm = gets.strip
      
      hip_inches = hip + 10 
      yards1 = hip_inches / 36.to_r
      
      waist_inches = waist + 10
      yards2 = waist_inches / 36.to_r
      
      bust_inches = bust + 10
      yards3 = bust / 36.to_r
      
      dress_length = height * 0.875
      
      width = dress_length
      
      
  if getting_arm === "Y"
      puts "What is your sleeve length?"
      sleeve = gets.to_i
      puts "What is your arm circumference?"
      a_circumference = gets.to_r / 36.to_r
  end   
      with_sleeve1 = yards1 + a_circumference
      
      with_sleeve2 = yards2 + a_circumference
      
      with_sleeve3 = yards3 + a_circumference
      
      if hip > bust && hip > waist
      puts "You need #{with_sleeve1.to_i} and #{with_sleeve1-with_sleeve1.to_i} yard(s) with a #{width} width. 
    NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
    elsif bust > hip && bust > waist
    puts "You need #{with_sleeve2.to_i} and #{with_sleeve2-with_sleeve2.to_i} yard(s) with a #{width} width. 
    NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
    elsif waist > bust && waist > hip
    puts "You need #{with_sleeve3.to_i} and #{with_sleeve3-with_sleeve3.to_i} yard(s) with a #{width} width. 
    NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
  else print "Check your measurements."
  end
 
      
  elsif getting_arm === "N"
      if hip > bust && hip > waist
           puts "You need #{yards1.to_i} and #{yards1-yards1.to_i} yard(s) with a #{width} width. NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
           elsif waist > bust && waist > hip
            puts "You need #{yards2.to_i} and #{yards2-yards2.to_i} yard(s) with a #{width} width. 
    NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
      elsif bust > hip && bust > waist 
         puts "You need #{yards3.to_i} and #{yards3-yards1.to_i} yard(s) with a #{width} width. 
    NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
  else print "You may need to doublecheck a few things."
      end
  

  elsif choice === "blouse"
      puts "Bust: "
      bust = gets.to_r
      puts "Waist: "
      waist = gets.to_r
      puts "Hip: " 
      hip = gets.to_r
      puts "Blouse length: "
      blouse_length = gets.to_i
      puts "Are you wearing sleeves? Y or N?"
      getting_arm = gets.strip
      
      hip_inches = hip + 10 
      yards1 = hip_inches / 36.to_r
      
      yardage1 = yards1 / 2.to_r
      
      waist_inches = waist + 10
      yards2 = waist_inches / 36.to_r
      
      yardage2 = yards2 / 2.to_r
      
      bust_inches = bust + 10
      yards3 = bust / 36.to_r
      
      yardage3 = yards3 / 2.to_r
      
      width = blouse_length * 2
      
     
      if getting_arm === "Y" 
     
      puts "What is your sleeve length?"
      sleeve = gets.to_i
      puts "What is your arm circumference?"
      a_circumference = gets.to_r / 36
      end 

      with_sleeve1 = yardage1 + a_circumference
      
      with_sleeve2 = yardage2 + a_circumference
      
      with_sleeve3 = yardage3 + a_circumference
      
        if hip > bust && hip > waist
               puts "You need #{with_sleeve1.to_i} and #{with_sleeve1-with_sleeve1.to_i} yard(s) with a #{width} width.  NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
        elsif bust > hip && bust > waist  
              puts "You need #{with_sleeve2.to_i} and #{with_sleeve2-with_sleeve2.to_i} yard(s) with a #{width} width. NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
        elsif waist > bust && waist > hip 
               puts "You need #{with_sleeve3.to_i} and #{with_sleeve1-with_sleeve3.to_i} yard(s) with a #{width} width. NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
        else print "Make sure the measurements are clear."
        end
      elsif getting_arm === "N"
          if hip > bust && hip > waist
               puts "You need #{yardage1.to_i} and #{yardage1-yardage1.to_i} yard(s) with a #{width} width.  NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
           elsif bust > hip && bust > waist 
              puts "You need #{yardage2.to_i} and #{yardage2-yardage2.to_i} yard(s) with a #{width} width.  NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
           elsif waist > bust && waist > hip
               puts "You need #{yardage3.to_i} and #{yardage3-yardage3.to_i} yard(s) with a #{width} width.  NOTE: Fabric width usually ranges between 45 and 60. There are others, but make sure you have enough width. Fractions come in 1/8, 1/4, 3/8, 1/2, 5/8, 3,4, and up to a whole. Get your yard(s) and make sure you pick a fraction higher than your own."
             else print"Doublecheck numbers. There is an error."
          end
        
          
        else 
          print "Check your measurements. Invalid input."
    end

print "Thanks for stopping by! If you're done, hope we guessed right. If not, please try again."
