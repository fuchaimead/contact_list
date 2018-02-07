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
    print "Name: "
    puts  contact[:name]
    print "Email: "
    puts  contact[:email]
    print "Phone: "
    puts  contact[:phone]
    puts "-------------"
  end 
end 

def delete_contact(contact_info)
  puts "What contact would you like to delete? Choose a number."
  view_contacts
  delete = gets.strip.to_i - 1
  @contacts.delete_at(delete)
  puts "contact has been deleted"
  menu
end 

def edit_contact(contact_info)
  if @contacts.length != 0 
    puts "What contact would you like to edit? Choose a number"
    view_contacts
    edit = gets.strip.to_i - 1
    puts "What would you like to update?"
    choice = gets.strip
    case choice 
      when "name" 
        puts "What is the new name?"
        name = gets.strip 
        @contacts[edit][:name] = name
        puts "updating name"
      when "email"
        puts "What is the new email?"
        email = gets.strip 
        @contacts[edit][:email] = email
        puts "updating email"
      when "phone"
        puts "What is the new phone number?"
        phone = gets.strip 
        @contacts[edit][:phone] = phone
        puts "updating phone"
      else 
        puts "not valid"
        menu
      end
  else 
    puts "No contacts have been added."
    menu
  end 
end 

def menu
  puts "----------------"
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
      puts edit_contact(@contacts)
    when "5"
      exit
    else 
     puts "not valid"
     menu
  end 
  menu
end 

menu
