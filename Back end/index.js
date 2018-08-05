let express = require ('express');
let sqlite = require('sqlite');
let Promise = require('bluebird');
let bodyParser = require('body-parser');
let app = express();

app.use( bodyParser.json() );       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
    extended: false}));

app.use (express.static('./Back end/web'));
app.listen(9090);
app.all('/Back end',(req, res)=>{
    res.sendFile(__dirname +'/Back end/views/index.html');
});

const dbPromise = Promise.resolve()
    .then(() => sqlite.open('./Back end/database.sqlite', { Promise }))
    .then(db => db.migrate({ force: 'last' }));


