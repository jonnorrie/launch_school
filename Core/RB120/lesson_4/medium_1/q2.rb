#Alan created the following code to keep track of items for a shopping cart application he's writing:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

#Alyssa looked at the code and spotted a mistake. "This will fail when update_quantity is called", she says.

#Can you spot the mistake and how to address it?

# on line 13, `quantity` needs an @ in front of it to reference the instance variable. without it, we are referencing a getter method, and assigning it a value, which will return an error