.class public Lcom/android/server/HeimdAllFsService;
.super Ljava/lang/Object;
.source "HeimdAllFsService.java"


# static fields
.field public static final HEIMDALLFS_SCAN_COMMIT:I = 0x4

.field public static final HEIMDALLFS_SCAN_INIT:I = 0x1

.field public static final HEIMDALLFS_SCAN_STAT:I = 0x2

.field public static final HEIMDALLFS_SERVICE_DEBUG:Ljava/lang/String; = "persist.sys.heimdallfs.debug"

.field public static final HEIMDALLFS_SERVICE_DRYRUN:Ljava/lang/String; = "persist.sys.heimdallfs.dryrun"

.field public static final HEIMDALLFS_SERVICE_FORCE:Ljava/lang/String; = "persist.sys.heimdallfs.force"

.field public static final HEIMDALLFS_SERVICE_FORCE_MODE:Ljava/lang/String; = "persist.sys.heimdallfs.force.mode"

.field public static final HEIMDALLFS_SERVICE_IS_RUN_TODAY:Ljava/lang/String; = "sys.heimdallfs.todayinfo"

.field public static final TAG:Ljava/lang/String; = "HeimdAllFS"

.field public static final THRESHOLD_COMPRESS_TRIGGER:D = 0.1

.field public static final THRESHOLD_DECOMPRESS_TRIGGER:D = 0.15

.field public static final THRESHOLD_UNUSED_MS:J = 0x4d3f6400L

.field public static heimdAllFSSupported:Ljava/lang/Boolean; = null

.field public static mDebugMode:Z = true

.field public static final mDoNotService:Z = false

.field public static mDryrun:Z = false

.field public static final mTestMode:Z = false

.field public static final sCompressDirPath:Ljava/lang/String; = "/data/log"

.field public static final sDataPath:Ljava/lang/String; = "/data/"

.field public static final sSysfsSupportDnodeRelocate:Ljava/lang/String; = "/sys/fs/f2fs/features/sec_dnode_relocation"

.field public static final sTempFilePostfix:Ljava/lang/String; = ".compress.tmp"

.field public static final sUserdataSysfsPath:Ljava/lang/String; = "/sys/fs/f2fs/userdata/feature_list/compression"

.field public static final sUserdataSysfsPathLegacy:Ljava/lang/String; = "/sys/fs/f2fs/userdata/features"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

.field public mHeimdallFsThread:Ljava/lang/Thread;

.field public volatile mInstalld:Landroid/os/IInstalld;

.field public mPackagesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mUsageStats:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0KLb71xlGmFeh--FtV9FnOvDMGU(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$scanApkPackagesForBigdata$7(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4T93knqS6-npfUXWJ90IA8UZrsY(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$doCompressPackages$6(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NmTFjjT-TaiHK9wj3VlmuD6d6xY(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$getPackagesOnUserdata$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O34VMu3KJnswA5VatbQ26jqIM34(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$doCompressFilesInDir$4(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YP9CKURD05zlzxF3Cfe-tmCR-LQ(Ljava/nio/file/Path;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$getPackagesOnUserdata$2(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLY3XEsNpSP0J9XI-gnFCkGZI7Q(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$getPackagesOnUserdata$1(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bQ4MhcPCJv8XG_jNXN4dH0_tBOI(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$doCompressFilesInDir$3(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lS5P2QcbZLdfyk8eMsaUHMrXViE(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$doCompressPackages$5(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rbb49d2zFVwH467YgyMTeoBCLPc(Ljava/nio/file/Path;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/HeimdAllFsService;->lambda$scanApkPackagesForBigdata$8(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHeimdallFsLatch(Lcom/android/server/HeimdAllFsService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    .line 87
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 89
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    .line 91
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 106
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->connectInstalld()V

    const-string/jumbo p0, "persist.sys.heimdallfs.dryrun"

    .line 111
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DEBUG: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    const-string v0, "TRUE"

    const-string v1, "FALSE"

    if-eqz p1, :cond_35

    move-object p1, v0

    goto :goto_36

    :cond_35
    move-object p1, v1

    :goto_36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Dry-run: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move-object v0, v1

    :goto_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Last-run: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sys.heimdallfs.todayinfo"

    .line 119
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HeimdAllFS"

    .line 118
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isServiceActivate()Z
    .registers 8

    const-string/jumbo v0, "persist.sys.heimdallfs.force"

    .line 128
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 131
    :cond_12
    sget-object v0, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    .line 132
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 134
    :cond_1b
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/fs/f2fs/userdata/features"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "HeimdAllFS"

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    move v2, v1

    goto :goto_46

    .line 138
    :cond_2d
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/fs/f2fs/userdata/feature_list/compression"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_45

    const-string/jumbo v0, "getServiceLevel: [/sys/fs/f2fs/userdata/feature_list/compression] or legacy path does not exist"

    .line 141
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    return v4

    :cond_45
    move v2, v4

    :goto_46
    const/4 v5, 0x0

    .line 148
    :try_start_47
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_8e
    .catchall {:try_start_47 .. :try_end_4c} :catchall_8b

    .line 149
    :try_start_4c
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_51} :catch_8f
    .catchall {:try_start_4c .. :try_end_51} :catchall_89

    .line 151
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_75

    if-eqz v2, :cond_61

    const-string v7, "compression"

    .line 152
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    :cond_61
    if-nez v2, :cond_51

    const-string/jumbo v7, "supported"

    .line 153
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 155
    :cond_6c
    sget-object v2, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_76

    .line 156
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    goto :goto_76

    :cond_75
    move v1, v4

    :cond_76
    :goto_76
    if-nez v1, :cond_7d

    const-string v2, "[/sys/fs/f2fs/userdata/feature_list/compression] does not have [compression] feature"

    .line 161
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_7d} :catch_87
    .catchall {:try_start_51 .. :try_end_7d} :catchall_84

    .line 166
    :cond_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_80

    .line 167
    :catch_80
    :try_start_80
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_9f

    goto :goto_9f

    :catchall_84
    move-exception v1

    move-object v5, v0

    goto :goto_bb

    :catch_87
    move-object v5, v0

    goto :goto_8f

    :catchall_89
    move-exception v1

    goto :goto_bb

    :catchall_8b
    move-exception v1

    move-object v6, v5

    goto :goto_bb

    :catch_8e
    move-object v6, v5

    :catch_8f
    :goto_8f
    :try_start_8f
    const-string v0, "Error while reading [/sys/fs/f2fs/userdata/feature_list/compression]"

    .line 163
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_89

    if-eqz v5, :cond_99

    .line 166
    :try_start_96
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_99

    :catch_99
    :cond_99
    if-eqz v6, :cond_9e

    .line 167
    :try_start_9b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9e

    :catch_9e
    :cond_9e
    move v1, v4

    :catch_9f
    :goto_9f
    if-nez v1, :cond_a2

    return v1

    .line 173
    :cond_a2
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/fs/f2fs/features/sec_dnode_relocation"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 175
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/HeimdAllFsService;->heimdAllFSSupported:Ljava/lang/Boolean;

    const-string v0, "[/sys/fs/f2fs/features/sec_dnode_relocation] does not have [dnode_relocation] feature"

    .line 177
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    :cond_b9
    move v4, v1

    :goto_ba
    return v4

    :goto_bb
    if-eqz v5, :cond_c0

    .line 166
    :try_start_bd
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    :catch_c0
    :cond_c0
    if-eqz v6, :cond_c5

    .line 167
    :try_start_c2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c5

    .line 168
    :catch_c5
    :cond_c5
    throw v1
.end method

.method public static synthetic lambda$doCompressFilesInDir$3(Ljava/nio/file/Path;)Z
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 340
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$doCompressFilesInDir$4(Ljava/nio/file/Path;)Z
    .registers 2

    .line 341
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*\\.(zip|gz)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$doCompressPackages$5(Ljava/nio/file/Path;)Z
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 384
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$doCompressPackages$6(Ljava/nio/file/Path;)Z
    .registers 2

    .line 385
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*\\.[ov]dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesOnUserdata$0(Ljava/nio/file/Path;)Z
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 206
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesOnUserdata$1(Ljava/nio/file/Path;)Z
    .registers 2

    .line 207
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*\\.[ov]dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getPackagesOnUserdata$2(Ljava/nio/file/Path;)V
    .registers 2

    .line 214
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HeimdAllFS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$scanApkPackagesForBigdata$7(Ljava/nio/file/Path;)Z
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 451
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$scanApkPackagesForBigdata$8(Ljava/nio/file/Path;)Z
    .registers 2

    .line 452
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*\\.[ov]dex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abort()V
    .registers 3

    const-string v0, "HeimdAllFS"

    const-string v1, "Abort()"

    .line 546
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    return-void
.end method

.method public final connectInstalld()V
    .registers 2

    const-string/jumbo v0, "installd"

    .line 314
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    return-void
.end method

.method public doCompressAction(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "HeimdAllFS"

    .line 319
    :try_start_2
    sget-boolean v1, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v1, :cond_29

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCompressAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_15

    const-string v2, "Comp"

    goto :goto_17

    :cond_15
    const-string v2, "Decomp"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_29
    sget-boolean v1, Lcom/android/server/HeimdAllFsService;->mDryrun:Z

    if-eqz v1, :cond_2e

    return-void

    .line 325
    :cond_2e
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->compressFile(Ljava/lang/String;Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_33} :catch_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_5d

    .line 329
    :catch_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: Exception!! "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 327
    :catch_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: Compress/Decompress RemoteException, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-void
.end method

.method public doCompressFilesInDir(Ljava/lang/String;)V
    .registers 8

    .line 335
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCompressFilesInDir Start!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeimdAllFS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_1c
    new-array v4, v1, [Ljava/lang/String;

    .line 339
    invoke-static {p1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v1, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v4, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_56

    .line 340
    :try_start_28
    new-instance v4, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda6;-><init>()V

    .line 341
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 342
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_4a

    .line 343
    :try_start_44
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_6b

    :catch_48
    move-object v3, v4

    goto :goto_56

    :catchall_4a
    move-exception v4

    if-eqz v1, :cond_55

    .line 339
    :try_start_4d
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v1

    :try_start_52
    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw v4
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    .line 344
    :catch_56
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while reading dir: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :goto_6b
    if-eqz v4, :cond_8f

    .line 348
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 349
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    goto :goto_8f

    .line 351
    :cond_86
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    goto :goto_71

    :cond_8f
    :goto_8f
    return-void
.end method

.method public doCompressPackages(Z)V
    .registers 11

    .line 357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCompressPackages Start!! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    const-string v2, "Compress"

    goto :goto_15

    :cond_13
    const-string v2, "Decompress"

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeimdAllFS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-boolean v1, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v1, :cond_2a

    const-string v1, "Get Package Info!!"

    .line 362
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->getAppUsageStats()Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    .line 364
    invoke-virtual {p0}, Lcom/android/server/HeimdAllFsService;->getPackagesOnUserdata()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 365
    iget-object v3, p0, Lcom/android/server/HeimdAllFsService;->mUsageStats:Ljava/util/SortedMap;

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/HeimdAllFsService;->getCandidatePackages(Ljava/util/List;Ljava/util/SortedMap;Z)Ljava/util/List;

    move-result-object v1

    .line 367
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_108

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 368
    iget-object v4, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto/16 :goto_108

    .line 371
    :cond_56
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    .line 372
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_70

    .line 373
    array-length v6, v4

    move v7, v5

    :goto_66
    if-ge v7, v6, :cond_70

    aget-object v8, v4, v7

    .line 374
    invoke-virtual {p0, v8, p1}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 378
    :cond_70
    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 381
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/oat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 383
    :try_start_9a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    const/4 v6, 0x2

    new-array v5, v5, [Ljava/nio/file/FileVisitOption;

    invoke-static {v4, v6, v5}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v4
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_ba} :catch_e9

    .line 384
    :try_start_ba
    new-instance v5, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda1;-><init>()V

    .line 385
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 386
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_d6
    .catchall {:try_start_ba .. :try_end_d6} :catchall_dd

    .line 387
    :try_start_d6
    invoke-interface {v4}, Ljava/util/stream/Stream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_db

    move-object v3, v5

    goto :goto_ee

    :catch_db
    move-object v3, v5

    goto :goto_e9

    :catchall_dd
    move-exception v5

    if-eqz v4, :cond_e8

    .line 383
    :try_start_e0
    invoke-interface {v4}, Ljava/util/stream/Stream;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_e8

    :catchall_e4
    move-exception v4

    :try_start_e5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e8
    :goto_e8
    throw v5
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e9} :catch_e9

    :catch_e9
    :goto_e9
    const-string v4, "Error while reading oat path"

    .line 388
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    :goto_ee
    if-eqz v3, :cond_40

    .line 392
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 393
    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/HeimdAllFsService;->doCompressAction(Ljava/lang/String;Z)V

    goto :goto_f4

    :cond_108
    :goto_108
    return-void
.end method

.method public dumpPackageState(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)[J
    .registers 9

    const-string v0, "HeimdAllFS"

    const/4 v1, 0x2

    new-array v1, v1, [J

    .line 551
    fill-array-data v1, :array_d0

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    :try_start_1d
    invoke-static {p2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 555
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incremental Delivery APK: SKIP! : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-object v1

    :cond_38
    const-string v2, "Compressed? "

    .line 559
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p2, v1}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_6d

    const-string p0, "True"

    .line 561
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size info: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ce

    :cond_6d
    aget-wide v2, v1, v2

    const-wide/16 v4, 0x10cf

    cmp-long p0, v2, v4

    if-nez p0, :cond_7b

    const-string p0, "Unknown - failed to acquire installd mLock"

    .line 566
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ce

    :cond_7b
    const-string p0, "False"

    .line 568
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_80} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_80} :catch_81

    goto :goto_ce

    .line 574
    :catch_81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Exception, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 575
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    .line 571
    :catch_a8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: getCompressedStats RemoteException, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ce
    return-object v1

    nop

    :array_d0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getAppUsageStats()Ljava/util/SortedMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x4d3f6400

    sub-long v3, v1, v3

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 235
    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 240
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 241
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v1, 0x2

    .line 239
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p0

    .line 243
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p0, :cond_81

    .line 245
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 246
    sget-boolean v2, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v2, :cond_71

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Used package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HeimdAllFS"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_71
    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_81
    return-object v0
.end method

.method public getCandidatePackages(Ljava/util/List;Ljava/util/SortedMap;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "persist.sys.heimdallfs.force"

    .line 262
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    const-string v2, "HeimdAllFS"

    if-eqz p3, :cond_4f

    if-nez v0, :cond_31

    .line 265
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 266
    invoke-interface {p2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4f

    .line 268
    :cond_31
    sget-boolean v3, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v3, :cond_4b

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressCandidate App : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_4b
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_4f
    if-nez p3, :cond_17

    if-nez v0, :cond_5b

    .line 272
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 273
    invoke-interface {p2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 275
    :cond_5b
    sget-boolean v3, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v3, :cond_75

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "de-compressCandidate App : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_75
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_79
    return-object p0
.end method

.method public getPackagesOnUserdata()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_146

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 193
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/data/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 194
    sget-boolean v3, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    const-string v4, "HeimdAllFS"

    if-eqz v3, :cond_11f

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Info = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package source Dir = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incremental Delivery? = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v3, Ljava/io/File;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OAT Dir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/oat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 203
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_115

    .line 205
    :try_start_c1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {v3, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const/4 v6, 0x2

    new-array v7, v0, [Ljava/nio/file/FileVisitOption;

    invoke-static {v3, v6, v7}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v3
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_e1} :catch_110

    .line 206
    :try_start_e1
    new-instance v6, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda3;-><init>()V

    .line 207
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 208
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_fd
    .catchall {:try_start_e1 .. :try_end_fd} :catchall_104

    .line 209
    :try_start_fd
    invoke-interface {v3}, Ljava/util/stream/Stream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_102

    move-object v5, v6

    goto :goto_115

    :catch_102
    move-object v5, v6

    goto :goto_110

    :catchall_104
    move-exception v6

    if-eqz v3, :cond_10f

    .line 205
    :try_start_107
    invoke-interface {v3}, Ljava/util/stream/Stream;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10b

    goto :goto_10f

    :catchall_10b
    move-exception v3

    :try_start_10c
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10f
    :goto_10f
    throw v6
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_110} :catch_110

    :catch_110
    :goto_110
    const-string v3, "Error while reading oat path"

    .line 210
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    :goto_115
    if-eqz v5, :cond_11f

    .line 214
    new-instance v3, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v5, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 216
    :cond_11f
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incremental Delivery APK: SKIP! : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 220
    :cond_141
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_146
    return-object v1
.end method

.method public scanApkPackagesForBigdata()V
    .registers 16

    .line 411
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const-string v3, ""

    move v4, v2

    move v6, v4

    move-object v5, v3

    .line 418
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_109

    .line 419
    iget-object v7, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    goto/16 :goto_109

    .line 424
    :cond_24
    iget-object v7, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "HeimdAllFS"

    if-nez v7, :cond_39

    .line 425
    sget-boolean v0, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    if-eqz v0, :cond_109

    const-string v0, "Break!!"

    .line 426
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_109

    .line 430
    :cond_39
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v9, "/data/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4d

    goto/16 :goto_105

    .line 434
    :cond_4d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_56

    const/4 v5, 0x3

    goto :goto_57

    :cond_56
    move v5, v7

    .line 436
    :goto_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ne v4, v9, :cond_62

    or-int/lit8 v5, v5, 0x4

    move v6, v10

    .line 441
    :cond_62
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 442
    invoke-virtual {p0, v9, v5}, Lcom/android/server/HeimdAllFsService;->scanCompressedFileAction(Ljava/lang/String;I)V

    and-int/lit8 v5, v5, -0x2

    .line 446
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 448
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/oat"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_ea

    .line 450
    :try_start_97
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v2, [Ljava/lang/String;

    invoke-static {v10, v12}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    new-array v12, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {v10, v7, v12}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v7
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_b6} :catch_e5

    .line 451
    :try_start_b6
    new-instance v10, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda7;

    invoke-direct {v10}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v7, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v12, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda8;

    invoke-direct {v12}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticLambda8;-><init>()V

    .line 452
    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 453
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;
    :try_end_d2
    .catchall {:try_start_b6 .. :try_end_d2} :catchall_d9

    .line 454
    :try_start_d2
    invoke-interface {v7}, Ljava/util/stream/Stream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d7

    move-object v11, v10

    goto :goto_ea

    :catch_d7
    move-object v11, v10

    goto :goto_e5

    :catchall_d9
    move-exception v10

    if-eqz v7, :cond_e4

    .line 450
    :try_start_dc
    invoke-interface {v7}, Ljava/util/stream/Stream;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_e4

    :catchall_e0
    move-exception v7

    :try_start_e1
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e4
    :goto_e4
    throw v10
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e5} :catch_e5

    :catch_e5
    :goto_e5
    const-string v7, "Error while reading oat path"

    .line 455
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    :goto_ea
    if-eqz v11, :cond_104

    .line 459
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_104

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/file/Path;

    .line 460
    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/android/server/HeimdAllFsService;->scanCompressedFileAction(Ljava/lang/String;I)V

    goto :goto_f0

    :cond_104
    move-object v5, v9

    :goto_105
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    :cond_109
    :goto_109
    if-nez v6, :cond_115

    .line 465
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    const/4 v0, 0x4

    .line 467
    invoke-virtual {p0, v5, v0}, Lcom/android/server/HeimdAllFsService;->scanCompressedFileAction(Ljava/lang/String;I)V

    :cond_115
    return-void
.end method

.method public scanCompressedFileAction(Ljava/lang/String;I)V
    .registers 6

    .line 400
    sget-boolean v0, Lcom/android/server/HeimdAllFsService;->mDebugMode:Z

    const-string v1, "HeimdAllFS"

    if-eqz v0, :cond_22

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan Compressed File!! ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_22
    :try_start_22
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_3c

    .line 406
    :catch_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: scanApkStats RemoteException, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-void
.end method

.method public start()V
    .registers 3

    .line 474
    new-instance v0, Lcom/android/server/HeimdAllFsService$1;

    const-string v1, "HeimdAllFS"

    invoke-direct {v0, p0, v1}, Lcom/android/server/HeimdAllFsService$1;-><init>(Lcom/android/server/HeimdAllFsService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Ljava/lang/Thread;

    .line 529
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public waitForFinished()V
    .registers 3

    const-string v0, "HeimdAllFS"

    .line 534
    :try_start_2
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_14

    const-string/jumbo v1, "waitForFinished, HeimdAllLatch await"

    .line 535
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v1, 0x0

    .line 537
    iput-object v1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_14
    const-string/jumbo p0, "waitForFinished, HeimdAllLatch await End"

    .line 539
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    const-string p0, "Interrupt while waiting for heimdallFsLatch:CountDownLatch(1)"

    .line 541
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method
