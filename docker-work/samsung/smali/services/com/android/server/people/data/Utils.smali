.class public Lcom/android/server/people/data/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "country_detector"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    if-eqz p0, :cond_15

    .line 36
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 38
    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    if-nez p0, :cond_20

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method
