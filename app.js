const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello Prashanth Dussa, you did a great job creating this pipeline!');
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
