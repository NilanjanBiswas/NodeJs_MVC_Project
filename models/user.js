var db = require('./db');

module.exports =
{

	get: function(id, callback){
		var sql = "select * from login where id="+id;
		db.getResults(sql, function(result){
			if(result.length > 0){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},

	getAll: function(callback){
		var sql = "select * from login";
		db.getResults(sql, function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},

	validate: function(user, callback){
		var sql = "select * from login where username='"+user.username+"' and password='"+user.password+"'";
		db.getResults(sql, function(result){
			if(result.length > 0){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

	insert: function(user, callback){
		var sql = "insert into  login values('', '"+user.username+"', '"+user.password+"','"+user.email+"', '"+user.type+"')";

		console.log(sql);

		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

	update: function(user, callback){
		var sql = "update login set values('', '"+user.username+"', '"+user.password+"','"+user.email+"', '"+user.type+"') where id="+id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

	delete: function(id, callback){
		var sql = "delete from login where id="+id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	}
}
