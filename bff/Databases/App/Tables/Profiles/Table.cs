using System.ComponentModel.DataAnnotations.Schema;

namespace BFF.Databases.App.Tables.Profiles;

[Table("profiles", Schema = "journal")]
public class Table
{
    public Guid Id { get; set; }

    public string? Name { get; set; }

    public string? Email { get; set; }

    public string? PhoneNumber { get; set; }

    public string? ProfilePicture { get; set; }
}
