class Library
  def self.people
    (1..20).to_a.map do |el|
      { name: "Nastia Random#{el}", job: "Teacher#{el}", text: "#{el}: Хочу Вам висловити свою подяку, так як терміново знадобилася квартира у Львові вперше і квартира була хорошою, ставлення до клієнта відмінне" }
    end
  end
end