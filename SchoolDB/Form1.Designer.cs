
namespace SchoolDB {
    partial class Form1 {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if(disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.showStudents = new System.Windows.Forms.Button();
            this.showTeachers = new System.Windows.Forms.Button();
            this.showCourses = new System.Windows.Forms.Button();
            this.StatusLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // showStudents
            // 
            this.showStudents.Location = new System.Drawing.Point(24, 74);
            this.showStudents.Name = "showStudents";
            this.showStudents.Size = new System.Drawing.Size(138, 41);
            this.showStudents.TabIndex = 0;
            this.showStudents.Text = "Show students";
            this.showStudents.UseVisualStyleBackColor = true;
            this.showStudents.Click += new System.EventHandler(this.showStudents_Click);
            // 
            // showTeachers
            // 
            this.showTeachers.Location = new System.Drawing.Point(207, 74);
            this.showTeachers.Name = "showTeachers";
            this.showTeachers.Size = new System.Drawing.Size(138, 41);
            this.showTeachers.TabIndex = 1;
            this.showTeachers.Text = "Show Teachers";
            this.showTeachers.UseVisualStyleBackColor = true;
            this.showTeachers.Click += new System.EventHandler(this.showTeachers_Click);
            // 
            // showCourses
            // 
            this.showCourses.Location = new System.Drawing.Point(386, 74);
            this.showCourses.Name = "showCourses";
            this.showCourses.Size = new System.Drawing.Size(138, 41);
            this.showCourses.TabIndex = 2;
            this.showCourses.Text = "Show Courses";
            this.showCourses.UseVisualStyleBackColor = true;
            this.showCourses.Click += new System.EventHandler(this.showCourses_Click);
            // 
            // StatusLabel
            // 
            this.StatusLabel.AutoSize = true;
            this.StatusLabel.Location = new System.Drawing.Point(21, 169);
            this.StatusLabel.Name = "StatusLabel";
            this.StatusLabel.Size = new System.Drawing.Size(52, 17);
            this.StatusLabel.TabIndex = 3;
            this.StatusLabel.Text = "Status:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(564, 218);
            this.Controls.Add(this.StatusLabel);
            this.Controls.Add(this.showCourses);
            this.Controls.Add(this.showTeachers);
            this.Controls.Add(this.showStudents);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button showStudents;
        private System.Windows.Forms.Button showTeachers;
        private System.Windows.Forms.Button showCourses;
        private System.Windows.Forms.Label StatusLabel;
    }
}

