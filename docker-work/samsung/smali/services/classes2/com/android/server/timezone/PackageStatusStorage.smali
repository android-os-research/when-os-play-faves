.class public final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field public static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field public static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field public static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field public static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field public static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field public static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field public static final UNKNOWN_PACKAGE_VERSION:J = -0x1L


# instance fields
.field public final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-status.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "timezone-status"

    invoke-direct {v0, v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 383
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 381
    :cond_b
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getNullableIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_18

    .line 367
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    .line 370
    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 366
    :cond_18
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " missing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_34} :catch_34

    .line 372
    :catch_34
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad integer for attributeName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static parseToPackageStatusTag(Ljava/io/FileInputStream;)Landroid/util/TypedXmlPullParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    :try_start_1
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    .line 272
    :cond_5
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    .line 273
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    const-string v1, "PackageStatus"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p0

    .line 278
    :cond_1c
    new-instance p0, Ljava/text/ParseException;

    const-string v1, "Unable to find PackageStatus tag"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_24} :catch_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_24} :catch_24

    :catch_24
    move-exception p0

    .line 282
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Error reading XML"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 283
    invoke-virtual {p0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 284
    throw v1

    :catch_30
    move-exception p0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to configure parser"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public deleteFileForTests()V
    .registers 2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 103
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_11
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 358
    :try_start_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    goto :goto_18

    :catch_11
    move-exception p1

    .line 356
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 358
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_f

    throw p1
.end method

.method public generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .registers 5

    if-eqz p1, :cond_3c

    .line 180
    monitor-enter p0

    .line 183
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_7} :catch_a
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    goto :goto_17

    :catchall_8
    move-exception p1

    goto :goto_3a

    :catch_a
    move-exception v0

    :try_start_b
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Unable to find optimistic lock ID from package status"

    .line 185
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_8

    :goto_17
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    .line 194
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 193
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 200
    new-instance v0, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v0, v1, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_29} :catch_33
    .catchall {:try_start_1a .. :try_end_29} :catchall_8

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_8

    return-object v0

    .line 197
    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_8

    :catch_33
    move-exception p1

    .line 202
    :try_start_34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 204
    :goto_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_8

    throw p1

    .line 177
    :cond_3c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "currentInstalledVersions == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCurrentOptimisticLockId()I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_23

    .line 257
    :try_start_6
    invoke-static {p0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const-string/jumbo v1, "optimisticLockId"

    .line 258
    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_17

    if-eqz p0, :cond_16

    .line 259
    :try_start_13
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_23

    :cond_16
    return v0

    :catchall_17
    move-exception v0

    if-eqz p0, :cond_22

    .line 256
    :try_start_1a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p0

    :try_start_1f
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_23

    :catch_23
    move-exception p0

    .line 260
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "Unable to read file"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {v0, p0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 262
    throw v0
.end method

.method public getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .registers 4

    .line 111
    monitor-enter p0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_9
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    :try_start_5
    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    goto :goto_24

    :catch_9
    move-exception v0

    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Package status invalid, resetting and retrying"

    .line 116
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_7

    .line 121
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_7

    :try_start_19
    monitor-exit p0

    return-object v0

    :catch_1b
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Recovery from bad file failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_7

    throw v0
.end method

.method public final getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_48

    .line 132
    :try_start_6
    invoke-static {p0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    const-string v1, "checkStatus"

    .line 133
    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3c

    if-nez v1, :cond_19

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 141
    :try_start_15
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_48

    :cond_18
    return-object v0

    :cond_19
    :try_start_19
    const-string/jumbo v2, "updateAppPackageVersion"

    .line 137
    invoke-static {v0, v2}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string v3, "dataAppPackageVersion"

    .line 138
    invoke-static {v0, v3}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 139
    new-instance v3, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Lcom/android/server/timezone/PackageVersions;

    int-to-long v5, v2

    int-to-long v7, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v3, v1, v4}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_3c

    if-eqz p0, :cond_3b

    .line 141
    :try_start_38
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_48

    :cond_3b
    return-object v3

    :catchall_3c
    move-exception v0

    if-eqz p0, :cond_47

    .line 131
    :try_start_3f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p0

    .line 142
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "Error reading package status"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v0, p0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v0
.end method

.method public initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 96
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    :cond_f
    return-void
.end method

.method public final insertInitialPackageStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    return v0
.end method

.method public markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .registers 5

    .line 241
    monitor-enter p0

    .line 242
    :try_start_1
    iget v0, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    add-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_9

    const/4 p2, 0x2

    goto :goto_a

    :cond_9
    const/4 p2, 0x3

    .line 247
    :goto_a
    :try_start_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 246
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_16
    .catchall {:try_start_a .. :try_end_14} :catchall_1d

    :try_start_14
    monitor-exit p0

    return p1

    :catch_16
    move-exception p1

    .line 249
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catchall_1d
    move-exception p1

    .line 251
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final recoverFromBadData(Ljava/lang/Exception;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 152
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    move-result p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 156
    throw v0
.end method

.method public resetCheckState()V
    .registers 5

    .line 211
    monitor-enter p0

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_8
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    goto :goto_16

    :catchall_6
    move-exception v0

    goto :goto_40

    :catch_8
    move-exception v0

    :try_start_9
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string/jumbo v2, "resetCheckState: Unable to find optimistic lock ID from package status"

    .line 216
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_6

    :goto_16
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 224
    :try_start_19
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_39
    .catchall {:try_start_19 .. :try_end_1d} :catchall_6

    if-eqz v0, :cond_21

    .line 232
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_6

    return-void

    .line 226
    :cond_21
    :try_start_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_6

    :catch_39
    move-exception v0

    .line 230
    :try_start_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_6

    throw v0
.end method

.method public final writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PackageStatus"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    :goto_9
    if-nez p3, :cond_c

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    if-ne v3, v1, :cond_79

    const/4 v1, 0x0

    .line 318
    :try_start_10
    iget-object v2, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_70

    .line 319
    :try_start_16
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 320
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 322
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_27

    const-string v4, ""

    goto :goto_2f

    .line 323
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2f
    const-string v5, "checkStatus"

    .line 324
    invoke-interface {v3, v1, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "optimisticLockId"

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 325
    invoke-interface {v3, v1, v4, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-wide/16 v4, -0x1

    if-nez p1, :cond_44

    move-wide v6, v4

    goto :goto_46

    .line 328
    :cond_44
    iget-wide v6, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    :goto_46
    const-string/jumbo p2, "updateAppPackageVersion"

    .line 330
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-interface {v3, v1, p2, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_53

    goto :goto_55

    .line 332
    :cond_53
    iget-wide v4, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    :goto_55
    const-string p1, "dataAppPackageVersion"

    .line 334
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 333
    invoke-interface {v3, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 337
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 338
    iget-object p1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception p1

    move-object v1, v2

    goto :goto_71

    :catch_70
    move-exception p1

    :goto_71
    if-eqz v1, :cond_78

    .line 341
    iget-object p0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 343
    :cond_78
    throw p1

    .line 312
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provide both status and packageVersions, or neither."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 295
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_d

    if-eq v1, p1, :cond_8

    return v0

    .line 304
    :cond_8
    invoke-virtual {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    const/4 p0, 0x1

    return p0

    :catch_d
    move-exception p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    return v0
.end method
