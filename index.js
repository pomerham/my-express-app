const express = require('express')
const app = express()

app.get('/', (req, res) => {
<<<<<<< HEAD
  res.send('<h1>Hello World!v2</h1>')
=======
  res.send('<h1>Hello World!v1</h1>')
>>>>>>> 17c91bde966950b5e4252da30e4b4f6a94b8ae58
})

const PORT = 8080

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
