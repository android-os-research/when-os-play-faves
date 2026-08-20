.class public Lcom/samsung/ucm/ucmservice/UcmServiceUtil;
.super Ljava/lang/Object;
.source "UcmServiceUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UcmServiceUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 8

    const-string v0, "UcmServiceUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "Signature s1 is null"

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    if-nez p1, :cond_13

    const-string p0, "Signature s2 is null"

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 107
    :cond_13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 108
    array-length v3, p0

    move v4, v1

    :goto_1a
    if-ge v4, v3, :cond_24

    aget-object v5, p0, v4

    .line 109
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 111
    :cond_24
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 112
    array-length v3, p1

    move v4, v1

    :goto_2b
    if-ge v4, v3, :cond_35

    aget-object v5, p1, v4

    .line 113
    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 116
    :cond_35
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "  Signature match"

    .line 117
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_42
    const-string p0, "  Signature doesn\'t match"

    .line 120
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 9

    const-string v0, "isSystemApp exception e -"

    const-string v1, "UcmServiceUtil"

    const/4 v2, 0x0

    .line 81
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x40

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android"

    const/16 v3, 0x40

    invoke-virtual {p0, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p1, :cond_2a

    .line 87
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_2a

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_27} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2b

    if-eqz p0, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    return v2

    :catch_2b
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_3f
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static readIntFromFile(Ljava/lang/String;)I
    .registers 2

    .line 22
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 24
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    :catch_a
    return v0
.end method

.method public static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 33
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1d

    .line 34
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 35
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1d

    return-object p0

    :catchall_13
    move-exception p0

    .line 33
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1d} :catch_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :catch_21
    return-object v0
.end method

.method public static saveDataToFile([BLjava/lang/String;)Z
    .registers 4

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "UcmServiceUtil"

    if-eqz p1, :cond_18

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "failed to delete the existing file"

    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_18
    :try_start_18
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_2f

    .line 59
    :try_start_1d
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25

    .line 60
    :try_start_20
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2f

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    .line 58
    :try_start_26
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    const-string/jumbo p1, "saveDataToFile. write. IOException."

    .line 61
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static saveDataToFile([BLjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile([BLjava/lang/String;)Z

    move-result p0

    return p0
.end method
