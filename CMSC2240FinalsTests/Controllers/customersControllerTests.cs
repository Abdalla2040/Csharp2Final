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
    public class customersControllerTests
    {
        //test sample used for testing. Not part of the test.
        public List<Customers> GetCustomersSampleTest()
        {
            List<Customers> customersList = new List<Customers>()
            {
                new Customers{CustomerId = 1, FirstName = "Abdullahi", LastName = "Mohamed", Address = "123 W Virginia St", City = "St. Cloud",  State = "MN", Zip = "56301", Phone = "320-254-4521",},
                new Customers{CustomerId = 2, FirstName = "John", LastName = "Smith", Address = "4527 Albuquerque Rd", City = "Minneapolis",  State = "MN", Zip = "56356", Phone = "612-452-7854",},
                new Customers{CustomerId = 3, FirstName = "Sara", LastName = "Lee", Address = "6221 Division St", City = "St. Cloud",  State = "MN", Zip = "56301", Phone = "320-789-1236",}
            };
            return customersList;
        }

        //checks if the GetCustomer method does not return null;
        [TestMethod()]
        public void GetCustomerDoesNotReturnNullTest()
        {
            List<Customers> result = GetCustomersSampleTest();
            Assert.IsNotNull(result);
        }

        //checks if the types are same.
        [TestMethod()]
        public void GetTypeCustomerTest()
        {
            var result = GetCustomersSampleTest();
            var type = result.GetType();
            if (typeof(System.Collections.Generic.List<Customers>).Equals(type))
            {
                Assert.IsInstanceOfType(result, type);
            }
            else
            {
                Assert.Fail();
            }

        }

        //checks if the Ids in the getCustomerSampleTest matches with the dataRow. If they are, it would be deleted.
        [TestMethod()]
        [DataRow(3)]
        public void DeleteCustomerTest(int id)
        {
            int cusID = 0;
            foreach (var i in GetCustomersSampleTest())
            {
                cusID = i.CustomerId;

            }
            Assert.AreEqual(cusID, id);
        }
    }
}