const fs = require('fs');



const fileContents = fs.readFileSync('./source.java').toString()



for (let i = 0; i < 10000; i++) {
    
        fs.appendFileSync ('target.java', fileContents);
        console.log(i)
    
      
  }

