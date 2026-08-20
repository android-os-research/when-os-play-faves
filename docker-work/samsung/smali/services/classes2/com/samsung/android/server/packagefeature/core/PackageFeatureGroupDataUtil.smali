.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;
.super Ljava/lang/Object;
.source "PackageFeatureGroupDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;
    }
.end annotation


# static fields
.field public static final DIR_PATH:Ljava/lang/String;

.field public static final LEGACY_DIR_PATH:Ljava/lang/String;

.field public static final ROOT_PATH:Ljava/lang/String;


# instance fields
.field public final mCacheFilePathName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mLogger:Lcom/samsung/android/server/util/CoreLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 57
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->ROOT_PATH:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/system/packageconfiguration/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->LEGACY_DIR_PATH:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/system/packagefeature_cache/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mCacheFilePathName:Ljava/lang/String;

    return-void
.end method

.method public static deleteCacheFiles()Ljava/lang/String;
    .registers 1

    .line 184
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->DIR_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 190
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "directory does not exist"

    return-object p0

    .line 194
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 195
    array-length v1, p0

    if-nez v1, :cond_19

    goto :goto_46

    .line 199
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_49

    .line 200
    :try_start_1e
    array-length v0, p0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_3f

    aget-object v3, p0, v2

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "(succeeded) "

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_37
    const-string v3, "(failed) "

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catchall {:try_start_1e .. :try_end_3c} :catchall_44

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 211
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_44
    move-object v0, v1

    goto :goto_49

    :cond_46
    :goto_46
    :try_start_46
    const-string p0, "files does not exist"
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_49

    return-object p0

    .line 209
    :catchall_49
    :goto_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteCacheFiles: Error!!! "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_63

    :cond_61
    const-string p0, ""

    :goto_63
    return-object p0
.end method

.method public static deleteLegacyFiles()Ljava/lang/String;
    .registers 1

    .line 180
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->LEGACY_DIR_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public loadFromCacheFile()Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .registers 6

    const-string v0, "loadFromCacheFile"

    .line 99
    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->DIR_PATH:Ljava/lang/String;

    .line 100
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mCacheFilePathName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_49

    .line 106
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_45

    .line 107
    :try_start_23
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->loadFromFileInputStream(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    instance-of v4, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    if-eqz v4, :cond_34

    .line 109
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logSucceeded(Ljava/lang/String;)V

    .line 110
    check-cast v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_3b

    .line 113
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_45

    return-object v1

    .line 112
    :cond_34
    :try_start_34
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 113
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    goto :goto_49

    :catchall_3b
    move-exception v1

    .line 106
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v1

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    return-object v3
.end method

.method public loadFromFileInputStream(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 120
    :try_start_0
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_17

    .line 121
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 122
    :try_start_9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_17

    return-object p1

    :catchall_d
    move-exception p1

    .line 120
    :try_start_e
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    :try_start_13
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p0

    .line 123
    throw p0
.end method

.method public loadFromRawResource(I)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .registers 7

    const-string v0, "loadFromRawResource"

    .line 128
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 131
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget v4, v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_30

    const/4 v3, 0x1

    .line 133
    :try_start_1e
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->loadFromReader(ILjava/io/Reader;Ljava/lang/String;Z)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_26

    .line 135
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    return-object p1

    :catchall_26
    move-exception p1

    .line 131
    :try_start_27
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v1

    :try_start_2c
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw p1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p1

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public loadFromReader(ILjava/io/Reader;Ljava/lang/String;Z)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .registers 10

    const/4 v0, 0x0

    .line 148
    :try_start_1
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;

    invoke-direct {v1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_78

    .line 149
    :try_start_6
    invoke-virtual {v1, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->open(Z)V

    .line 150
    invoke-virtual {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->getVersion()I

    move-result p2

    if-lt p1, p2, :cond_46

    .line 152
    iget-object p4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", GroupName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v4, v4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", readerVersion="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_6e

    .line 164
    :try_start_42
    invoke-virtual {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_78

    return-object v0

    .line 157
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->getPackageFeatureGroupData()Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    move-result-object p1

    .line 158
    invoke-virtual {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->getErrorCount()I

    move-result p2

    if-lez p2, :cond_67

    .line 160
    iget-object p4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    .line 162
    :cond_67
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logSucceeded(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_6e

    .line 164
    :try_start_6a
    invoke-virtual {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_78

    return-object p1

    :catchall_6e
    move-exception p1

    .line 148
    :try_start_6f
    invoke-virtual {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil$GroupDataReader;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception p2

    :try_start_74
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_77
    throw p1
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p1

    .line 165
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public loadFromScpm(ILjava/io/Reader;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
    .registers 5

    const-string v0, "loadFromScpm"

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->loadFromReader(ILjava/io/Reader;Ljava/lang/String;Z)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    move-result-object p0

    return-object p0
.end method

.method public logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    if-eqz p2, :cond_6

    const/4 v1, 0x6

    goto :goto_7

    :cond_6
    const/4 v1, 0x5

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", GroupName="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logSucceeded(Ljava/lang/String;)V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Succeeded to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", GroupName="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-void
.end method

.method public saveToCacheFile(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;)V
    .registers 5

    const-string/jumbo v0, "saveToCacheFile"

    .line 74
    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->DIR_PATH:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    const/4 p1, 0x6

    const-string v0, "Failed to create directory."

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    return-void

    .line 81
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->mCacheFilePathName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3a

    .line 82
    :try_start_26
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->saveToFileOutputStream(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Ljava/io/FileOutputStream;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logSucceeded(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_30

    .line 84
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    goto :goto_3e

    :catchall_30
    move-exception p1

    .line 81
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v1

    :try_start_36
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    return-void
.end method

.method public saveToFileOutputStream(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Ljava/io/FileOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    :try_start_0
    new-instance p0, Ljava/io/ObjectOutputStream;

    invoke-direct {p0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_16

    .line 92
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 93
    :try_start_8
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_16

    return-void

    :catchall_c
    move-exception p1

    .line 91
    :try_start_d
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception p0

    :try_start_12
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    .line 94
    throw p0
.end method
