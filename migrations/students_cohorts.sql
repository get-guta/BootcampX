CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  cohort_name VARCHAR(255) NOT NULL,
  cohort_start_date DATE,
  cohort_end_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  student_name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(32),
  githhub VARCHAR(255),
  cohort_start_date DATE,
  cohort_end_date DATE,
  cohort_id INTEGER References cohorts(id) ON DELETE CASCADE
);

