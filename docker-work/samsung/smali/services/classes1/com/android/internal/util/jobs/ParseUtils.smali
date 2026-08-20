.class public final Lcom/android/internal/util/jobs/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .registers 5

    const-string/jumbo v0, "true"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "false"

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    return v2

    .line 96
    :cond_15
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public static parseDouble(Ljava/lang/String;D)D
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 82
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 70
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3

    const/16 v0, 0xa

    .line 32
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/jobs/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static parseIntWithBase(Ljava/lang/String;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 41
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p2
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .registers 4

    const/16 v0, 0xa

    .line 49
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/jobs/ParseUtils;->parseLongWithBase(Ljava/lang/String;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseLongWithBase(Ljava/lang/String;IJ)J
    .registers 4

    if-nez p0, :cond_3

    return-wide p2

    .line 58
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p2
.end method
