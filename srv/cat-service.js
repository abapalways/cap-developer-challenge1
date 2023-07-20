const cds = require('@sap/cds')

module.exports = function (){
this.on ( 'CREATE','Holes', (req)=>{
     const holeinfo = req.data
     if (holeinfo.score  - holeinfo.par == -3)
        holeinfo.result = 'albatross'
        if (holeinfo.score  - holeinfo.par == -1)
        holeinfo.result = 'birdie'

        return next();
})



}