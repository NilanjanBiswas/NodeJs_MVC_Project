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
router.get('/profile/:username', function(req, res) {

    userModel.viewprofile(req.params.username, function(results) {
        res.render('student/profile', { userList: results});
    });
});

router.get('/', function(req, res){
	res.render('student/index', {username: req.session.username});
});


router.get('/alltutor', function(req, res) {

    userModel.getAlltutor(function(results) {
        res.render('student/alltutor', { userList: results});
    });
});
router.get('/packages', function(req, res) {

    userModel.getpackages(function(results) {
        res.render('student/packages', { userList: results });
    });
});
router.get('/blog', function(req, res){
    
	res.render('student/blog', {username: req.session.username});
});


router.post('/blog', function(req, res) {

    var user = {
        author: req.body.author,
        articlename: req.body.articlename,
        article: req.body.article
    }

    userModel.blog(user, function(status) {
        if (status) {
            res.redirect('/student');
        } else {
            res.redirect('/student/blog');
        }
    });
});

router.get('/rblog', function(req, res) {

    userModel.readblog(function(results) {
        res.render('student/rblog', { userList: results});
    });
});
router.get('/tutorials', function(req, res) {

    userModel.tutorials(function(results) {
        res.render('student/tutorials', { userList: results});
    });
});
router.get('/contact', function(req, res){
    
	res.render('student/contact');
});


router.post('/contact', function(req, res) {

    var user = {
        email: req.body.email,
        message: req.body.message
      
    }
    userModel.contact(user, function(status) {
        if (status) {
            res.redirect('/student');
        } else {
            res.redirect('/student/contact');
        }
    });
});
router.get('/update/:id', function(req, res){

    userModel.get(req.params.id, function(result){
        res.render('student/update', {user: result});
    });

});

router.post('/update/:id', function(req, res){

  var user = {

    id               :req.params.id,
    username         :req.body.username,
    password         :req.body.password,
    email            :req.body.email,
    type             :req.body.type,


    }


userModel.update(user, function(status){
    if(status){
        res.redirect('/student');
    }else{
        res.redirect('/user/Profile/'+req.params.id);
    }
});
});


router.get('/delete/:id', function(req, res) {

    userModel.get(req.params.id, function(result) {
        res.render('student/delete', { user: result });
    });

});

router.post('/delete/:id', function(req, res) {

    userModel.delete(req.body.id, function(status) {
        if (status) {
            res.redirect('/');
        } else {
            res.redirect('/student');
        }
    });
});
module.exports = router;