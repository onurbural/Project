﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace Projem1.Models;

public partial class KayitBilgileri
{
    public int Id { get; set; }

    public string İsim { get; set; }

    public DateOnly BaslangicZaman { get; set; }

    public DateTime KayitZamani { get; set; }

    public TimeOnly BaslangicSaat { get; set; }
}