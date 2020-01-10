User.destroy_all 
Group.destroy_all 
Expense.destroy_all 


diego = User.create(first_name: 'Diego', last_name: 'Martinez', email: 'diego@mail.com', password: 'diego')
john = User.create(first_name: 'John', last_name: 'A', email: 'john@mail.com', password: 'diego')
muna = User.create(first_name: 'Muna', last_name: 'B', email: 'muna@mail.com', password: 'diego')
alex = User.create(first_name: 'Alex', last_name: 'C', email: 'alex@mail.com', password: 'diego')
nick = User.create(first_name: 'Nick', last_name: 'D', email: 'nick@mail.com', password: 'diego')
ruben = User.create(first_name: 'Ruben', last_name: 'E', email: 'ruben@mail.com', password: 'diego')


apartment = diego.groups.create(name:"Aparment")
cc = diego.groups.create(name: "Credit Cards")

Expense.create(name:"Electric", description:"ConEd", amount:"65.55", group: apartment)
Expense.create(name:"Cable", description:"Spectrum", amount:"100.22", group: apartment)
Expense.create(name:"iPhone", description:"Got new phone", amount:"900.33", group: cc)