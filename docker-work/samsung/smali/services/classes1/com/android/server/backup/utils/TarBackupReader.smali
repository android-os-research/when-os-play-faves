.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field public static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field public static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field public static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field public static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field public static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field public static final TAR_HEADER_LONG_RADIX:I = 0x8

.field public static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field public static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field public static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field public static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field public static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field public static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field public final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field public final mInputStream:Ljava/io/InputStream;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 96
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 97
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 98
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method public static extractLine([BI[Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    array-length v0, p0

    if-ge p1, v0, :cond_1d

    move v1, p1

    :goto_4
    if-ge v1, v0, :cond_10

    .line 686
    aget-byte v2, p0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    goto :goto_10

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    :goto_10
    const/4 v0, 0x0

    .line 693
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    invoke-direct {v2, p0, p1, v3}, Ljava/lang/String;-><init>([BII)V

    aput-object v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 681
    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incomplete data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractRadix([BIII)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p2, p1

    const-wide/16 v0, 0x0

    :goto_3
    if-ge p1, p2, :cond_41

    .line 777
    aget-byte v2, p0, p1

    if-eqz v2, :cond_41

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    goto :goto_41

    :cond_e
    const/16 v3, 0x30

    if-lt v2, v3, :cond_21

    add-int/lit8 v3, p3, 0x30

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_21

    int-to-long v3, p3

    mul-long/2addr v3, v0

    add-int/lit8 v2, v2, -0x30

    int-to-long v0, v2

    add-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 783
    :cond_21
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid number in header: \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' for radix "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    :goto_41
    return-wide v0
.end method

.method public static extractString([BII)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p2, p1

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_b

    .line 795
    aget-byte v1, p0, v0

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 798
    :cond_b
    new-instance p2, Ljava/lang/String;

    sub-int/2addr v0, p1

    const-string v1, "US-ASCII"

    invoke-direct {p2, p0, p1, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p2
.end method

.method public static hexLog([B)V
    .registers 10

    .line 803
    array-length v0, p0

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-lez v0, :cond_4f

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 806
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%04x   "

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    if-le v0, v5, :cond_23

    goto :goto_24

    :cond_23
    move v5, v0

    :goto_24
    move v6, v2

    :goto_25
    if-ge v6, v5, :cond_3f

    new-array v7, v4, [Ljava/lang/Object;

    add-int v8, v3, v6

    .line 809
    aget-byte v8, p0, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%02x "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 811
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "hexdump"

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v0, v5

    add-int/2addr v3, v5

    goto :goto_a

    :cond_4f
    return-void
.end method

.method public static readExactly(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_13

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_12

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 254
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_10

    goto :goto_12

    :cond_10
    add-int/2addr v0, v1

    goto :goto_3

    :cond_12
    :goto_12
    return v0

    .line 247
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 16

    .line 401
    invoke-static {p1, p5, p6}, Lcom/android/server/backup/utils/BackupEligibilityRules;->forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 400
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;Z)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object p0

    return-object p0
.end method

.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;Z)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 16

    const-string p5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v0, "Package "

    const-string v1, "BackupManagerService"

    if-nez p4, :cond_b

    .line 419
    sget-object p0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object p0

    .line 422
    :cond_b
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 425
    :try_start_f
    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v6, 0x8000000

    invoke-virtual {p1, v5, v6, p6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 428
    iget-object p6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, p6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 429
    invoke-virtual {p7, p6}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result p6

    if-nez p6, :cond_4b

    if-eqz p8, :cond_24

    goto :goto_4b

    .line 512
    :cond_24
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Restore manifest from "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " but allowBackup=false"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p6, 0x27

    invoke-static {p4, p6, p1, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_174

    .line 432
    :cond_4b
    :goto_4b
    iget-object p6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p6, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p6

    if-eqz p6, :cond_82

    iget-object p6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p6, p6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz p6, :cond_5c

    goto :goto_82

    .line 501
    :cond_5c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " is system level with no agent"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p6, 0x26

    const/4 p7, 0x2

    invoke-static {p4, p6, p1, p7, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_174

    .line 441
    :cond_82
    :goto_82
    invoke-virtual {p7, p4, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result p4

    if-eqz p4, :cond_11c

    .line 442
    iget-object p4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p6, 0x20000

    and-int/2addr p4, p6

    if-eqz p4, :cond_a4

    const-string p4, "Package has restoreAnyVersion; taking data"

    .line 444
    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p6, 0x22

    invoke-static {p4, p6, p1, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 451
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_174

    .line 452
    :cond_a4
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p6

    iget-wide v5, p3, Lcom/android/server/backup/FileMetadata;->version:J

    cmp-long p4, p6, v5

    if-ltz p4, :cond_c1

    const-string p4, "Sig + version match; taking data"

    .line 453
    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 455
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p6, 0x23

    invoke-static {p4, p6, p1, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_174

    :cond_c1
    if-eqz p2, :cond_ee

    .line 466
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Data version "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p6, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, " is newer than installed version "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p6

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " - requiring apk"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_174

    .line 473
    :cond_ee
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Data requires newer version "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p6, p3, Lcom/android/server/backup/FileMetadata;->version:J

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, "; ignoring"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p6, 0x24

    const-string p7, "android.app.backup.extra.LOG_OLD_VERSION"

    iget-wide v5, p3, Lcom/android/server/backup/FileMetadata;->version:J

    .line 481
    invoke-static {v4, p7, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p7

    .line 476
    invoke-static {p4, p6, p1, v3, p7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_174

    .line 490
    :cond_11c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Restore manifest signatures do not match installed application for "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object p4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p6, 0x25

    invoke-static {p4, p6, p1, v3, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_13c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_13c} :catch_13d

    goto :goto_174

    :catch_13d
    if-eqz p2, :cond_15b

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not installed; requiring apk in dataset"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_15d

    .line 533
    :cond_15b
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_15d
    move-object v2, p1

    .line 535
    iget-object p1, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v4, p5, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p4, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    .line 538
    invoke-static {p1, p4, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 541
    iget-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p4, 0x28

    invoke-static {p2, p4, v4, v3, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 549
    :goto_174
    sget-object p1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v2, p1, :cond_1a7

    iget-boolean p1, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    if-nez p1, :cond_1a7

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot restore package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " without the matching .apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 p2, 0x29

    iget-object p3, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 557
    invoke-static {v4, p5, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 552
    invoke-static {p1, p2, v4, v3, p3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :cond_1a7
    return-object v2
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .registers 1

    .line 819
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method public getWidgetData()[B
    .registers 1

    .line 823
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object p0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v1, "BackupManagerService"

    .line 280
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v4, 0x10000

    cmp-long v4, v2, v4

    if-gtz v4, :cond_17a

    long-to-int v4, v2

    .line 284
    new-array v4, v4, [B

    .line 289
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v5, v4, v3, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    int-to-long v5, v2

    iget-wide v7, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_172

    .line 290
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    invoke-interface {v2, v7, v8}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 299
    :try_start_29
    invoke-static {v4, v3, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v3

    .line 300
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v2, :cond_10c

    .line 302
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v3

    .line 305
    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d7

    .line 306
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v3

    .line 307
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p1, Lcom/android/server/backup/FileMetadata;->version:J

    .line 308
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v3

    .line 311
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 312
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v3

    .line 313
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_68

    aget-object v9, v5, v3

    goto :goto_69

    :cond_68
    move-object v9, v7

    :goto_69
    iput-object v9, p1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 314
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v9, v5, v3

    const-string v10, "1"

    .line 315
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p1, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 317
    sget-object v9, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v2, :cond_8d

    .line 318
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v8

    aget-object v2, v5, v3

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/android/server/backup/FileMetadata;->splitCount:I

    .line 322
    :cond_8d
    invoke-static {v4, v8, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    aget-object v8, v5, v3

    .line 323
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_af

    .line 325
    new-array v9, v8, [Landroid/content/pm/Signature;

    move v10, v3

    :goto_9c
    if-ge v10, v8, :cond_ae

    .line 327
    invoke-static {v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v2

    .line 328
    new-instance v11, Landroid/content/pm/Signature;

    aget-object v12, v5, v3

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    :cond_ae
    return-object v9

    .line 332
    :cond_af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing signature on backed-up package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x2a

    iget-object v4, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 338
    invoke-static {v7, v0, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 333
    invoke-static {v2, v3, v7, v6, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_171

    .line 342
    :cond_d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but restore manifest claims "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    .line 346
    invoke-static {v2, v3, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x2b

    invoke-static {v3, v4, v7, v6, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_171

    .line 357
    :cond_10c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown restore manifest version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v7, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v4, v9

    .line 361
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v2

    .line 363
    iget-object v3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v4, 0x2c

    invoke-static {v3, v4, v7, v6, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_141
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_141} :catch_14b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_141} :catch_142

    goto :goto_171

    :catch_142
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_171

    .line 372
    :catch_14b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Corrupt restore manifest for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v2, 0x2e

    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 378
    invoke-static {v7, v0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 373
    invoke-static {v1, v2, v7, v6, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_171
    return-object v7

    .line 292
    :cond_172
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in manifest"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_17a
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore manifest too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x10000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_121

    long-to-int v2, v0

    .line 591
    new-array v3, v2, [B

    .line 592
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v4, v3, v1, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    int-to-long v4, v0

    iget-wide v6, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_119

    .line 593
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    invoke-interface {v0, v6, v7}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 599
    invoke-static {v3, v1, v4}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v5

    aget-object v6, v4, v1

    .line 600
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    const-string v8, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    const-string v9, "BackupManagerService"

    const/4 v10, 0x0

    if-ne v6, v0, :cond_ed

    .line 602
    invoke-static {v3, v5, v4}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v0

    aget-object v1, v4, v1

    .line 604
    iget-object v4, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 607
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v2, v0

    invoke-direct {v1, v3, v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 609
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 610
    :goto_4e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_118

    .line 611
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 612
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/high16 v4, 0x10000

    if-gt v3, v4, :cond_93

    const v4, 0x1ffed01

    if-eq v2, v4, :cond_8b

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring metadata blob "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_4e

    .line 622
    :cond_8b
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 623
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_4e

    .line 614
    :cond_93
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Datum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata mismatch: package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but widget data for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-static {v10, v8, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    .line 643
    invoke-static {p1, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 645
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x2f

    invoke-static {v0, v1, v10, v7, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_118

    .line 653
    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported metadata version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 656
    invoke-static {v10, v8, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    int-to-long v0, v6

    const-string v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 658
    invoke-static {p1, v2, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v1, 0x30

    invoke-static {v0, v1, v10, v7, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :cond_118
    :goto_118
    return-void

    .line 595
    :cond_119
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in widget data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 588
    :cond_121
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata too big; corrupt? size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v2, 0x8000

    cmp-long v2, v0, v2

    const-string v3, "BackupManagerService"

    if-gtz v2, :cond_b2

    const-wide/16 v4, 0x1ff

    add-long/2addr v0, v4

    const/16 v2, 0x9

    shr-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x200

    .line 721
    new-array v1, v0, [B

    .line 722
    iget-object v2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v0, :cond_aa

    .line 725
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v5, v0

    invoke-interface {p0, v5, v6}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 727
    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int p0, v5

    :cond_28
    add-int/lit8 v0, v4, 0x1

    :goto_2a
    if-ge v0, p0, :cond_35

    .line 732
    aget-byte v2, v1, v0

    const/16 v5, 0x20

    if-eq v2, v5, :cond_35

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_35
    if-ge v0, p0, :cond_a2

    sub-int v2, v0, v4

    const/16 v5, 0xa

    .line 740
    invoke-static {v1, v4, v2, v5}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    long-to-int v2, v5

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, -0x1

    add-int/lit8 v5, v0, 0x1

    .line 744
    :goto_47
    aget-byte v6, v1, v5

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_52

    if-gt v5, v2, :cond_52

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_52
    if-gt v5, v2, :cond_9a

    .line 752
    new-instance v6, Ljava/lang/String;

    sub-int v7, v5, v0

    const-string v8, "UTF-8"

    invoke-direct {v6, v1, v0, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 754
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    sub-int/2addr v2, v5

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-direct {v7, v1, v9, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string/jumbo v2, "path"

    .line 756
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 757
    iput-object v7, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_97

    :cond_73
    const-string/jumbo v2, "size"

    .line 758
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 759
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_97

    .line 762
    :cond_83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled pax key: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    if-lt v4, p0, :cond_28

    return v5

    .line 748
    :cond_9a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid pax declaration"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 737
    :cond_a2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid pax data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 723
    :cond_aa
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to read full pax header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_b2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Suspiciously large pax header size "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - aborting"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sanity failure: pax header size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readTarHeader([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    if-lt p1, v2, :cond_17

    .line 706
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v0, 0x200

    invoke-interface {p0, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 p0, 0x1

    return p0

    .line 704
    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to read full block header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BackupManagerService"

    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b7

    .line 112
    :try_start_d
    new-instance v2, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v2}, Lcom/android/server/backup/FileMetadata;-><init>()V

    const/16 v4, 0x7c

    const/16 v5, 0xc

    const/16 v6, 0x8

    .line 113
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const/16 v4, 0x88

    .line 117
    invoke-static {v1, v4, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/backup/FileMetadata;->mtime:J

    const/16 v4, 0x64

    .line 121
    invoke-static {v1, v4, v6, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/backup/FileMetadata;->mode:J

    const/16 v5, 0x159

    const/16 v6, 0x9b

    .line 126
    invoke-static {v1, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v5, 0x0

    .line 129
    invoke-static {v1, v5, v4}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x2f

    if-lez v6, :cond_73

    .line 133
    iget-object v6, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_60

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 136
    :cond_60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_73
    const/16 v4, 0x9c

    aget-byte v6, v1, v4

    const/16 v8, 0x78

    if-ne v6, v8, :cond_92

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v6

    :cond_85
    if-eqz v6, :cond_8a

    aget-byte v6, v1, v4

    goto :goto_92

    .line 150
    :cond_8a
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Bad or missing pax header"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    :goto_92
    if-eqz v6, :cond_19c

    const/16 p0, 0x30

    const/4 v1, 0x1

    if-eq v6, p0, :cond_db

    const/16 p0, 0x35

    if-ne v6, p0, :cond_b0

    const/4 p0, 0x2

    .line 161
    iput p0, v2, Lcom/android/server/backup/FileMetadata;->type:I

    .line 162
    iget-wide v3, v2, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x0

    cmp-long p0, v3, v8

    if-eqz p0, :cond_dd

    const-string p0, "Directory entry with nonzero size in header"

    .line 163
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-wide v8, v2, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_dd

    .line 176
    :cond_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tar entity type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_db
    iput v1, v2, Lcom/android/server/backup/FileMetadata;->type:I

    :cond_dd
    :goto_dd
    const-string/jumbo p0, "shared/"

    .line 184
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {p0, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_112

    .line 187
    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string p0, "com.android.sharedstoragebackup"

    .line 188
    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string/jumbo p0, "shared"

    .line 189
    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File in shared storage: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19a

    :cond_112
    const-string p0, "apps/"

    .line 193
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {p0, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_19a

    .line 198
    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 201
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_181

    .line 205
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 206
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_manifest"

    .line 210
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19a

    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    .line 211
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19a

    .line 212
    iget-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_168

    .line 217
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 218
    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/2addr p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    goto :goto_19a

    .line 214
    :cond_168
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal semantic path in non-manifest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_181
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal semantic path in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19a} :catch_19d

    :cond_19a
    :goto_19a
    move-object v3, v2

    goto :goto_1b7

    :cond_19c
    return-object v3

    :catch_19d
    move-exception p0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error in header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    throw p0

    :cond_1b7
    :goto_1b7
    return-object v3
.end method

.method public skipTarPadding(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x200

    add-long/2addr p1, v0

    .line 567
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_27

    long-to-int p1, p1

    rsub-int p1, p1, 0x200

    .line 573
    new-array p2, p1, [B

    .line 574
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result p2

    if-ne p2, p1, :cond_1f

    .line 575
    iget-object p0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_27

    .line 577
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF in padding"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    :goto_27
    return-void
.end method
