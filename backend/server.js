const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const mysql = require('mysql2');
const app = express();

// Middleware
app.use(cors());
app.use(bodyParser.json());

// MySQL connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'try_eals',
});

// Connect to MySQL
db.connect((err) => {
  if (err) throw err;
  console.log('Connected to MySQL');
});

// Teacher routes
const teacherRoutes = require('./routes/teacherRoutes');
app.use('/api/teachers', teacherRoutes(db));

// Student routes
const studentRoutes = require('./routes/studentRoutes');
app.use('/api/students', studentRoutes(db));

// Activity Log routes
const activityLogRoutes = require('./routes/activityLogRoutes');
app.use('/api/activity-log', activityLogRoutes(db)); 

// Login route
app.post('/login', (req, res) => {
  const { username, password } = req.body;

  const sql = 'SELECT * FROM users WHERE username = ? AND password = SHA2(?, 256)';
  db.query(sql, [username, password], (err, result) => {
    if (err) return res.status(500).send(err);

    if (result.length > 0) {
      res.json({ success: true });
    } else {
      res.json({ success: false });
    }
  });
});

app.listen(3001, () => {
  console.log('Server running on http://localhost:3001');
});