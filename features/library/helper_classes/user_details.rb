class User_details
  attr_accessor :details, :multi_user_details

  def initialize
    @details = {"userid" => 'sunday',
                "password" => 'monday',
                "firstname" => 'Abirami',
                "lastname" => 'wednesday',
                "email" => 'thursday@gmail.com',
                "phone" => 4567893452,
                "address1" => "east street",
                "address2" => 'lewisroad',
                "city" => 'chicago',
                "state" => 'IL',
                "zipcode" => 67890,
                "country" => 'USA'
    }

    @multi_user_details = [ {"userid" => 'sunday',
                     "password" => 'monday',
                     "firstname" => 'Abirami',
                     "lastname" => 'Krishnan',
                     "email" => 'thursday@gmail.com',
                     "phone" => 4567893452,
                     "address1" => "east street",
                     "address2" => 'lewisroad',
                     "city" => 'chicago',
                     "state" => 'IL',
                     "zipcode" => 67890,
                     "country" => 'USA'},
                    {"userid" => 'sunday',
                      "password" => 'monday',
                      "firstname" => 'Surendra',
                      "lastname" => 'Asokan',
                      "email" => 'thursday@gmail.com',
                      "phone" => 4567893452,
                      "address1" => "east street",
                      "address2" => 'lewisroad',
                      "city" => 'chicago',
                      "state" => 'IL',
                      "zipcode" => 67890,
                      "country" => 'USA'},
                    {"userid" => 'sunday',
                     "password" => 'monday',
                     "firstname" => 'Adhava',
                     "lastname" => 'Moorthy',
                     "email" => 'thursday@gmail.com',
                     "phone" => 4567893452,
                     "address1" => "east street",
                     "address2" => 'lewisroad',
                     "city" => 'chicago',
                     "state" => 'IL',
                     "zipcode" => 67890,
                     "country" => 'USA'},
                    {"userid" => 'sunday',
                    "password" => 'monday',
                    "firstname" => 'Adhira',
                    "lastname" => 'Moorthy',
                    "email" => 'thursday@gmail.com',
                    "phone" => 4567893452,
                    "address1" => "east street",
                    "address2" => 'lewisroad',
                    "city" => 'chicago',
                    "state" => 'IL',
                    "zipcode" => 67890,
                    "country" => 'USA'}]


  end


end