const express = require('express');
const router = express.Router();

module.exports = (db) => {
  router.get('/teachers', (req, res) => {
    const sql = 'SELECT id, action, timestamp, details FROM teacher_activity_log ORDER BY timestamp DESC';
    db.query(sql, (err, results) => {
      if (err) {
        console.error('Error fetching teacher activity log:', err);
        return res.status(500).json({ error: 'Failed to fetch activity log' });
      }
      res.json(results);
    });
  });

  router.delete('/teachers/clear', (req, res) => {
    const sql = 'DELETE FROM teacher_activity_log';
    db.query(sql, (err, result) => {
      if (err) {
        console.error('Error clearing teacher activity log:', err);
        return res.status(500).json({ error: 'Failed to clear activity log' });
      }
      res.json({ message: 'Teacher activity log cleared successfully' });
    });
  });

  router.delete('/teachers/:logId', (req, res) => {
    const { logId } = req.params;
    const sql = 'DELETE FROM teacher_activity_log WHERE id = ?';
    db.query(sql, [logId], (err, result) => {
      if (err) {
        console.error(`Error deleting activity log with ID ${logId}:`, err);
        return res.status(500).json({ error: `Failed to delete activity log with ID ${logId}` });
      }
      if (result.affectedRows > 0) {
        res.json({ message: `Activity log with ID ${logId} deleted successfully` });
      } else {
        res.status(404).json({ message: `Activity log with ID ${logId} not found` });
      }
    });
  });

  return router;
};