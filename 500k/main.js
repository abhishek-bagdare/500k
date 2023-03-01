const fs = require('fs');



const fileContents = fs.readFileSync('./source.swift').toString()



for (let i = 0; i < 100; i++) {
    
        fs.appendFileSync ('target.swift', fileContents);
        console.log(i)
    
      
  }

