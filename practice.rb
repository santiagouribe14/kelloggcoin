# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

ben=0
for transaction1 in blockchain
  if transaction1["to_user"] == "ben"
    ben=ben+transaction1["amount"]
  end
  if transaction1["from_user"] == "ben"
    ben=ben-transaction1["amount"]
  end
end
puts "Ben's KelloggCoin balance is #{ben}"

brian=0
for transaction2 in blockchain
  if transaction2["to_user"] == "brian"
    brian=brian+transaction2["amount"]
  end
  if transaction2["from_user"] == "brian"
    brian=brian-transaction2["amount"]
  end
end
puts "Brian's KelloggCoin balance is #{brian}"

evan=0
for transaction3 in blockchain
  if transaction3["to_user"] == "evan"
    evan=evan+transaction3["amount"]
  end
  if transaction3["from_user"] == "evan"
    evan=evan-transaction3["amount"]
  end
end
puts "Evan's KelloggCoin balance is #{evan}"

anthony=0
for transaction4 in blockchain
  if transaction4["to_user"] == "anthony"
    anthony=anthony+transaction4["amount"]
  end
  if transaction4["from_user"] == "anthony"
    anthony=anthony-transaction4["amount"]
  end
end
puts "Anthony's KelloggCoin balance is #{anthony}"
