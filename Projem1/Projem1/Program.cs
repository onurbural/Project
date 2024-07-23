using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Projem1.Models;

class Program
{
    static void Main()
    {
        var context = new onurContext();

        var query = context.Tableonurs.Where(x=>x.Id<3).Select(x => new
        {
            AradakiFark = (x.BaslangicZaman.ToDateTime(TimeOnly.MinValue) - x.KayitZamani).TotalDays
        });

        var sqlQuery = query.ToQueryString();

        foreach (var result in query)
        {
            Console.WriteLine(result.AradakiFark);
        }
    }
}
