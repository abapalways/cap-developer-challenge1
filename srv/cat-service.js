const cds = require('@sap/cds')

module.exports = function (){
this.on ( 'CREATE','Holes', (req,next)=>{
     const holeinfo = req.data
     console.log('I am here');
     console.log(holeinfo.score);
     console.log(holeinfo.par);
     if (holeinfo.score  - holeinfo.par == -3)
        holeinfo.result = 'albatross'
     if (holeinfo.score  - holeinfo.par == -1)
        holeinfo.result = 'birdie'     
     return next();
})



}