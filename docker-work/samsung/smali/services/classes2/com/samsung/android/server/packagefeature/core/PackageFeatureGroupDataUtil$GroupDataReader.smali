.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;
.super Ljava/lang/Object;
.source "PackageFeatureGroupDataUtil.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupDataReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader$COLUMN;
    }
.end annotation


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field public mBufferedReader:Ljava/io/BufferedReader;

.field public mErrorCount:I

.field public mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

.field public mIsBase64PackageName:Z

.field public mName:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    const/4 v1, 0x0

    .line 276
    iput v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorCount:I

    .line 277
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_14

    .line 279
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    .line 281
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    goto :goto_14

    :catchall_10
    move-exception v1

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    .line 282
    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public getErrorCount()I
    .registers 1

    .line 291
    iget p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorCount:I

    return p0
.end method

.method public getPackageFeatureGroupData()Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mName:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eqz v0, :cond_9

    return-object v0

    .line 251
    :cond_9
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    iget v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 253
    :goto_12
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v1, ","

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 255
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2a

    .line 257
    iget v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mErrorCount:I

    goto :goto_12

    :cond_2a
    const/4 v3, 0x0

    .line 261
    aget-object v3, v0, v3

    .line 262
    aget-object v2, v0, v2

    .line 263
    iget-boolean v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mIsBase64PackageName:Z

    if-eqz v4, :cond_37

    .line 264
    invoke-static {v2}, Lcom/samsung/android/server/util/CoreEncryptor;->decodeBase64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_37
    const/4 v4, 0x2

    if-le v1, v4, :cond_3d

    .line 266
    aget-object v4, v0, v4

    goto :goto_3f

    :cond_3d
    sget-object v4, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    :goto_3f
    const/4 v5, 0x3

    if-le v1, v5, :cond_45

    .line 267
    aget-object v0, v0, v5

    goto :goto_47

    :cond_45
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    .line 268
    :goto_47
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->putPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 270
    :cond_4d
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    return-object p0

    .line 246
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "It hasn\'t been opened yet."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion()I
    .registers 1

    .line 287
    iget p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    return p0
.end method

.method public open(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 240
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mVersion:I

    .line 241
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->mIsBase64PackageName:Z

    return-void
.end method
