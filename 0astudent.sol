// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    
    // Structure to store student info
    struct Student {
        string name;
        uint256 rollNo;
        uint8 age;
    }

    // Dynamic array to store students
    Student[] public students;

    // Add student to array
    function addStudent(string memory _name, uint256 _rollNo, uint8 _age) public {
        students.push(Student(_name, _rollNo, _age));
    }

    // Get total number of students
    function getStudentCount() public view returns (uint256) {
        return students.length;
    }

    // Fallback function (gets called when no function matches)
    fallback() external payable {
        // Just accepts ether sent accidentally
    }

    // Receive function to accept ether directly
    receive() external payable {}
}
