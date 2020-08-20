var db = require('./db');

module.exports =
{

	get: function(id, callback){
		var sql = "select * from login where id=?";
		db.getResults(sql,[id], function(result){
			if(result.length > 0){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},
	  getUserByUsername: function(username, callback){
		var sql = "select * from login where username=?";
		db.getResults(sql,[username], function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},

	getAll: function(callback){
		var sql = "select * from login";
		db.getResults(sql, null,function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},

	validate: function(user, callback){
		var sql = "select * from login where username=? and password=?";
		db.getResults(sql, [user.username, user.password], function(result){
			if(result.length > 0){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	// viewprofile: function( callback){
	// 	var sql = "select * from login";
	// 	db.getResults(sql, null,function(result){
	// 		if(result.length > 0){
	// 			callback(result);
	// 		}else{
	// 			callback([]);
	// 		}
	// 	});
	// },
	viewprofile: function( username, callback){
		var sql = "select * from login where username=?";
		db.getResults(sql, [username],function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},
	insert: function(user, callback){
		var sql = "insert into login values(?,?, ?, ?, ?)";

		db.execute(sql, ['', user.username, user.password,user.email, user.type], function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

	update: function(user, callback){
		var sql = "update login set username=?, password=?,email=?, type=? where id=?";
		db.execute(sql, [user.username, user.password,user.email, user.type, user.id], function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

	delete: function(id, callback){
		var sql = "delete from login where id=?";
		db.execute(sql, [id], function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});

	},
	getAlltutor: function(callback){
		var sql = "select * from tutor";
		db.getResults(sql, null,function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},
	getpackages: function(callback){
		var sql = "select * from packages";
		db.getResults(sql, null,function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},
	blog: function(user, callback){
		var sql = "insert into blog values(?,?, ?, ?)";

		db.execute(sql, ['', user.author, user.articlename, user.article], function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	readblog: function( callback){
		var sql = "select * from blog";
		db.getResults(sql, null,function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},
	tutorials: function( callback){
		var sql = "select * from tutorials";
		db.getResults(sql, null,function(result){
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},
		
	contact: function(user, callback){
		var sql = "insert into contact values(?,?, ?)";

		db.execute(sql, ['', user.email, user.message], function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
}