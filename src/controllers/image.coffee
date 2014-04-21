
exports.upload = (req,res,next)->
  res.render 'image/upload', {
    title : "Image test"
  }

exports.save = (req,res,next)->
  id = req.params.id?.toLowerCase() || req.body.id?.toLowerCase()
  picfrom = req.params.picfrom || "ios"
  now = new Date

  if req.files? and req.files.image? and req.files.image.path?
    info = {
      email:id, 
      avatar:{
        picpath : req.files.image.path, 
        type : picfrom, 
        contentType: req.files.type
      },
      createdate: now
    }
    res.send 200,info 
  else
    console.log req
    res.send 500,req.files
