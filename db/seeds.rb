User.destroy_all 
Group.destroy_all 
Expense.destroy_all 
Groupshare.destroy_all


diego = User.create(first_name: 'Diego', last_name: 'Martinez', email: 'diego@mail.com', password: 'diego')
ashley = User.create(first_name: 'Ashley', last_name: 'A', email: 'ashley@mail.com', password: 'diego')
muna = User.create(first_name: 'Muna', last_name: 'B', email: 'muna@mail.com', password: 'diego')
alex = User.create(first_name: 'Alex', last_name: 'C', email: 'alex@mail.com', password: 'diego')
nick = User.create(first_name: 'Nick', last_name: 'D', email: 'nick@mail.com', password: 'diego')
ruben = User.create(first_name: 'Ruben', last_name: 'E', email: 'ruben@mail.com', password: 'diego')

apartment = Group.create(name:"Aparment")
cc = Group.create(name:"Credit Cards")
roadtrip = Group.create(name:"Roadtrip - Canada")
bootcamp = Group.create(name:"Bootcamp")

diego.groupshares.create(group:apartment)
diego.groupshares.create(group:cc)
muna.groupshares.create(group:bootcamp)
ashley.groupshares.create(group: apartment)


Expense.create(name:"Electric", description:"ConEd", amount:"65.55", group: apartment)
Expense.create(name:"Cable", description:"Spectrum", amount:"100.22", group: apartment)
Expense.create(name:"iPhone", description:"Got new phone", amount:"900.33", group: cc)
Expense.create(name:"iPhone", description:"Got new phone", amount:"800.93", group: bootcamp)


