using SQLite;

namespace HemocodAPP.Resources.BBDD.Tablas
{
    public class ConfigRecortes
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Hospital { get; set; }
        public string Elemento { get; set; }
        public int Width { get; set; }
        public int Height { get; set; }
        public int X { get; set; }
        public int Y { get; set; }
    }
}