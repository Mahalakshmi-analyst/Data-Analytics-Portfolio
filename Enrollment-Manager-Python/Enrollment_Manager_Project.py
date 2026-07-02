import random
import pandas as pd
from datetime import datetime, timedelta
import os

# ================== AI SETUP ==================
try:
    from groq import Groq
    client = Groq(api_key=os.getenv("GROQ_API_KEY"))
except:
    client = None


# ================== STUDENT ==================
class Admission:
    def __init__(self, roll, name, age, mobile, email):
        self.roll = roll
        self.name = name
        self.age = age
        self.mobile = mobile
        self.email = email
        self.enroll_date = datetime.now().strftime("%Y-%m-%d")  
        self.courses = []
        self.status = "Enquiry"

    def add_course(self, course, teacher, paid=0):
        total = 50000
        status = "Confirmed" if paid >= total else "Pending"
        self.courses.append({
            "course": course.title(),
            "teacher": teacher,
            "paid": paid,
            "total": total,
            "status": status
        })
        self.update_status() 

    def update_status(self):
        if any(c["status"] == "Confirmed" for c in self.courses):
            self.status = "Enrolled"
        elif self.courses:
            self.status = "Pending"
        else:
            self.status = "Enquiry"


# ================== MANAGER ==================
class AdmissionManager:
    def __init__(self):
        self.students = []
        self.used_rolls = set()
        self.load_data()

    def generate_roll(self):
        while True:
            r = random.randint(10, 99)
            if r not in self.used_rolls:
                self.used_rolls.add(r)
                return r

    def load_data(self):
        names = [
            "Rahul Sharma","Anita Verma","Kiran Rao","Sneha Iyer","Amit Patel",
            "Pooja Mehta","Vikas Singh","Neha Gupta","Arjun Nair","Meena Das",
            "Suresh Kumar","Kavya Reddy","Rohit Jain","Divya Malhotra","Manoj Joshi",
            "Akash Yadav","Priya Shah","Nikhil Mehta","Ritu Agarwal","Sameer Khan"
        ]
        courses = ["Python","AI","ML","Data Science","Web Dev"]
        teachers = ["Mahalakshmi","Divyam","Gayathri","Chandu","Priya"]

        for i in range(15):
            s = Admission(
                self.generate_roll(),
                names[i],
                random.randint(20, 23),
                str(random.randint(9000000000, 9999999999)),
                names[i].split()[0].lower() + "@gmail.com"
            )
            s.add_course(courses[i % 5], teachers[i % 5], 50000)
            self.students.append(s)

        for i in range(15, 19):
            s = Admission(
                self.generate_roll(),
                names[i],
                random.randint(21, 24),
                str(random.randint(9000000000, 9999999999)),
                names[i].split()[0].lower() + "@gmail.com"
            )
            s.add_course(courses[i % 5], teachers[i % 5], 20000)
            self.students.append(s)

      
        self.students.append(
            Admission(
                self.generate_roll(),
                names[19],
                23,
                str(random.randint(9000000000, 9999999999)),
                names[19].split()[0].lower() + "@gmail.com"
            )
        )

    def find(self, roll):
        return next((s for s in self.students if s.roll == roll), None)

    # ================== ADD / UPDATE ==================
    def add_update(self):
        try:
            roll = int(input("Roll No: "))
        except ValueError:
            print("❌ Invalid roll number")
            return

        s = self.find(roll)

        if not s:
            try:
                name = input("Name: ")
                age = int(input("Age: "))
                mobile = input("Mobile: ")
                email = input("Email: ")
            except ValueError:
                print("❌ Invalid input")
                return

            s = Admission(roll, name, age, mobile, email)
            self.students.append(s)
            self.used_rolls.add(roll)
            print("✅ New admission created")
        else:
            print("ℹ️ Student already exists")

            if input("Update personal details? (y/n): ").lower() == "y":
                try:
                    s.name = input("Name: ")
                    s.age = int(input("Age: "))
                    s.mobile = input("Mobile: ")
                    s.email = input("Email: ")
                except ValueError:
                    print("❌ Invalid input")
                    return
                print("✅ Personal details updated")

        if input("Add / Update course? (y/n): ").lower() == "y":
            course = input("Course: ")
            teacher = input("Teacher: ")
            paid = float(input("Fees Paid (₹): "))

            existing = next(
                (c for c in s.courses if c["course"].lower() == course.lower()),
                None
            )

            if existing:
                existing["paid"] += paid
                if existing["paid"] >= existing["total"]:
                    existing["status"] = "Confirmed"
                print("✅ Course updated")
            else:
                s.add_course(course, teacher, paid)
                print("✅ New course added")

        s.update_status()

    def update_fees(self): 
        roll = int(input("Roll No: ")) 
        s = self.find(roll) 
        if not s or not s.courses: 
            print("No course found") 
            return 
        for c in s.courses: 
            print(f"{c['course']} | Paid ₹{c['paid']} / ₹{c['total']}") 
            course_name = input("Course: ").lower() 
            course = next(c for c in s.courses if c["course"].lower() == course_name) 
            amt = float(input("Add amount (₹): ")) 
            course["paid"] += amt 
            if course["paid"] >= course["total"]: 
                course["status"] = "Confirmed" 
                s.update_status() 
                print("✅ Fees updated") 

    def delete(self): 
        roll = int(input("Roll No: ")) 
        s = self.find(roll) 
        if s: 
            self.students.remove(s) 
            print("✅ Deleted") 
        else: 
            print("Not found")

    # ================== DATA ==================
    def to_dataframe(self):
        rows = []
        for s in self.students:
            for c in s.courses or [{}]:
                rows.append({
                    "Roll": s.roll,
                    "Name": s.name,
                    "Status": s.status,
                    "Course": c.get("course"),
                    "Teacher": c.get("teacher"),
                    "Paid": c.get("paid", 0),
                    "Total": c.get("total", 0)
                })
        return pd.DataFrame(rows)

    def view_all(self):
        df = self.to_dataframe()
        print(df.to_string(index=False))

    def fees_numpy_summary(self):
        df = self.to_dataframe()
        print("Total Collected ₹", df["Paid"].sum())
        print("Total Pending   ₹", (df["Total"] - df["Paid"]).sum())

    def export_csv(self):
        self.to_dataframe().to_csv("admissions.csv", index=False)
        print("📁 CSV Exported")

    def confirmed(self):
        df = self.to_dataframe()
        df = df[df["Paid"] >= df["Total"]]
        print(df[["Name","Course","Teacher"]].to_string(index=False))

    def ask_ai(self):
        df = self.to_dataframe()
        q = input("Ask Data Insight: ").lower()

        if "pending" in q:
            print("₹ Pending =", (df["Total"] - df["Paid"]).sum())
        elif "best teacher" in q or "most confirmed" in q:
            print(df[df["Paid"] >= df["Total"]].groupby("Teacher").size().idxmax())
        elif "average" in q:
            print(df.groupby("Course")["Paid"].mean())
        else:
            print("Try objective questions related to dataset.")


# ================== MAIN ==================
m = AdmissionManager()

while True:
    print("""
1. Add / Update Admission 
2. Update Fees 
3. Delete Admission 
4. View All 
5. Confirmed Admissions 
6. Fees Analysis 
7. Export CSV 
8. Dataset Insights 
9. Course Advisor (AI) 
10. Exit
""")

    ch = input("Choice: ")

    if ch == "1": m.add_update() 
    elif ch == "2": m.update_fees() 
    elif ch == "3": m.delete() 
    elif ch == "4": m.view_all() 
    elif ch == "5": m.confirmed() 
    elif ch == "6": m.fees_numpy_summary() 
    elif ch == "7": m.export_csv() 
    elif ch == "8": m.ask_ai() 
    elif ch == "9": m.course_advisor() 
    elif ch == "10": break 
    else: print("❌ Invalid choice")
