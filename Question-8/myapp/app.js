const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

let isReady = false;

app.get('/', (req, res) => {
    res.send('Hello from Node.js app!');
});

// Liveness Probe
app.get('/health', (req, res) => {
    res.status(200).send('OK');
});

// Readiness Probe
app.get('/ready', (req, res) => {
    if (isReady) {
        res.status(200).send('Ready');
    } else {
        res.status(503).send('Not Ready');
    }
});

// Simulate readiness after 10 seconds
setTimeout(() => {
    isReady = true;
    console.log('Application is now ready!');
}, 10000);

app.listen(port, () => {
    console.log(`App running on port ${port}`);
});
