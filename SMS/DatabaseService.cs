using System;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS
{
    public class DatabaseService
    {
        private readonly string _connectionString;

        public DatabaseService(string connectionString)
        {
            _connectionString = connectionString;
        }

        public async Task<DataTable> GetDataAsync()
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync();
                using (SqlCommand command = new SqlCommand("SELECT ContactNo, LEN(REPLACE(ContactNo, '-', '')) AS ContactLength, PartyName FROM Parties WHERE LEN(REPLACE(ContactNo, '-', '')) = 11  AND REPLACE(ContactNo, '-', '') LIKE '03%';", connection))
                {
                    using (SqlDataReader reader = await command.ExecuteReaderAsync())
                    {
                        DataTable dataTable = new DataTable();
                        dataTable.Load(reader);
                        return dataTable;
                    }
                }
            }
        }
    }
}
