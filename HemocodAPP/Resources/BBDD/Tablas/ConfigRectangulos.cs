using SQLite;

namespace HemocodAPP.Resources.BBDD
{
    public class ConfigRectangulos
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Hospital { get; set; }
        public string Elemento { get; set; }
        public float Left { get; set; }
        public float Top { get; set; }
        public float Right { get; set; }
        public float Bottom { get; set; }
    }
}