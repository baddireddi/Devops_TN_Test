const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Backend Service is Running'));
app.listen(5000, () => console.log('Backend running on port 5000'));