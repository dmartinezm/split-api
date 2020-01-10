User.destroy_all 
Group.destroy_all 
Expense.destroy_all 


diego = User.create(first_name: 'Diego', last_name: 'Martinez', email: 'diego@mail.com', password: 'diego')

apartment = diego.groups.create(name:"Aparment")
cc = diego.groups.create(name: "Credit Cards")

Expense.create(name:"Electric", description:"ConEd", amount:"65.55", group: apartment)
Expense.create(name:"Cable", description:"Spectrum", amount:"100.22", group: apartment)
Expense.create(name:"iPhone", description:"Got new phone", amount:"900.33", group: cc)