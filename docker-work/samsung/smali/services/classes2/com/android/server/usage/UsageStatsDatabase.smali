.class public Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field public static final BACKUP_VERSION:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field public static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field public static final DEBUG:Z = false

.field public static final DEFAULT_CURRENT_VERSION:I = 0x5

.field public static final KEEP_BACKUP_DIR:Z = false

.field public static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field public static final MAX_FILES_PER_INTERVAL_TYPE:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RETENTION_LEN_KEY:Ljava/lang/String; = "ro.usagestats.chooser.retention"

.field public static final SELECTION_LOG_RETENTION_LEN:I

.field public static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field public final mBackupsDir:Ljava/io/File;

.field public final mCal:Lcom/android/server/usage/UnixCalendar;

.field public mCurrentVersion:I

.field public mFirstUpdate:Z

.field public final mIntervalDirs:[Ljava/io/File;

.field public final mLock:Ljava/lang/Object;

.field public mNewUpdate:Z

.field public final mPackageMappingsFile:Ljava/io/File;

.field public final mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

.field public final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mUpdateBreadcrumb:Ljava/io/File;

.field public mUpgradePerformed:Z

.field public final mVersionFile:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 99
    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    .line 115
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    return-void

    :array_14
    .array-data 4
        0x64
        0x32
        0xc
        0xa
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x5

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/android/server/usage/PackagesTokenData;

    invoke-direct {v0}, Lcom/android/server/usage/PackagesTokenData;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    .line 147
    new-instance v1, Ljava/io/File;

    const-string v2, "daily"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "weekly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string v2, "monthly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "yearly"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 153
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 154
    new-instance p2, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 155
    new-instance p2, Ljava/io/File;

    const-string v1, "backups"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 156
    new-instance p2, Ljava/io/File;

    const-string v1, "breadcrumb"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 157
    array-length p2, v0

    new-array p2, p2, [Landroid/app/usage/TimeSparseArray;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 158
    new-instance p2, Ljava/io/File;

    const-string v0, "mappings"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 159
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 6

    .line 1510
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1512
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 1513
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1514
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_19

    .line 1516
    :cond_16
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1520
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static deleteDirectoryContents(Ljava/io/File;)V
    .registers 4

    .line 1503
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1504
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 1505
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public static getIntervalStatsBytes(Ljava/io/DataInputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1463
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1464
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    return-object v1
.end method

.method public static parseBeginTime(Landroid/util/AtomicFile;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1049
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 1056
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1057
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-le v2, v3, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1060
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1066
    :cond_20
    :try_start_20
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_25

    return-wide v0

    :catch_25
    move-exception p0

    .line 1068
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 8

    .line 999
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1001
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    aget-object v2, p0, v1

    .line 1004
    :try_start_c
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    const-wide/16 v3, 0x0

    :goto_13
    cmp-long v3, v3, p1

    if-gez v3, :cond_1f

    .line 1010
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1153
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_1d

    .line 1155
    :try_start_4
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1156
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    move-result p2

    .line 1157
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 1160
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    return p2

    :catchall_18
    move-exception p0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 1164
    :catch_1c
    :try_start_1c
    throw p0
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception p0

    const-string p1, "UsageStatsDatabase"

    .line 1166
    invoke-static {p1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    throw p0
.end method

.method public static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_49

    const/4 v0, 0x2

    if-eq p2, v0, :cond_49

    const/4 v0, 0x3

    if-eq p2, v0, :cond_49

    const/4 v0, 0x4

    const-string v2, "Unable to read interval stats from proto."

    if-eq p2, v0, :cond_40

    const/4 v0, 0x5

    if-ne p2, v0, :cond_20

    .line 1202
    :try_start_13
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 1204
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    :goto_1b
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->deobfuscateData(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result p0

    goto :goto_68

    .line 1209
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on read."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1195
    :cond_40
    :try_start_40
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_67

    :catch_44
    move-exception p0

    .line 1197
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 1186
    :cond_49
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reading UsageStats as XML; database version: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :try_start_5d
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_67

    :catch_61
    move-exception p0

    const-string p1, "Unable to read interval stats from XML"

    .line 1190
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_67
    const/4 p0, 0x0

    :goto_68
    return p0
.end method

.method public static sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 1470
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1471
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1472
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->clear()V

    return-void
.end method

.method public static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1085
    :try_start_4
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 1086
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_14
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    const/4 p1, 0x0

    .line 1092
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_17

    :catchall_f
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1093
    throw p1

    .line 1092
    :catch_14
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_17
    return-void
.end method

.method public static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_48

    const/4 v0, 0x2

    if-eq p2, v0, :cond_48

    const/4 v0, 0x3

    if-eq p2, v0, :cond_48

    const/4 v0, 0x4

    const-string v2, "Unable to write interval stats to proto."

    if-eq p2, v0, :cond_3f

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1f

    .line 1113
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 1115
    :try_start_16
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_5c

    :catch_1a
    move-exception p0

    .line 1117
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    throw p0

    .line 1122
    :cond_1f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unhandled UsageStatsDatabase version: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on write."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1106
    :cond_3f
    :try_start_3f
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_5c

    :catch_43
    move-exception p0

    .line 1108
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    throw p0

    .line 1102
    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempting to write UsageStats as XML with version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "usage_stats"

    .line 1366
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    const/4 p1, 0x0

    .line 1369
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    const/4 v2, 0x1

    .line 1371
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    const/4 v4, 0x2

    .line 1373
    invoke-virtual {p0, v4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    const/4 v6, 0x3

    .line 1375
    invoke-virtual {p0, v6}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v7
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_c0

    .line 1378
    :try_start_20
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1379
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    if-lt p2, v2, :cond_aa

    const/4 v9, 0x4

    if-le p2, v9, :cond_35

    goto/16 :goto_aa

    :cond_35
    move v9, p1

    .line 1386
    :goto_36
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v11, v10

    if-ge v9, v11, :cond_43

    .line 1387
    aget-object v10, v10, v9

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectoryContents(Ljava/io/File;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 1390
    :cond_43
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    move v10, p1

    :goto_48
    if-ge v10, v9, :cond_5c

    .line 1392
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v11

    invoke-virtual {p0, v11, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v11

    .line 1394
    invoke-virtual {p0, v11, v1}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v11

    .line 1395
    invoke-virtual {p0, p1, v11}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_48

    .line 1398
    :cond_5c
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    move v9, p1

    :goto_61
    if-ge v9, v1, :cond_75

    .line 1400
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v10

    invoke-virtual {p0, v10, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v10

    .line 1402
    invoke-virtual {p0, v10, v3}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v10

    .line 1403
    invoke-virtual {p0, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    .line 1406
    :cond_75
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    move v2, p1

    :goto_7a
    if-ge v2, v1, :cond_8e

    .line 1408
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    .line 1410
    invoke-virtual {p0, v3, v5}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    .line 1411
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 1414
    :cond_8e
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    :goto_92
    if-ge p1, v1, :cond_a6

    .line 1416
    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->getIntervalStatsBytes(Ljava/io/DataInputStream;)[B

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    .line 1418
    invoke-virtual {p0, v2, v7}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    .line 1419
    invoke-virtual {p0, v6, v2}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_a3} :catch_b1
    .catchall {:try_start_20 .. :try_end_a3} :catchall_af

    add-int/lit8 p1, p1, 0x1

    goto :goto_92

    .line 1425
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_be

    :cond_aa
    :goto_aa
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_c0

    return-void

    :catchall_af
    move-exception p1

    goto :goto_ba

    :catch_b1
    move-exception p1

    :try_start_b2
    const-string p2, "UsageStatsDatabase"

    const-string v1, "Failed to read data from input stream"

    .line 1423
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_af

    goto :goto_a6

    .line 1425
    :goto_ba
    :try_start_ba
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 1426
    throw p1

    .line 1428
    :cond_be
    :goto_be
    monitor-exit v0

    return-void

    :catchall_c0
    move-exception p0

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_c0

    throw p0
.end method

.method public final checkVersionAndBuildLocked()V
    .registers 11

    const-string v0, "\n"

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getBuildFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->getCSCFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 350
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 351
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    const/4 v3, 0x0

    .line 352
    :try_start_1f
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_2b} :catch_52
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2b} :catch_52

    .line 353
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 354
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3b

    .line 356
    iput-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    .line 358
    :cond_3b
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 359
    iput-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_48

    .line 361
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_46} :catch_52
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_52

    move v3, v5

    goto :goto_52

    :catchall_48
    move-exception v5

    .line 352
    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v4

    :try_start_4e
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw v5
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_52} :catch_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52

    .line 365
    :catch_52
    :goto_52
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string v5, "UsageStatsDatabase"

    if-eq v3, v4, :cond_a7

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading from version "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 369
    :try_start_7e
    invoke-virtual {p0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_a7

    :catch_82
    move-exception v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    iput v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    return-void

    :cond_a2
    const-string v4, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    .line 379
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_a7
    :goto_a7
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 386
    :try_start_af
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_bb} :catch_f8
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_bb} :catch_f8

    .line 388
    :try_start_bb
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 389
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_cb
    .catchall {:try_start_bb .. :try_end_cb} :catchall_ee

    .line 390
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_ce} :catch_f8
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_f8

    .line 394
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v9, 0x4

    if-lt v4, v9, :cond_d7

    .line 395
    invoke-virtual {p0, v8, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->continueUpgradeLocked(IJ)V

    goto :goto_104

    .line 397
    :cond_d7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to upgrade to an unsupported version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    :catchall_ee
    move-exception p0

    .line 386
    :try_start_ef
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f3

    goto :goto_f7

    :catchall_f3
    move-exception v0

    :try_start_f4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f7
    throw p0
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_f8} :catch_f8
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f8} :catch_f8

    :catch_f8
    move-exception p0

    const-string v0, "Failed read version upgrade breadcrumb"

    .line 391
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 402
    :cond_104
    :goto_104
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v3, v4, :cond_10c

    iget-boolean v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v3, :cond_130

    .line 403
    :cond_10c
    :try_start_10c
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_118} :catch_159

    .line 404
    :try_start_118
    iget v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_12d
    .catchall {:try_start_118 .. :try_end_12d} :catchall_14f

    .line 409
    :try_start_12d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_159

    .line 415
    :cond_130
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 417
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 419
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 422
    :cond_13f
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 423
    iput-boolean v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 424
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    :cond_14e
    return-void

    :catchall_14f
    move-exception p0

    .line 403
    :try_start_150
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    goto :goto_158

    :catchall_154
    move-exception v0

    :try_start_155
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_158
    throw p0
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_159} :catch_159

    :catch_159
    move-exception p0

    const-string v0, "Failed to write new version"

    .line 410
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 11

    .line 217
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 220
    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    const/4 v4, -0x1

    move v5, v2

    :goto_e
    const/4 v6, 0x1

    add-int/lit8 v7, v3, -0x1

    if-ge v5, v7, :cond_2d

    .line 226
    invoke-virtual {v1, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v4, v5

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_2d
    add-int/2addr v4, v6

    if-ne v4, v7, :cond_32

    .line 233
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_ba

    return v6

    :cond_32
    move v3, v4

    :goto_33
    if-ge v3, v7, :cond_58

    .line 238
    :try_start_35
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 239
    invoke-virtual {v1, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {p0, v8, v5}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 240
    invoke-interface {p1, v5}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z

    move-result v5
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_4e
    .catchall {:try_start_35 .. :try_end_47} :catchall_ba

    if-nez v5, :cond_4b

    .line 241
    :try_start_49
    monitor-exit v0

    return v2

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :catch_4e
    move-exception p0

    const-string p1, "UsageStatsDatabase"

    const-string v1, "Failed to check-in"

    .line 245
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    monitor-exit v0

    return v2

    :cond_58
    :goto_58
    if-ge v4, v7, :cond_b8

    .line 252
    invoke-virtual {v1, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    .line 253
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string p1, "UsageStatsDatabase"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mark file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as checked-in"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit v0

    return v6

    .line 265
    :cond_ad
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v4, p0}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 267
    :cond_b8
    monitor-exit v0

    return v6

    :catchall_ba
    move-exception p0

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_49 .. :try_end_bc} :catchall_ba

    throw p0
.end method

.method public final continueUpgradeLocked(IJ)V
    .registers 15

    const-string v0, "UsageStatsDatabase"

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1b

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1b
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-lt p1, p2, :cond_2c

    .line 533
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    :cond_2c
    const/4 p3, 0x0

    move v2, p3

    .line 538
    :goto_2e
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v3

    if-ge v2, v3, :cond_a0

    .line 539
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_9d

    move v4, p3

    .line 542
    :goto_47
    array-length v5, v3

    if-ge v4, v5, :cond_9d

    .line 550
    :try_start_4a
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 551
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, p1, v7}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    .line 554
    iget v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v6, p2, :cond_64

    .line 556
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v5, v6}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 558
    :cond_64
    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v8, v8, v2

    iget-wide v9, v5, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 559
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 558
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7f} :catch_80

    goto :goto_9a

    .line 563
    :catch_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to upgrade backup file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 570
    :cond_a0
    iget p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt p1, p2, :cond_ad

    .line 572
    :try_start_a4
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_ad

    :catch_a8
    const-string p0, "Failed to write the tokens mappings file."

    .line 574
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    :goto_ad
    return-void
.end method

.method public final deserializeIntervalStats([BI)Lcom/android/server/usage/IntervalStats;
    .registers 6

    .line 1489
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1490
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1491
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1493
    :try_start_f
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1494
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, v0, p2, p0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception p0

    const-string p1, "UsageStatsDatabase"

    const-string p2, "DeSerializing IntervalStats Failed"

    .line 1496
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

.method public final doUpgradeLocked(I)V
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "\n"

    const-string v2, "UsageStatsDatabase"

    const/4 v3, 0x0

    const/4 v4, 0x2

    move/from16 v5, p1

    if-ge v5, v4, :cond_2e

    const-string v0, "Deleting all usage stats files"

    .line 448
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 449
    :goto_12
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v2

    if-ge v0, v4, :cond_116

    .line 450
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 452
    array-length v4, v2

    move v5, v3

    :goto_21
    if-ge v5, v4, :cond_2b

    aget-object v6, v2, v5

    .line 453
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 459
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 460
    new-instance v4, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 462
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_150

    .line 467
    :try_start_46
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 468
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v3

    .line 467
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_65} :catch_12f

    move v8, v3

    .line 475
    :goto_66
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v9

    if-ge v8, v9, :cond_ef

    .line 476
    new-instance v9, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 479
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d4

    .line 484
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_d1

    move v12, v3

    .line 486
    :goto_8c
    array-length v13, v11

    if-ge v12, v13, :cond_d1

    .line 487
    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 497
    :try_start_9a
    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    new-array v15, v10, [Ljava/nio/file/CopyOption;

    sget-object v16, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v16, v15, v3

    invoke-static {v14, v13, v15}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_ad} :catch_b0

    add-int/lit8 v12, v12, 0x1

    goto :goto_8c

    :catch_b0
    move-exception v0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to back up file : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v11, v12

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_d1
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 480
    :cond_d4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create interval backup directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ef
    const/4 v3, 0x0

    .line 510
    :try_start_f0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_fc} :catch_11f
    .catchall {:try_start_f0 .. :try_end_fc} :catchall_11d

    .line 511
    :try_start_fc
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 513
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_113} :catch_11a
    .catchall {:try_start_fc .. :try_end_113} :catchall_117

    .line 520
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_116
    return-void

    :catchall_117
    move-exception v0

    move-object v3, v4

    goto :goto_12b

    :catch_11a
    move-exception v0

    move-object v3, v4

    goto :goto_120

    :catchall_11d
    move-exception v0

    goto :goto_12b

    :catch_11f
    move-exception v0

    :goto_120
    :try_start_120
    const-string v1, "Failed to write new version upgrade breadcrumb"

    .line 517
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_12b
    .catchall {:try_start_120 .. :try_end_12b} :catchall_11d

    .line 520
    :goto_12b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 521
    throw v0

    :catch_12f
    move-exception v0

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to back up version file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 463
    :cond_150
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create backup directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 13

    .line 1528
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "UsageStatsDatabase:"

    .line 1530
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1533
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Database Summary:"

    .line 1534
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 1536
    :goto_1e
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_90

    .line 1537
    aget-object v3, v3, v2

    .line 1538
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 1539
    invoke-static {v2}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " stats files: "

    .line 1540
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v5, ", sorted list of files:"

    .line 1542
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v5, v1

    :goto_41
    if-ge v5, v4, :cond_8a

    .line 1545
    invoke-virtual {v3, v5}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v6

    if-eqz p2, :cond_51

    .line 1547
    invoke-static {v6, v7, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5d

    .line 1549
    :cond_51
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 1550
    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    .line 1549
    invoke-virtual {p1, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1554
    :goto_5d
    invoke-virtual {v3, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    .line 1555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "byte"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 1559
    :cond_8a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1561
    :cond_90
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1562
    monitor-exit v0

    return-void

    :catchall_95
    move-exception p0

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 1566
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Obfuscated Packages Mappings:"

    .line 1567
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget v2, v2, Lcom/android/server/usage/PackagesTokenData;->counter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tokens Map Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed Package Tokens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    .line 1573
    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1572
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_69
    const/4 v1, 0x0

    .line 1575
    :goto_6a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b0

    .line 1576
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v2, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-string v3, ", "

    .line 1577
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1578
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1577
    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 1581
    :cond_b0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1582
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1583
    monitor-exit v0

    return-void

    :catchall_b8
    move-exception p0

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_3 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public filterStats(Lcom/android/server/usage/IntervalStats;)V
    .registers 9

    .line 778
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 781
    :cond_b
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object p0, p0, Lcom/android/server/usage/PackagesTokenData;->removedPackagesMap:Landroid/util/ArrayMap;

    .line 784
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_3e

    .line 786
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 787
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    if-eqz v3, :cond_3b

    .line 788
    iget-wide v3, v3, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3b

    .line 789
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 794
    :cond_3e
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_46
    if-ltz v0, :cond_6a

    .line 795
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 796
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_67

    .line 797
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_67

    .line 798
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :cond_67
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    :cond_6a
    return-void
.end method

.method public findBestFitBucket(JJ)I
    .registers 11

    .line 905
    iget-object p3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter p3

    const-wide v0, 0x7fffffffffffffffL

    .line 908
    :try_start_8
    iget-object p4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    const/4 v2, -0x1

    :goto_e
    if-ltz p4, :cond_3a

    .line 909
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, p4

    invoke-virtual {v3, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v3

    .line 910
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, p4

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    if-ltz v3, :cond_37

    if-ge v3, v4, :cond_37

    .line 913
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, p4

    invoke-virtual {v4, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_37

    move v2, p4

    move-wide v0, v3

    :cond_37
    add-int/lit8 p4, p4, -0x1

    goto :goto_e

    .line 920
    :cond_3a
    monitor-exit p3

    return v2

    :catchall_3c
    move-exception p0

    .line 921
    monitor-exit p3
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public forceIndexFiles()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 276
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x4

    .line 1297
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-lt p2, v1, :cond_1e

    if-gt p2, v0, :cond_1e

    const-string p0, "UsageStatsDatabase"

    .line 1306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to backup UsageStats as XML with version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1309
    :cond_1e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1310
    :try_start_21
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string/jumbo v4, "usage_stats"

    .line 1311
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 1312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 1313
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_e8

    .line 1315
    :try_start_3b
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1317
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v5

    .line 1319
    :goto_4b
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_65

    .line 1321
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v5

    .line 1322
    invoke-virtual {v6, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1321
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 1326
    :cond_65
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v4, v5

    .line 1327
    :goto_71
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_8b

    .line 1329
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v1

    .line 1330
    invoke-virtual {v6, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1329
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 1334
    :cond_8b
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v5

    .line 1335
    :goto_98
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_b2

    .line 1337
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, v4

    .line 1338
    invoke-virtual {v6, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    .line 1337
    invoke-virtual {p0, p1, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 1342
    :cond_b2
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1343
    :goto_bd
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_e2

    .line 1345
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, v0

    .line 1346
    invoke-virtual {v1, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 1345
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_d4} :catch_d7
    .catchall {:try_start_3b .. :try_end_d4} :catchall_e8

    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    :catch_d7
    move-exception p0

    :try_start_d8
    const-string p1, "UsageStatsDatabase"

    const-string p2, "Failed to write data to output stream"

    .line 1351
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1355
    :cond_e2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    monitor-exit v2

    return-object p0

    :catchall_e8
    move-exception p0

    .line 1356
    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_d8 .. :try_end_ea} :catchall_e8

    throw p0
.end method

.method public final getBuildFingerprint()Ljava/lang/String;
    .registers 3

    .line 429
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCSCFingerprint()Ljava/lang/String;
    .registers 4

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ril.official_cscver"

    .line 438
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 6

    .line 751
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_37

    .line 752
    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_37

    .line 756
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 758
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4e

    return-object v2

    .line 762
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v3, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    .line 763
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 764
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_2d
    .catchall {:try_start_17 .. :try_end_2b} :catchall_4e

    .line 765
    :try_start_2b
    monitor-exit v0

    return-object v1

    :catch_2d
    move-exception p0

    const-string p1, "UsageStatsDatabase"

    const-string v1, "Failed to read usage stats file"

    .line 767
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    monitor-exit v0

    return-object v2

    .line 753
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad interval type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4e
    move-exception p0

    .line 769
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public final indexFilesLocked()V
    .registers 13

    .line 280
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    const/4 v1, 0x0

    move v2, v1

    .line 287
    :goto_7
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_9f

    .line 288
    aget-object v4, v3, v2

    if-nez v4, :cond_18

    .line 289
    new-instance v4, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v4}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v4, v3, v2

    goto :goto_1b

    .line 291
    :cond_18
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 293
    :goto_1b
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 298
    array-length v4, v3

    move v5, v1

    :goto_27
    const-string v6, "UsageStatsDatabase"

    if-ge v5, v4, :cond_56

    .line 300
    aget-object v7, v3, v5

    .line 301
    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 303
    :try_start_32
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v2

    invoke-static {v8}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3d} :catch_3e

    goto :goto_53

    :catch_3e
    move-exception v8

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to index file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 310
    :cond_56
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    sget-object v4, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    if-lez v3, :cond_9b

    move v4, v1

    :goto_66
    if-ge v4, v3, :cond_7f

    .line 313
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    .line 314
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 316
    :cond_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stat files for interval "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_9f
    return-void
.end method

.method public init(J)V
    .registers 11

    .line 170
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_33

    aget-object v5, v1, v4

    .line 172
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 173
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 174
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create directory "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->checkVersionAndBuildLocked()V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 183
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v1, p0

    :goto_3c
    if-ge v3, v1, :cond_65

    aget-object v2, p0, v3

    .line 184
    invoke-virtual {v2, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v4

    if-gez v4, :cond_47

    goto :goto_62

    .line 189
    :cond_47
    invoke-virtual {v2}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    move v6, v4

    :goto_4c
    if-ge v6, v5, :cond_5a

    .line 191
    invoke-virtual {v2, v6}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    :cond_5a
    :goto_5a
    if-ge v4, v5, :cond_62

    .line 197
    invoke-virtual {v2, v4}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 200
    :cond_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public isFirstUpdate()Z
    .registers 1

    .line 326
    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mFirstUpdate:Z

    return p0
.end method

.method public isNewUpdate()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    return p0
.end method

.method public final mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 4

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 1438
    :cond_7
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 1439
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v0, p2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1440
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->clear()V

    .line 1441
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object p2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, p2}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    return-object p1
.end method

.method public obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V
    .registers 5

    .line 1264
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 1267
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 1268
    aget-object v1, p1, v0

    .line 1269
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;J)I
    .registers 6

    .line 584
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    move-result p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    .line 587
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    goto :goto_23

    :catch_d
    :try_start_d
    const-string p0, "UsageStatsDatabase"

    .line 589
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to update package mappings on disk after removing token "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_23
    monitor-exit v0

    return p1

    :catchall_25
    move-exception p0

    .line 593
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onTimeChanged(J)V
    .registers 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 701
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 702
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time changed by "

    .line 703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {v1, v2, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, "."

    .line 705
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v6, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1f
    if-ge v8, v6, :cond_90

    aget-object v11, v5, v8

    .line 711
    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_28
    if-ge v13, v12, :cond_88

    .line 713
    invoke-virtual {v11, v13}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/AtomicFile;

    .line 714
    invoke-virtual {v11, v13}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v15

    add-long/2addr v15, v1

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-gez v17, :cond_41

    add-int/lit8 v9, v9, 0x1

    .line 717
    invoke-virtual {v14}, Landroid/util/AtomicFile;->delete()V
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_ae

    goto :goto_83

    .line 720
    :cond_41
    :try_start_41
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_ae

    .line 725
    :catch_48
    :try_start_48
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 726
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v0, "-c"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-c"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 730
    :cond_6d
    new-instance v0, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    .line 732
    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :goto_83
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_28

    .line 735
    :cond_88
    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->clear()V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_1f

    :cond_90
    const-string v0, " files deleted: "

    .line 738
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " files moved: "

    .line 739
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "UsageStatsDatabase"

    .line 740
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 744
    monitor-exit v3

    return-void

    :catchall_ae
    move-exception v0

    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_48 .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method public prune(J)V
    .registers 4

    const/4 v0, 0x0

    .line 929
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    return-void
.end method

.method public prune(JZ)V
    .registers 9

    .line 934
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    if-nez p3, :cond_10

    .line 939
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 941
    :cond_10
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 942
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 941
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 944
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    if-nez p3, :cond_2b

    .line 948
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 950
    :cond_2b
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 951
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 950
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 953
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    if-nez p3, :cond_46

    .line 957
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 959
    :cond_46
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 960
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 959
    invoke-static {v1, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 962
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    if-nez p3, :cond_62

    .line 966
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 968
    :cond_62
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 969
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 968
    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 971
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    if-nez p3, :cond_7f

    .line 975
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    sget p2, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 977
    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length p2, p1

    if-ge v2, p2, :cond_92

    .line 978
    aget-object p1, p1, v2

    iget-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {p2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 983
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 984
    monitor-exit v0

    return-void

    :catchall_97
    move-exception p0

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public pruneAll(J)V
    .registers 4

    const/4 v0, 0x1

    .line 989
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    const/4 p1, 0x0

    .line 990
    :goto_5
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, p2

    if-ge p1, v0, :cond_14

    .line 991
    aget-object p2, p2, p1

    if-eqz p2, :cond_11

    .line 992
    invoke-virtual {p2}, Landroid/app/usage/TimeSparseArray;->clear()V

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public final pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .registers 12

    .line 1017
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1019
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_4f

    aget-object v3, p1, v2

    .line 1022
    :try_start_d
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    const-wide/16 v4, 0x0

    :goto_14
    cmp-long v4, v4, p2

    if-gez v4, :cond_4c

    .line 1029
    :try_start_18
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1030
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1031
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 1032
    iget-object v5, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v1

    :goto_2c
    if-ge v6, v5, :cond_40

    .line 1034
    iget-object v7, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    .line 1035
    iget-object v7, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v7, :cond_3d

    .line 1036
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1039
    :cond_40
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception v3

    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to delete chooser counts from usage stats file"

    .line 1041
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_4f
    return-void
.end method

.method public prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 644
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 647
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 648
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v2, v4, :cond_62

    .line 649
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_5f

    :cond_1a
    move v4, v1

    .line 653
    :goto_1b
    array-length v5, v3
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_64

    if-ge v4, v5, :cond_5f

    .line 655
    :try_start_1e
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 656
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 657
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    .line 658
    invoke-virtual {p0, p1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_5c

    .line 661
    :cond_38
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3f} :catch_40
    .catchall {:try_start_1e .. :try_end_3f} :catchall_64

    goto :goto_5c

    :catch_40
    :try_start_40
    const-string v5, "UsageStatsDatabase"

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prune data from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 667
    :cond_62
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/usage/IntervalStats;",
            ")Z"
        }
    .end annotation

    .line 674
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    :goto_9
    if-ltz p0, :cond_30

    .line 675
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 676
    iget-object v3, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_27

    .line 677
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_2d

    .line 678
    :cond_27
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move v1, v0

    :cond_2d
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_30
    if-eqz v1, :cond_37

    .line 684
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 688
    :cond_37
    iget-object p0, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_3e
    if-ltz p0, :cond_63

    .line 689
    iget-object v2, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    .line 690
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_5a

    .line 691
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v2, v3, v5

    if-lez v2, :cond_60

    .line 692
    :cond_5a
    iget-object v1, p2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    move v1, v0

    :cond_60
    add-int/lit8 p0, p0, -0x1

    goto :goto_3e

    :cond_63
    return v1
.end method

.method public pruneUninstalledPackagesData()Z
    .registers 10

    .line 601
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 602
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v2, v4, :cond_59

    .line 603
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_13

    goto :goto_56

    :cond_13
    move v4, v1

    .line 607
    :goto_14
    array-length v5, v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_68

    if-ge v4, v5, :cond_56

    .line 609
    :try_start_17
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 610
    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 611
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_35

    .line 618
    :cond_2e
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_38
    .catchall {:try_start_17 .. :try_end_35} :catchall_68

    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :catch_38
    :try_start_38
    const-string p0, "UsageStatsDatabase"

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to prune data from: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_38 .. :try_end_55} :catchall_68

    return v1

    :cond_56
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 627
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5f
    .catchall {:try_start_59 .. :try_end_5c} :catchall_68

    .line 632
    :try_start_5c
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catch_5f
    const-string p0, "UsageStatsDatabase"

    const-string v2, "Failed to write package mappings after pruning data."

    .line 629
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    monitor-exit v0

    return v1

    :catchall_68
    move-exception p0

    .line 633
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1278
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_43

    .line 1279
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-ge p1, v1, :cond_43

    .line 1283
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    if-nez v1, :cond_38

    .line 1285
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 1286
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1287
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v2, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {p1, v2, v3, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 1290
    :cond_38
    invoke-virtual {p0, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 1291
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 1292
    monitor-exit v0

    return-void

    .line 1280
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad interval type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5a
    move-exception p0

    .line 1292
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_64

    .line 832
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    if-ge p1, v0, :cond_64

    cmp-long v0, p4, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_d

    return-object v1

    .line 843
    :cond_d
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_10
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v2, p1

    .line 846
    invoke-virtual {p1, p4, p5}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v2

    if-gez v2, :cond_1c

    .line 852
    monitor-exit v0

    return-object v1

    .line 855
    :cond_1c
    invoke-virtual {p1, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    cmp-long p4, v3, p4

    if-nez p4, :cond_2a

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_2a

    .line 863
    monitor-exit v0

    return-object v1

    .line 867
    :cond_2a
    invoke-virtual {p1, p2, p3}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result p4

    const/4 p5, 0x0

    if-gez p4, :cond_32

    move p4, p5

    .line 874
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_37
    if-gt p4, v2, :cond_5f

    .line 876
    invoke-virtual {p1, p4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 877
    new-instance v4, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v4}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_61

    .line 884
    :try_start_44
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 885
    iget-wide v5, v4, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v3, p2, v5

    if-gez v3, :cond_5c

    .line 886
    invoke-interface {p6, v4, p5, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_54
    .catchall {:try_start_44 .. :try_end_51} :catchall_61

    if-nez v3, :cond_5c

    goto :goto_5f

    :catch_54
    move-exception v3

    :try_start_55
    const-string v4, "UsageStatsDatabase"

    const-string v5, "Failed to read usage stats file"

    .line 890
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    add-int/lit8 p4, p4, 0x1

    goto :goto_37

    .line 895
    :cond_5f
    :goto_5f
    monitor-exit v0

    return-object v1

    :catchall_61
    move-exception p0

    .line 896
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_61

    throw p0

    .line 833
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad interval type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .registers 8

    .line 1587
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_3
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    const/4 v2, 0x0

    .line 1590
    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object p1, v3, p1

    invoke-virtual {p1, p2, p3, v2}, Landroid/app/usage/TimeSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_18
    .catchall {:try_start_9 .. :try_end_16} :catchall_1a

    .line 1591
    :try_start_16
    monitor-exit v0

    return-object v1

    .line 1593
    :catch_18
    monitor-exit v0

    return-object v2

    :catchall_1a
    move-exception p0

    .line 1595
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1135
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1d

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading UsageStats as XML; current database version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_1d
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)Z

    return-void
.end method

.method public readMappingsLocked()V
    .registers 11

    .line 1221
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1225
    :cond_9
    :try_start_9
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_7a

    .line 1226
    :try_start_14
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_6e

    if-eqz v0, :cond_1e

    .line 1227
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_7a

    .line 1232
    :cond_1e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 1234
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_28
    if-ge v3, v1, :cond_6d

    .line 1236
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1237
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1238
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 1239
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1241
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_4b
    if-ge v4, v7, :cond_5d

    .line 1243
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 1245
    :cond_5d
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_6d
    return-void

    :catchall_6e
    move-exception p0

    if-eqz v0, :cond_79

    .line 1225
    :try_start_71
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v0

    :try_start_76
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw p0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7a} :catch_7a

    :catch_7a
    move-exception p0

    const-string v0, "UsageStatsDatabase"

    const-string v1, "Failed to read the obfuscated packages mapping file."

    .line 1228
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B
    .registers 7

    .line 1476
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1477
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1479
    :try_start_a
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1480
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    move-exception p0

    const-string p1, "UsageStatsDatabase"

    const-string p2, "Serializing IntervalStats Failed"

    .line 1482
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1485
    :goto_20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public wasUpgradePerformed()Z
    .registers 1

    .line 340
    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    return p0
.end method

.method public final writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1447
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 1449
    :try_start_5
    invoke-virtual {p0, p2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_17

    .line 1455
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->sanitizeIntervalStatsForBackup(Lcom/android/server/usage/IntervalStats;)V

    .line 1456
    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->serializeIntervalStats(Lcom/android/server/usage/IntervalStats;I)[B

    move-result-object p0

    .line 1457
    array-length p2, p0

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1458
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    :catch_17
    move-exception p0

    const-string p2, "UsageStatsDatabase"

    const-string p3, "Failed to read usage stats file"

    .line 1451
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 1452
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1074
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    .line 1075
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempting to write UsageStats as XML with version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsDatabase"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1078
    :cond_1e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    return-void
.end method

.method public writeMappingsLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1251
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1253
    :try_start_b
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V

    .line 1254
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_1a
    .catchall {:try_start_b .. :try_end_13} :catchall_18

    const/4 p0, 0x0

    .line 1259
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_25

    :catchall_18
    move-exception p0

    goto :goto_26

    :catch_1a
    move-exception p0

    :try_start_1b
    const-string v2, "UsageStatsDatabase"

    const-string v3, "Unable to write obfuscated data to proto."

    .line 1257
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    .line 1259
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_25
    return-void

    :goto_26
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1260
    throw p0
.end method
