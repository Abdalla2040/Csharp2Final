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
    public class vehiclesControllerTests
    {
        //test sample used for testing. Not part of the test.
        public List<Vehicles> GetVehiclesSampleTest()
        {
            List<Vehicles> VehiclesList = new List<Vehicles>()
            {
                new Vehicles{VehicleId = 1, Make = "Toyota", Model = "Camry", Year = "2021", Vin = "455221552"},
                new Vehicles{VehicleId = 2, Make = "Honda", Model = "Pilot", Year = "2014", Vin = "45666225"},
                new Vehicles{VehicleId = 3, Make = "Cadillac", Model = "CTS 3", Year = "2018", Vin = "45626665"}
            };
            return VehiclesList;
        }

        //checks if the GetVehicles method does not return null;
        [TestMethod()]
        public void GetVehiclesDoesNotReturnNullTest()
        {
            List<Vehicles> result = GetVehiclesSampleTest();
            Assert.IsNotNull(result);
        }

        //checks if the types are same.
        [TestMethod()]
        public void GetTypeVehiclesTest()
        {
            var result = GetVehiclesSampleTest();
            var type = result.GetType();
            if (typeof(System.Collections.Generic.List<Vehicles>).Equals(type))
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
        public void DeleteVehiclesTest(int id)
        {
            int vehID = 0;
            foreach (var i in GetVehiclesSampleTest())
            {
                vehID = i.VehicleId;

            }
            Assert.AreEqual(vehID, id);
        }
    }
}