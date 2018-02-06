@contacts = []

def add_contact
  contact_info = {}
  puts "What is the name?"
  contact_info[:name] = gets.strip 
  puts "What is the email?"
  contact_info[:email] = gets.strip 
  puts "What is the phone?"
  contact_info[:phone] = gets.strip
  @contacts << contact_info
  print contact_info[:name] 
  print " has been added"
  puts " "
end 

def view_contacts 
  @contacts.each_with_index do |contact, i|
    puts "--------------" 
    puts "Contact Number #{i + 1}"
    puts contact[:name]
    puts contact[:email]
    puts contact[:phone]
    puts "-------------"
  end 
end 

def delete_contact
  puts "what contact would you like to delete? Choose a number"
  view_contacts
  delete = gets.strip.to_i
  @contact_info.delete_at {|contact| contact[i] == delete }
  puts "contact has been deleted"
  menu
end 

def menu
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Delete Contact"
  puts "4) Edit Contact"
  puts "5) Exit" 
  puts "Choose an option"
  option = gets.strip
  case option
    when "1"
      view_contacts
    when "2"
      add_contact
    when "3"
      puts delete_contact(@contacts)
    when "4"
      puts "edit contact"
    else "5"
      exit
  end 
  menu
end 

menu
