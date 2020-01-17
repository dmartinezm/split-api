class UserGroup < ApplicationRecord
    def self.all
        p = ActiveRecord::Base.connection.execute("select * from groups inner join groupshares on groupshares.group_id=groups.id")
        h = {}
        p.map{|v| v}
        
    end
end
