# Initialize arrays for inventory items and quantities
inventory_items <- character(0)
inventory_qty <- numeric(0)

# Function to add a new item with quantity
add_item <- function(item, qty) {
  inventory_items <<- c(inventory_items, item)
  inventory_qty <<- c(inventory_qty, qty)
  cat("Item added to inventory.\n")
}

# Function to update quantity of an existing item
update_qty <- function(item, new_qty) {
  if (item %in% inventory_items) {
    item_index <- which(inventory_items == item)
    inventory_qty[item_index] <<- new_qty
    cat("Quantity updated.\n")
  } else {
    cat("Item not found in inventory.\n")
  }
}

# Function to display inventory
display_inventory <- function() {
  cat("Inventory Items and Quantities:\n")
  for (i in 1:length(inventory_items)) {
    cat(sprintf("%s: %d\n", inventory_items[i], inventory_qty[i]))
  }
}

# Function to remove item from inventory
remove_item <- function(item) {
  if (item %in% inventory_items) {
    item_index <- which(inventory_items == item)
    inventory_items <<- inventory_items[-item_index]
    inventory_qty <<- inventory_qty[-item_index]
    cat("Item removed from inventory.\n")
  } else {
    cat("Item not found in inventory.\n")
  }
}

# Main program
while (TRUE) {
  cat("\n1. Add Item\n2. Update Quantity\n3. Display Inventory\n4. Remove Item\n5. Exit\n")
  choice <- as.integer(readline("Enter choice: "))
  
  if (choice == 1) {
    item <- readline("Enter item name: ")
    qty <- as.integer(readline("Enter quantity: "))
    add_item(item, qty)
  } else if (choice == 2) {
    item <- readline("Enter item name: ")
    new_qty <- as.integer(readline("Enter new quantity: "))
    update_qty(item, new_qty)
  } else if (choice == 3) {
    display_inventory()
  } else if (choice == 4) {
    item <- readline("Enter item name: ")
    remove_item(item)
  } else if (choice == 5) {
    cat("Exiting the program. Goodbye!\n")
    break
  } else {
    cat("Invalid choice. Please try again.\n")
  }
}