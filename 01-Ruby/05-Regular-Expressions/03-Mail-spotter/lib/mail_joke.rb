def mail_joke(email)
  # TODO: Return (not print!) a joke suited to the email provided
  email_verification = email.match?(/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
  user = email.match(/^\w+/)

  case email_verification == true
  when email.include?("@lewagon.org")
    return "Well done #{user}, you're skilled and capable"
  when email.include?("@gmail.com")
    return "#{user}, you're an average but modern person"
  when email.include?("@live.com")
    return "#{user}, weren't you born after 1973?"
  else
    return "Sorry voyageurdufutur, we don't know how to judge 'milkyway.gal'"
  end
end

mail_joke("kamrin.klauschie@gmail.com")
mail_joke("milene@lewagon.org")
