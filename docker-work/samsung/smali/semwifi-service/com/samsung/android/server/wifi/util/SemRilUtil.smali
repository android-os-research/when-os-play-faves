.class public Lcom/samsung/android/server/wifi/util/SemRilUtil;
.super Ljava/lang/Object;
.source "SemRilUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemRilUtil"

.field private static sIsWifiOnly:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .registers 4

    .line 31
    sget p0, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_3c

    const-string p0, "ro.carrier"

    const-string v2, "Unknown"

    .line 32
    invoke-static {p0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "wifi-only"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    const-string p0, "ro.radio.noril"

    const-string v2, "no"

    .line 33
    invoke-static {p0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "yes"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_33

    .line 37
    :cond_30
    sput v0, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    goto :goto_3c

    :cond_33
    :goto_33
    const-string p0, "SemRilUtil"

    const-string v2, "Wi-Fi Only Model"

    .line 34
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sput v1, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    .line 40
    :cond_3c
    :goto_3c
    sget p0, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    if-ne p0, v1, :cond_41

    move v0, v1

    :cond_41
    return v0
.end method
