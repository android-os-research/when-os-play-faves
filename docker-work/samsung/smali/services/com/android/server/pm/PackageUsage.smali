.class public Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/android/server/pm/PackageSetting;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field public static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"


# instance fields
.field public mIsHistoricalPackageUsageAvailable:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string/jumbo v0, "package-usage.list"

    const-string v1, "PackageUsage_DiskWriter"

    const/4 v2, 0x1

    .line 46
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    iput-boolean v2, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return-void
.end method


# virtual methods
.method public isHistoricalPackageUsageAvailable()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return p0
.end method

.method public final parseAsLong(Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p0

    .line 176
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a long."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 38
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->readInternal(Ljava/util/Map;)V

    return-void
.end method

.method public readInternal(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    :try_start_5
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_40
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_37
    .catchall {:try_start_5 .. :try_end_e} :catchall_35

    .line 99
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    goto :goto_29

    :cond_1a
    const-string v3, "PACKAGE_USAGE__VERSION_1"

    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 105
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    goto :goto_29

    .line 107
    :cond_26
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/pm/PackageUsage;->readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_29} :catch_33
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_29} :catch_30
    .catchall {:try_start_e .. :try_end_29} :catchall_2d

    .line 114
    :goto_29
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_46

    :catchall_2d
    move-exception p0

    move-object v1, v2

    goto :goto_47

    :catch_30
    move-exception p0

    move-object v1, v2

    goto :goto_38

    :catch_33
    move-object v1, v2

    goto :goto_40

    :catchall_35
    move-exception p0

    goto :goto_47

    :catch_37
    move-exception p0

    :goto_38
    :try_start_38
    const-string p1, "PackageManager"

    const-string v0, "Failed to read package usage times"

    .line 112
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_40
    :goto_40
    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_35

    .line 114
    :goto_43
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_46
    return-void

    :goto_47
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 115
    throw p0
.end method

.method public final readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 181
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuilder;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readToken(Ljava/io/InputStream;Ljava/lang/StringBuilder;C)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 186
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 188
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1b

    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_13
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    if-ne p0, p3, :cond_22

    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    int-to-char p0, p0

    .line 198
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public final readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-eqz p4, :cond_4e

    const-string v0, " "

    .line 125
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    const/4 p4, 0x0

    .line 131
    aget-object v1, v0, p4

    .line 132
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-nez v1, :cond_18

    goto :goto_2d

    :cond_18
    const/4 v2, 0x1

    .line 137
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1f
    const/16 v0, 0x8

    if-ge p4, v0, :cond_2d

    .line 141
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0, p4, v2, v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1f

    .line 124
    :cond_2d
    :goto_2d
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 127
    :cond_32
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as package-timestamp pair."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    return-void
.end method

.method public final readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, " "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_32

    const/4 v0, 0x0

    .line 157
    aget-object v2, v1, v0

    .line 158
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_1d

    goto :goto_0

    :cond_1d
    :goto_1d
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    .line 166
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v5, v1, v4

    .line 167
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 166
    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move v0, v4

    goto :goto_1d

    .line 154
    :cond_32
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as a timestamp array."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    return-void
.end method

.method public bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 38
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->writeInternal(Ljava/util/Map;)V

    return-void
.end method

.method public writeInternal(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 58
    :try_start_4
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_a2

    .line 59
    :try_start_8
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a0

    const/16 v4, 0x3e8

    const/16 v5, 0x408

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_USAGE__VERSION_1"

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 68
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v4, :cond_42

    .line 69
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    if-eqz v5, :cond_42

    .line 70
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_65

    goto :goto_42

    :cond_65
    const/4 v5, 0x0

    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v4

    .line 75
    array-length v6, v4

    :goto_79
    if-ge v5, v6, :cond_88

    aget-wide v7, v4, v5

    const/16 v9, 0x20

    .line 77
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 80
    :cond_88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_42

    .line 83
    :cond_99
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 84
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_9f} :catch_a0

    goto :goto_b0

    :catch_a0
    move-exception p1

    goto :goto_a4

    :catch_a2
    move-exception p1

    const/4 v0, 0x0

    :goto_a4
    if-eqz v0, :cond_a9

    .line 87
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_a9
    const-string p0, "PackageManager"

    const-string v0, "Failed to write package usage times"

    .line 89
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b0
    return-void
.end method
