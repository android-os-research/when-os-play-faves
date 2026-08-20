.class public Lcom/samsung/android/game/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static csvToInts(Ljava/lang/String;)[I
    .registers 5
    .param p0, "csv"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "ints":[I
    if-eqz p0, :cond_31

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 55
    :try_start_b
    const-string v2, "\\s+"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "valueTextArray":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [I

    move-object v0, v2

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    .line 59
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_2b

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 63
    .end local v1    # "valueTextArray":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2a
    goto :goto_31

    .line 61
    :catch_2b
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static csvToStringHashSet(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5
    .param p0, "csv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "retSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/samsung/android/game/Util;->csvToStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 81
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 83
    :cond_11
    return-object v0
.end method

.method public static csvToStringList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "csv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/samsung/android/game/Util;->csvToStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    :cond_b
    return-object v0
.end method

.method public static csvToStrings(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "csv"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "strings":[Ljava/lang/String;
    if-eqz p0, :cond_17

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 72
    const-string v2, "\\s+"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_17
    return-object v0
.end method

.method public static getCategoryString(I)Ljava/lang/String;
    .registers 3
    .param p0, "categoryCode"    # I

    .line 22
    packed-switch p0, :pswitch_data_26

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_17
    const-string v0, "S"

    return-object v0

    .line 32
    :pswitch_1a
    const-string v0, "T"

    return-object v0

    .line 26
    :pswitch_1d
    const-string v0, "G"

    return-object v0

    .line 30
    :pswitch_20
    const-string v0, "N"

    return-object v0

    .line 24
    :pswitch_23
    const-string v0, "U"

    return-object v0

    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static getDateFormattedTime(J)Ljava/lang/String;
    .registers 5
    .param p0, "timeMillis"    # J

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 97
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHMSFormattedTime(J)Ljava/lang/String;
    .registers 13
    .param p0, "timeMillis"    # J

    .line 105
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 106
    .local v0, "timeSec":J
    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    div-long/2addr v4, v2

    .line 107
    .local v4, "h":J
    div-long v6, v0, v2

    rem-long/2addr v6, v2

    .line 108
    .local v6, "m":J
    rem-long v2, v0, v2

    .line 110
    .local v2, "s":J
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string v9, "%d:%02d:%02d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 165
    const-wide/16 v0, -0x1

    .line 166
    .local v0, "versionCode":J
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 167
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_31

    .line 169
    const/16 v3, 0x80

    :try_start_a
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_14

    move-wide v0, v3

    .line 172
    goto :goto_31

    .line 170
    :catch_14
    move-exception v3

    .line 171
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageVersionCode(). NameNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Util"

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_31
    :goto_31
    return-wide v0
.end method

.method public static isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 194
    const-string v0, "isPkgEnabled(), "

    const-string v1, "Util"

    const/4 v2, 0x0

    .line 195
    .local v2, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 196
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_5b

    if-eqz p1, :cond_5b

    .line 198
    const/16 v4, 0x80

    :try_start_f
    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 199
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_1a

    .line 200
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move v2, v5

    .line 201
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_32

    const-string v6, "enabled"

    goto :goto_34

    :cond_32
    const-string v6, "disabled"

    :goto_34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_3f} :catch_40

    .line 204
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_5b

    .line 202
    :catch_40
    move-exception v4

    .line 203
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " does not exist. "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5b
    :goto_5b
    return v2
.end method

.method public static isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 178
    const-string v0, "isPkgInstalled(), "

    const-string v1, "Util"

    const/4 v2, 0x0

    .line 179
    .local v2, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 180
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_4a

    if-eqz p1, :cond_4a

    .line 182
    const/16 v4, 0x80

    :try_start_f
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_2c} :catch_2e

    .line 184
    const/4 v2, 0x1

    .line 188
    goto :goto_4a

    .line 185
    :catch_2e
    move-exception v4

    .line 186
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " does not exist. "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x0

    .line 190
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4a
    :goto_4a
    return v2
.end method

.method public static stringHashSetToCsv(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 40
    .local p0, "stringHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 46
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 48
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "ret":Z
    if-eqz p1, :cond_d

    .line 116
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/game/Util;->writeFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 118
    :cond_d
    return v0
.end method

.method public static writeFile(Ljava/lang/String;[B)Z
    .registers 10
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "b"    # [B

    .line 122
    const-string v0, "writeFile(), finally Exception : "

    const/4 v1, 0x0

    const-string v2, "Util"

    if-eqz p0, :cond_156

    if-nez p1, :cond_b

    goto/16 :goto_156

    .line 126
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFile(), pathname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "ret":Z
    const/4 v4, 0x0

    .line 131
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_31
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_43

    goto :goto_72

    .line 138
    :cond_43
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v1

    .line 139
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 141
    const/4 v3, 0x1

    .line 142
    const-string v1, "writeFile(), write file success"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_55} :catch_10e
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_55} :catch_e5
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_55} :catch_bc
    .catchall {:try_start_31 .. :try_end_55} :catchall_b9

    .line 154
    .end local v5    # "file":Ljava/io/File;
    nop

    .line 155
    :try_start_56
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5b

    .line 159
    :cond_59
    :goto_59
    goto/16 :goto_137

    .line 157
    :catch_5b
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    goto/16 :goto_137

    .line 133
    .restart local v5    # "file":Ljava/io/File;
    :cond_72
    :goto_72
    :try_start_72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeFile(), file.exists(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", file.canWrite(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {v2, v6}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_9a} :catch_10e
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_9a} :catch_e5
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_9a} :catch_bc
    .catchall {:try_start_72 .. :try_end_9a} :catchall_b9

    .line 135
    nop

    .line 154
    if-eqz v4, :cond_b7

    .line 155
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_b7

    .line 157
    :catch_a1
    move-exception v6

    .line 158
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 159
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_b7
    :goto_b7
    nop

    .line 135
    :goto_b8
    return v1

    .line 153
    .end local v5    # "file":Ljava/io/File;
    :catchall_b9
    move-exception v1

    goto/16 :goto_138

    .line 149
    :catch_bc
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    :try_start_bd
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeFile(), IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_bd .. :try_end_d6} :catchall_b9

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_59

    .line 155
    :try_start_d8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_dd

    goto/16 :goto_59

    .line 157
    :catch_dd
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_61

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e5
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_e6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeFile(), NullPointerException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_ff
    .catchall {:try_start_e6 .. :try_end_ff} :catchall_b9

    .line 154
    .end local v1    # "e":Ljava/lang/NullPointerException;
    if-eqz v4, :cond_59

    .line 155
    :try_start_101
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_104} :catch_106

    goto/16 :goto_59

    .line 157
    :catch_106
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_61

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_10e
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_10f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeFile(), FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_128
    .catchall {:try_start_10f .. :try_end_128} :catchall_b9

    .line 154
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_59

    .line 155
    :try_start_12a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12d} :catch_12f

    goto/16 :goto_59

    .line 157
    :catch_12f
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_61

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_137
    return v3

    .line 154
    :goto_138
    if-eqz v4, :cond_154

    .line 155
    :try_start_13a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13d} :catch_13e

    goto :goto_154

    .line 157
    :catch_13e
    move-exception v5

    .line 158
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_155

    .line 159
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_154
    :goto_154
    nop

    .line 160
    :goto_155
    throw v1

    .line 123
    .end local v3    # "ret":Z
    .end local v4    # "fos":Ljava/io/OutputStream;
    :cond_156
    :goto_156
    const-string v0, "writeFile(), pathname or content is null"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v1
.end method
