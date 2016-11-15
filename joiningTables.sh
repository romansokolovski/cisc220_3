#!/bin/bash

#sort all files before joining
awk 'NR > 1' courses.txt | sort > coursesSorted
awk 'NR > 1' Students.txt | sort > studentsSorted
awk 'NR > 1' students_courses.txt | sort > i


#join index with students then join with courses, could be done  vice versa
join studentsSorted i | awk '{print $3 " " $1 " " $2}' | sort > twoJoin
join twoJoin coursesSorted > finalTable

#  prints out the student name and course name.
echo "StudentName CourseName"
awk '{print $3 " " $4}' finalTable | sort



