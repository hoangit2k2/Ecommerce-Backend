const express = require("express");
const router = express.Router()
const PostsController = require('../controllers/PostsController');
const { authMiddlleware } = require("../middleware/authMiddleware");


router.post('/create', PostsController.createPosts)
router.get('/get-all', PostsController.getAllPosts)
router.get('/get-details/:id', PostsController.getDetailsPosts)
router.delete('/delete/:id',authMiddlleware, PostsController.deletePosts)
router.post('/delete-many',authMiddlleware, PostsController.deleteMany)
// router.delete('/delete/:id', PostsController.deletePosts)
// router.post('/delete-many', PostsController.deleteMany)




module.exports = router