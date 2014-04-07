Sequel.migration do
  change do
    puts "Creating users..."
		create_table :users do
		  primary_key :id
		  String :name, :null => false
		  String :last_name, :null => false
		  String :email, :null => false
		  String :nick_name, :null => false
		  String :password
		end
  end
end