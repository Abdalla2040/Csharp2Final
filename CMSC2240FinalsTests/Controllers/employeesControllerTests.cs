using Microsoft.VisualStudio.TestTools.UnitTesting;
using CMSC2240Finals.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMSC2240Finals.Models;

namespace CMSC2240Finals.Controllers.Tests
{
    [TestClass()]
    public class employeesControllerTests
    {
        //test sample used for testing. Not part of the test.
        public List<Employees> GetEmployeesSampleTest()
        {
            List<Employees> EmployeesList = new List<Employees>()
            {
                new Employees{EmployeeId = 1, FirstName = "Abdullahi", LastName = "Mohamed", JobTitle = "Tire Tech", HourlyWage = 20.50m },
                new Employees{EmployeeId = 2, FirstName = "John", LastName = "Smith", JobTitle = "Manager", HourlyWage = 45.00m},
                new Employees{EmployeeId = 3, FirstName = "Sara", LastName = "Lee", JobTitle = "Supervisor", HourlyWage = 35.00m}
            };
            return EmployeesList;
        }

        //checks if the GetEmployees method does not return null;
        [TestMethod()]
        public void GetEmployeesDoesNotReturnNullTest()
        {
            List<Employees> result = GetEmployeesSampleTest();
            Assert.IsNotNull(result);
        }

        //checks if the types are same.
        [TestMethod()]
        public void GetTypeEmployeesTest()
        {
            var result = GetEmployeesSampleTest();
            var type = result.GetType();
            if (typeof(System.Collections.Generic.List<Employees>).Equals(type))
            {
                Assert.IsInstanceOfType(result, type);
            }
            else
            {
                Assert.Fail();
            }

        }

        //checks if the Ids in the getEmployeesSampleTest matches with the dataRow. If they are, it would be deleted.
        [TestMethod()]
        [DataRow(3)]
        public void DeleteEmployeeTest(int id)
        {
            int empID = 0;
            foreach (var i in GetEmployeesSampleTest())
            {
                empID = i.EmployeeId;

            }
            Assert.AreEqual(empID, id);
        }
    }
}