
exports.upload = (req,res,next)->
  res.render 'image/upload', {
    title : "Image test"
  }
