const express = require('express');

function studentRoutes(db) {
  const router = express.Router();

  // Get all students
  router.get('/', (req, res) => {
    const sql = 'SELECT * FROM student_info';
    db.query(sql, (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json(results);
    });
  });

  // Get the total number of students
  router.get('/count', (req, res) => {
    const sql = 'SELECT COUNT(*) AS total FROM student_info';
    db.query(sql, (err, results) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ count: results[0].total }); 
    });
  });

  return router;
}

module.exports = studentRoutes;