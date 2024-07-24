using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Projem1.Models;

class Program
{
    static void Main()
    {
        var context = new KayitBilgileriContext();

        var query = context.KayitBilgileris.Select(x => new
        {
            AradakiFarkGun = (x.BaslangicZaman.ToDateTime(TimeOnly.MinValue) - x.KayitZamani).TotalDays,
            AradakiFarkSaat = (x.BaslangicSaat.ToTimeSpan() - x.KayitZamani.TimeOfDay).TotalHours
            //yukarıdaki sorgu sql e => SELECT [t].[BaslangicZaman], [t].[KayitZamani], [t].[BaslangicSaat], CONVERT(time, [t].[KayitZamani]) FROM[tableonur] AS[t] şeklinde sql query'e çevriliyor.
        });

        var sqlQuery = query.ToQueryString();

        int i = 1;
        foreach (var result in query)
        {
            Console.WriteLine($" {i} Aradaki Fark (Gün): {result.AradakiFarkGun}");     
            Console.WriteLine($" {i} Aradaki Fark (Saat): {result.AradakiFarkSaat}");
            i++;

        }
    }
}