using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SchoolDB {
    public partial class Form1 :Form {
        public Form1() {
            InitializeComponent();
            SetupData();
        }
        BackgroundWorker bw;

        private void SetupData() {
            StatusLabel.Text = "Status: Setting up data please wait";
            bw = new BackgroundWorker();
            bw.DoWork += Bw_DoWork;
            bw.RunWorkerCompleted += Bw_RunWorkerCompleted;
            bw.RunWorkerAsync();
        }
        private void Bw_DoWork(object sender, DoWorkEventArgs e) {
            try {
                using(var ctx = new SchoolDBContainer()) {
                    if(!ctx.Lecturers.Any()) {
                        var lecturers = new List<Lecturer>() {
                            new Lecturer() {
                                Id = 1,
                                Name = "Some lecturer 1",
                                Education = "M.Tech",
                                Student = new Student() { 
                                    Name = "some student 1",
                                    Age = "21",
                                    Id = 1,
                                    MobileNumber = "12"
                                },
                                Subject = new Subject() {
                                    Id = 1,
                                    Name = "Some subject",
                                    Course = new Course() {
                                        Id = 1,
                                        Name = "Some Course",
                                    }
                                }
                            },
                            new Lecturer() {
                                Id = 2,
                                Name = "Some lecturer 2",
                                Education = "M.Tech",
                                Student = new Student() { 
                                    Name = "some student 1",
                                    Age = "21",
                                    Id = 1,
                                    MobileNumber = "12"
                                },
                                Subject = new Subject() {
                                    Id = 1,
                                    Name = "Some subject",
                                    Course = new Course() {
                                        Id = 1,
                                        Name = "Some Course",
                                    }
                                }
                            },
                        };
                        ctx.Lecturers.AddRange(lecturers);
                    }
                    ctx.SaveChanges();
                    e.Result = "Ready";
                }
            }
            catch(Exception ex) {
                e.Result = ex.Message;
            }
        }

        private void Bw_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e) {
            StatusLabel.Text = e.Result.ToString();
        }

        private void showStudents_Click(object sender, EventArgs e) {
            using(var ctx = new SchoolDBContainer()) {
                var students = from s in ctx.Students
                               select new {s.Id, s.Name, s.MobileNumber, };
                MessageBox.Show(students.First().ToString());
            }
        }

        private void showTeachers_Click(object sender, EventArgs e) {
            using(var ctx = new SchoolDBContainer()) {
                var lecturers = from l in ctx.Lecturers
                                select new {l.Id, l.Name, l.Education };
                MessageBox.Show(lecturers.First().ToString());
            }

        }

        private void showCourses_Click(object sender, EventArgs e) {
            using(var ctx = new SchoolDBContainer()) {
                var courses = from c in ctx.Courses
                              select new {c.Id, c.Name };
                MessageBox.Show(courses.First().ToString());
            }

        }
    }
}
