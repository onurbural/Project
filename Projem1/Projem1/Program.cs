using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Projem1.Models;

class Program
{
    static void Main()
    {
        var context = new onurContext();

        var query = context.Tableonurs.Select(x => new
        {
            AradakiFarkGun = (x.BaslangicZaman.ToDateTime(TimeOnly.MinValue) - x.KayitZamani).TotalDays,
            AradakiFarkSaat = (x.BaslangicSaat.ToTimeSpan() - x.KayitZamani.TimeOfDay).TotalHours
            //yukarıdaki sorgu sql e => SELECT [t].[BaslangicZaman], [t].[KayitZamani], [t].[BaslangicSaat], CONVERT(time, [t].[KayitZamani]) FROM[tableonur] AS[t] şeklinde convert ediliyor.
        });

        var sqlQuery = query.ToQueryString();

        int i = 1;
        foreach (var result in query)
        {
            i++;
            Console.WriteLine($" {i} Aradaki Fark (Gün): {result.AradakiFarkGun}");     

            Console.WriteLine($" {i} Aradaki Fark (Saat): {result.AradakiFarkSaat}");       

        }
    }
}