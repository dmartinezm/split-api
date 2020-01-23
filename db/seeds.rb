User.destroy_all 
Group.destroy_all 
Expense.destroy_all 
Groupshare.destroy_all


diego = User.create(first_name: 'Diego', last_name: 'Martinez', email: 'diego', password: 'd')
ashley = User.create(first_name: 'Ashley', last_name: 'A', email: 'ashley', password: 'd')
muna = User.create(first_name: 'Muna', last_name: 'B', email: 'muna', password: 'd')
alex = User.create(first_name: 'Alex', last_name: 'C', email: 'alex', password: 'd')
nick = User.create(first_name: 'Nick', last_name: 'D', email: 'nick', password: 'd')
ruben = User.create(first_name: 'Ruben', last_name: 'E', email: 'ruben', password: 'd')

apartment = Group.create(name:"Aparment")
cc = Group.create(name:"Credit Cards")
roadtrip = Group.create(name:"Roadtrip - Canada")
bootcamp = Group.create(name:"Bootcamp")

diego.groupshares.create(group:apartment)
diego.groupshares.create(group:cc)
muna.groupshares.create(group:bootcamp)
ashley.groupshares.create(group: apartment)

diego.friends.push(ashley)
diego.friends.push(muna)

Expense.create(user_id: diego.id, name:"Electric", description:"ConEd", amount:"65.55", group: apartment)
Expense.create(user_id: diego.id, name:"Cable", description:"Spectrum", amount:"100.22", group: apartment)
Expense.create(user_id: muna.id, name:"iPhone", description:"Got new phone", amount:"900.33", group: cc)
Expense.create(user_id: ashley.id, name:"iPhone", description:"Got new phone", amount:"800.93", group: bootcamp)


