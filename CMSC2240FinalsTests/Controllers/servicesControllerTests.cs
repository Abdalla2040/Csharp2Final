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
    public class servicesControllerTests
    {
        //test sample used for testing. Not part of the test.
        public List<Services> GetServicesSampleTest()
        {
            List<Services> ServicesList = new List<Services>()
            {
                new Services{ServiceId = 1, Name = "Oil Change", Description = "Oil changed."},
                new Services{ServiceId = 2, Name = "Tire Change", Description = "Tire change."},
                new Services{ServiceId = 3, Name = "Maintenace", Description = "check light fixed."}
            };
            return ServicesList;
        }

        //checks if the GetVehicles method does not return null;
        [TestMethod()]
        public void GetServicesDoesNotReturnNullTest()
        {
            List<Services> result = GetServicesSampleTest();
            Assert.IsNotNull(result);
        }

        //checks if the types are same.
        [TestMethod()]
        public void GetTypeVehiclesTest()
        {
            var result = GetServicesSampleTest();
            var type = result.GetType();
            if (typeof(System.Collections.Generic.List<Services>).Equals(type))
            {
                Assert.IsInstanceOfType(result, type);
            }
            else
            {
                Assert.Fail();
            }

        }

        //checks if the Ids in the getVehiclesSampleTest matches with the dataRow. If they are, it would be deleted.
        [TestMethod()]
        [DataRow(3)]
        public void DeleteServicesTest(int id)
        {
            int serID = 0;
            foreach (var i in GetServicesSampleTest())
            {
                serID = i.ServiceId;

            }
            Assert.AreEqual(serID, id);
        }
    }
}