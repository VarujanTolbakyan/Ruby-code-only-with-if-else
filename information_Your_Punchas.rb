END {
puts "Thank You"
}

puts "Your total amount: "
money = gets.to_f
puts

print "Book count: "
b_count = gets.to_i
print "Book price: "
b_price = gets.to_f
puts

print "Pencil count: "
p_count = gets.to_i
print "Pencil price: "
p_price = gets.to_f
puts

print "Pen count:  "
pen_count = gets.to_i
print "Pen price: "
pen_price = gets.to_f
puts

msg = ''

total_spend = b_count * b_price + p_count * p_price + pen_count * pen_price
if total_spend < money
  msg = "Do your purchas and Your unit will remain #{money - total_spend}"
else
  if b_price <= p_price && b_price <= pen_price
    msg = "You can buy #{b_count} book "
    if b_price * b_count <= money
      balance = money - b_price * b_count
      if balance >= p_price && balance >= pen_price && p_price <= pen_price
        if (balance / p_price).to_i <= p_count
          msg << "and #{(balance / p_price).to_i} pencil #{balance - (balance / p_price).to_i * p_price} unit will remain"
        else 
          if balance - p_price * p_count >= pen_price
            balance = balance - p_price * p_count
            msg << " and #{p_count} pencil  and #{(balance / pen_price).to_i} pen #{balance - (balance / pen_price).to_i * pen_price} unit will remain"
          else
            msg << " and #{p_count} pencil #{balance - p_price * p_count} unit will remain"
          end
        end
      elsif balance >= pen_price && balance >= p_price && pen_price <= p_price
        if (balance / pen_price).to_i <= pen_count 
          msg << "and #{(balance / pen_price).to_i} pen #{balance - (balance / pen_price).to_i * pen_price} unit will remain"
      	else
	        if balance - pen_price * pen_count >= p_price
            balance = balance - pen_price * pen_count
            msg << " and #{pen_count} pen  and #{(balance / p_price).to_i} pencil #{balance - (balance / p_price).to_i * p_price} unit will remain"
          else
	         msg << " and #{pen_count} pen #{balance - pen_price * pen_count} unit will remain"
          end
        end
      elsif balance < p_price && balance < pen_price
        msg << " and #{money - b_price * b_count} unit will remain"
      end
    else 
      msg = "You can buy #{(money / b_price).to_i} book and #{money - (money / b_price).to_i * b_price} unit will remain" 
    end
  elsif p_price <= b_price && p_price <= pen_price
    msg = "You can buy #{p_count} pencil "
    if p_price * p_count <= money
      balance = money - p_price * p_count
      if balance >= b_price && balance >= pen_price && b_price <= pen_price
        if (balance / b_price).to_i <= b_count
          msg << "and #{(balance / b_price).to_i} book #{balance - (balance / b_price).to_i * b_price} unit will remain"
        else
          if balance - b_price * b_count >= pen_price
            balance = balance - b_price * b_count
            msg << " and #{b_count} book  and #{(balance / pen_price).to_i} pen #{balance - (balance / pen_price).to_i * pen_price} unit will remain"
          elsif balance < p_price && balance < pen_price 
            msg << " and #{money - b_price * b_count} unit will remain"
          else
            msg << " and #{b_count} pencil #{balance - b_price * b_count} unit will remain"
          end
        end
      elsif balance >= pen_price && balance >= b_price && pen_price <= b_price
        if (balance / pen_price).to_i <= pen_count
          msg << "and #{(balance / pen_price).to_i} pen #{balance - (balance / pen_price).to_i * pen_price} unit will remain"
        else
          if balance - pen_price * pen_count >= b_price
            balance = balance - pen_price * pen_count
            msg << " and #{pen_count} pen  and #{(balance / b_price).to_i} book #{balance - (balance / b_price).to_i * b_price} unit will remain"
          else
           msg << " and #{pen_count} pen #{balance - pen_price * pen_count} unit will remain"
          end
        end
      elsif balance < b_price && balance < pen_price
        msg << " and #{money - p_price * p_count} unit will remain"
      end
    else
      msg = "You can buy #{(money / p_price).to_i} pencil and #{money - (money / p_price).to_i * p_price} unit will remain"
    end
  elsif pen_price <= b_price && pen_price <= p_price
    msg = "You can buy #{pen_count} pen "
    if pen_price * pen_count <= money
      balance = money - pen_price * pen_count
      if balance >= p_price && balance >= b_price && p_price <= b_price
        if (balance / p_price).to_i <= p_count
          msg << "and #{(balance / p_price).to_i} pencil #{balance - (balance / p_price).to_i * p_price} unit will remain"
        else
          if balance - p_price * p_count >= b_price
            balance = balance - p_price * p_count
            msg << " and #{p_count} pencil  and #{(balance / b_price).to_i} book #{balance - (balance / b_price).to_i * b_price} unit will remain"
          else
            msg << " and #{p_count} pencil #{balance - p_price * p_count} unit will remain"
          end
        end
      elsif balance >= b_price && balance >= p_price && b_price <= p_price
        if (balance / b_price).to_i <= b_count
          msg << "and #{(balance / b_price).to_i} book #{balance - (balance / b_price).to_i * b_price} unit will remain"
        else
          if balance - b_price * b_count >= p_price
            balance = balance - b_price * b_count
            msg << " and #{b_count} book  and #{(balance / p_price).to_i} pencil #{balance - (balance / p_price).to_i * p_count} unit will remain"
          else
           msg << " and #{b_count} book #{balance - b_price * b_count} unit will remain"
          end
        end
      elsif balance < p_price && balance < b_price
        msg << " and #{money - pen_price * pen_count} unit will remain"
      end
    else
      msg = "You can buy #{(money / pen_price).to_i} pen and #{money - (money / pen_price).to_i * pen_price} unit will remain"
    end
  end
end

puts msg

BEGIN {
puts "Hello\n"
}

