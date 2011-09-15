Given /^I have a list "([^"]*)" with the following items:$/ do |list_name, table|
  list = List.create!(:name=>list_name)
  table.hashes.each do |row|
    ListItem.create! row.merge({:list=>list})
  end
end

When /^I drag item "([^"]*)" to the top of the list$/ do |item_name|
  list = List.last
  item_to_drag = list.list_items.find_by_name(item_name)
  top_of_list_item = list.list_items.first

  dom_to_drag = page.find("##{dom_id item_to_drag}")
  top_of_list_dom = page.find("##{dom_id top_of_list_item}")

  dom_to_drag.drag_to(top_of_list_dom)

end

Then /^the list "([^"]*)" should have the following items:$/ do |list_name, table|
  list = List.find_by_name(list_name)
  table.hashes.each do |row|
    list.list_items.exists?(row).should==true
  end
end

