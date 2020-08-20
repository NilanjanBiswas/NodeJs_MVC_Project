var express = require('express');
var userModel = require.main.require('./models/user');
var router = express.Router();

router.get('*', function(req, res,next) {

    if (req.session.username == null) {
        res.redirect('/login');
    } else {
        next();
    }
});



router.get('/', function(req, res){
	res.render('tutor/', {username: req.session.username,});
});


// router.get('/create', function(req, res) {
//     res.render('tutor/create', {username: req.session.username, });
// });


router.get('/create/:username', function(req, res) {

  userModel.getone(req.params.username, function(result){
      res.render('tutor/create', {user: result});
  });
});


router.post('/create/:username', function(req, res) {

    var user = {
        id       :req.body.id,
        name : req.body.name,
        subject   : req.body.subject,
        activestatus :req.body.activestatus
    }

    userModel.inserttuor(user, function(status) {
        if (status) {
            res.redirect('/tutor');
        } else {
            res.redirect('/tutor/create/:usernamer');
        }
    });
});




// router.get('/update', function(req, res){
//
//     userModel.get(req.params.id, function(result){
//         res.render('tutor/update', {id:req.session.id, username: req.session.username, email: req.session.email, password: req.session.password, });
//     });
//
// })



router.get('/profile/:username', function(req, res){

  userModel.getone(req.params.username, function(result){
      res.render('tutor/profile', {user: result});
  });

})

router.get('/view_students', function(req, res) {

    userModel.getAllStudent(function(results) {
        res.render('tutor/view_students', { userList: results, username: req.session.username });
    });
});







router.get('/update/:username', function(req, res) {

  userModel.getone(req.params.username, function(result){
      res.render('tutor/update', {user: result});
  });
});

router.post('/update/:username', function(req, res){

  var user = {

    id               :req.params.id,
    username         :req.body.username,
    password         :req.body.password,
    email            :req.body.email,
    type             :req.body.type,


    }

    userModel.updatetutor(user, function(status){
        if(status){
            res.redirect('/tutor/profile/'+req.params.username);
        }else{
            res.redirect('/tutor/update'+req.params.username);
        }
    });
});

router.get('/contact/:username', function(req, res){

  userModel.getone(req.params.username, function(result){
      res.render('tutor/contact', {user: result});
  });

})
router.post('/contact/:username', function(req, res) {

    var user = {
        id:req.body.id,
        username: req.body.username,
        email: req.body.email,
        contact: req.body.contact
    }

    userModel.insertContact(user, function(status) {
        if (status) {
            res.redirect('/tutor');
        } else {
            res.redirect('/tutor/contact/'+req.params.username);
        }
    });
});

// router.post('/signup', function(req, res) {
//
//     var user = {
//         username: req.body.username,
//         password: req.body.password,
//         email: req.body.email,
//         type: req.body.type
//     }
//
//     userModel.insert(user, function(status) {
//         if (status) {
//             res.redirect('/login');
//         } else {
//             res.redirect('/signup');
//         }
//     });
// });
// router.get('/readblog', function(req, res){
// 	res.render('tutor/readblog',{username: req.session.username,});
// });

router.get('/readblog', function(req, res) {

    userModel.getAllblog(function(results) {
        res.render('tutor/readblog', { userList: results, username: req.session.username });
    });
});







//write Blog
router.get('/writeblog', function(req, res){
	res.render('tutor/writeblog',{username: req.session.username,});
});

router.post('/writeblog', function(req, res) {

    var user = {

        username: req.body.username,
        name: req.body.name,
        article: req.body.article
    }

    userModel.insertblog(user, function(status) {
        if (status) {
            res.redirect('/tutor/readblog');
        } else {
            res.redirect('/tutor/writeblog');
        }
    });
});

module.exports = router;
