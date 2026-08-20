.class public final Lcom/android/internal/util/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static blacklist parseBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .line 90
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 91
    return v1

    .line 93
    :cond_b
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 94
    return v2

    .line 96
    :cond_15
    invoke-static {p0, p1}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method public static blacklist parseDouble(Ljava/lang/String;D)D
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # D

    .line 78
    if-nez p0, :cond_3

    .line 79
    return-wide p1

    .line 82
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 83
    :catch_8
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static blacklist parseFloat(Ljava/lang/String;F)F
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # F

    .line 66
    if-nez p0, :cond_3

    .line 67
    return p1

    .line 70
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 71
    :catch_8
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static blacklist parseInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .line 32
    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static blacklist parseIntWithBase(Ljava/lang/String;II)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "base"    # I
    .param p2, "defValue"    # I

    .line 37
    if-nez p0, :cond_3

    .line 38
    return p2

    .line 41
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    .line 42
    :catch_8
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static blacklist parseLong(Ljava/lang/String;J)J
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .line 49
    const/16 v0, 0xa

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/ParseUtils;->parseLongWithBase(Ljava/lang/String;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist parseLongWithBase(Ljava/lang/String;IJ)J
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "base"    # I
    .param p2, "defValue"    # J

    .line 54
    if-nez p0, :cond_3

    .line 55
    return-wide p2

    .line 58
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    .line 59
    :catch_8
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method
