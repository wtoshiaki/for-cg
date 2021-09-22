FactoryBot.define do
  factory :condition do
    confirmer_name                     {"田中"}
    care_user_name                     {"齋藤"}
    get_up_id                          {1}
    breakfast_id                       {1}
    first_dentifrice_id                {1}
    first_toilet_id                    {1}
    lunch_id                           {1}
    second_dentifrice_id               {1} 
    second_toilet_id                   {1} 
    dinner_id                          {1} 
    third_dentifrice_id                {1}
    third_toilet_id                    {1}
    bath_id                            {1}
    sleep_check_id                     {1}
    state                              {"問題なし"}
    association :user
    association :room
    
  end
end
