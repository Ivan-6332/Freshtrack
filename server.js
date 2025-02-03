const express = require("express");
const mysql = require('mysql');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    host: "localhost",
    user:"root",
    password:"",
    database:"signup"
})

app.post('/signup', (req, res) => {
    const sql = "INSERT INTO login (`firstName`, `lastName`, `email`, `password`, `district`, `province`) VALUES (?)";
    const values = [
        req.body.firstName,
        req.body.lastName,
        req.body.email,
        req.body.password,
        req.body.district,
        req.body.province
    ];
    db.query(sql, [values], (err, data) => {
        if(err){
            console.error("Database Error:", err);
            return res.json({ error: "Database Error", details: err });
        }
        return res.json(data);
    });
})

app.post('/login', (req, res) => {
    const sql = "SELECT *FROM login WHERE `email` = ? AND `password` = ?";
    db.query(sql, [req.body.email,req.body.password], (err, data) => {
        if(err){
            return res.json("Error");
        }
        if(data.length > 0) {
            return res.json("Success");
        }else {
            return res.json("Fail");
        }
    })
})

app.listen(8081, () => {
    console.log("listening")
})