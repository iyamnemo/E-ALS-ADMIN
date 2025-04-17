const express = require('express');
const router = express.Router();

const logTeacherActivity = (db, teacherId, action, details = null) => {
  const sql = 'INSERT INTO teacher_activity_log (teacher_id, action, timestamp, details) VALUES (?, ?, NOW(), ?)';
  db.query(sql, [teacherId, action, JSON.stringify(details)], (err, result) => {
    if (err) {
      console.error('Error logging teacher activity:', err);
    }
  });
};

module.exports = (db) => {
  // Get all teachers
  router.get('/', (req, res) => {
    db.query('SELECT * FROM teachers', (err, results) => {
      if (err) return res.status(500).send(err);
      res.json(results);
    });
  });

  // Get the total number of teachers
  router.get('/count', (req, res) => {
    db.query('SELECT COUNT(*) AS total FROM teachers', (err, results) => {
      if (err) return res.status(500).send(err);
      res.json({ count: results[0].total }); 
    });
  });

  // Add a new teacher
  router.post('/', (req, res) => {
    const {
      email,
      first_name,
      middle_name,
      last_name,
      date_of_birth,
      sex,
      contact_number,
      address,
      bachelors_degree,
      masters_degree,
      doctorate_degree,
      bachelors_school,
      masters_school,
      doctorate_school,
      password,
      teacher_id
    } = req.body;
    const sql = 'INSERT INTO teachers (teacher_id, email, first_name, middle_name, last_name, date_of_birth, sex, contact_number, address, bachelors_degree, masters_degree, doctorate_degree, bachelors_school, masters_school, doctorate_school, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
    db.query(sql, [
      teacher_id,
      email,
      first_name,
      middle_name,
      last_name,
      date_of_birth,
      sex,
      contact_number,
      address,
      bachelors_degree,
      masters_degree,
      doctorate_degree,
      bachelors_school,
      masters_school,
      doctorate_school,
      password
    ], (err, result) => {
      if (err) return res.status(500).send(err);
      const newTeacher = {
        id: result.insertId,
        teacher_id,
        email,
        first_name,
        middle_name,
        last_name,
        date_of_birth,
        sex,
        contact_number,
        address,
        bachelors_degree,
        masters_degree,
        doctorate_degree,
        bachelors_school,
        masters_school,
        doctorate_school,
        password
      };
      logTeacherActivity(db, teacher_id, 'add', { name: `${first_name} ${last_name}`, details: newTeacher });
      res.json(newTeacher);
    });
  });

  // Update a teacher
  router.put('/:id', (req, res) => {
    const { id } = req.params;
    const {
      email,
      first_name,
      middle_name,
      last_name,
      date_of_birth,
      sex,
      contact_number,
      address,
      bachelors_degree,
      masters_degree,
      doctorate_degree,
      bachelors_school,
      masters_school,
      doctorate_school,
      password,
      teacher_id
    } = req.body;
    const sql = 'UPDATE teachers SET teacher_id = ?, email = ?, first_name = ?, middle_name = ?, last_name = ?, date_of_birth = ?, sex = ?, contact_number = ?, address = ?, bachelors_degree = ?, masters_degree = ?, doctorate_degree = ?, bachelors_school = ?, masters_school = ?, doctorate_school = ?, password = ? WHERE id = ?';
    db.query(sql, [
      teacher_id,
      email,
      first_name,
      middle_name,
      last_name,
      date_of_birth,
      sex,
      contact_number,
      address,
      bachelors_degree,
      masters_degree,
      doctorate_degree,
      bachelors_school,
      masters_school,
      doctorate_school,
      password,
      id
    ], (err, result) => {
      if (err) return res.status(500).send(err);
      const updatedTeacher = {
        id,
        teacher_id,
        email,
        first_name,
        middle_name,
        last_name,
        date_of_birth,
        sex,
        contact_number,
        address,
        bachelors_degree,
        masters_degree,
        doctorate_degree,
        bachelors_school,
        masters_school,
        doctorate_school,
        password
      };
      logTeacherActivity(db, teacher_id, 'update', { name: `${first_name} ${last_name}`, details: updatedTeacher });
      res.json(updatedTeacher);
    });
  });

  // Delete a teacher
  router.delete('/:id', (req, res) => {
    const { id } = req.params;
    // First, get the teacher's information for logging
    db.query('SELECT * FROM teachers WHERE id = ?', [id], (err, results) => {
      if (err) {
        console.error('Error fetching teacher for deletion log:', err);
      }
      const teacherToDelete = results[0];
      const sql = 'DELETE FROM teachers WHERE id = ?';
      db.query(sql, [id], (err, result) => {
        if (err) return res.status(500).send(err);
        if (teacherToDelete) {
          logTeacherActivity(db, teacherToDelete.teacher_id, 'delete', { name: `${teacherToDelete.first_name} ${teacherToDelete.last_name}` });
        }
        res.json({ message: 'Teacher deleted' });
      });
    });
  });

  return router;
};