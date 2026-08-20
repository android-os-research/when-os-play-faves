.class public Lcom/android/server/SpegService;
.super Lcom/android/server/SystemService;
.source "SpegService.java"


# static fields
.field public static final SPEG_BLOCK_LIST_PATH:Ljava/lang/String; = "/system/etc/speg-package-blocklist.conf"

.field public static final SPEG_DIR_PATH:Ljava/lang/String; = "/data/misc/speg"

.field public static final TAG:Ljava/lang/String; = "SpegService"


# instance fields
.field public mBlockSpegInstallation:Z

.field public mPrevInstalledPkg:Ljava/lang/String;

.field public volatile mService:Landroid/os/ISpegHelperService;

.field public mSetupWizardFinished:Z

.field public mSpegPackage:Ljava/lang/String;

.field public mSpegState:Z

.field public packageBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MD3Ey9JYooDJrj30Q6Mw42JGAFQ(Lcom/android/server/SpegService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SpegService;->lambda$findSpegHelperService$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/SpegService;Landroid/os/ISpegHelperService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SpegService;->mService:Landroid/os/ISpegHelperService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindSpegHelperService(Lcom/android/server/SpegService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/SpegService;->findSpegHelperService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/server/SpegService;->mSpegPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/server/SpegService;->mSpegState:Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/SpegService;->mBlockSpegInstallation:Z

    .line 76
    iput-boolean p1, p0, Lcom/android/server/SpegService;->mSetupWizardFinished:Z

    const-string p1, "/system/etc/speg-package-blocklist.conf"

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/SpegService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SpegService;->packageBlockList:Ljava/util/Set;

    .line 84
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/SpegService;->cleanupMarkerFiles()V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p0

    const-string p1, "SpegService"

    const-string v0, "Unexpected failure in cleanup marker files"

    .line 86
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method private synthetic lambda$findSpegHelperService$0()V
    .registers 1

    .line 121
    invoke-virtual {p0}, Lcom/android/server/SpegService;->findSpegHelperService()V

    return-void
.end method


# virtual methods
.method public checkSpegState(Ljava/lang/String;)Z
    .registers 3

    .line 387
    iget-boolean v0, p0, Lcom/android/server/SpegService;->mSpegState:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/server/SpegService;->mSpegPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final checkUserAndService(I)Z
    .registers 5

    .line 126
    iget-object p0, p0, Lcom/android/server/SpegService;->mService:Landroid/os/ISpegHelperService;

    const/4 v0, 0x0

    const-string v1, "SpegService"

    if-nez p0, :cond_e

    const-string/jumbo p0, "speg_helper is not initialized"

    .line 127
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_e
    if-gez p1, :cond_25

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method

.method public final cleanupMarkerFiles()V
    .registers 14

    .line 171
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/speg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "SpegService"

    if-eqz v1, :cond_de

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_de

    .line 177
    :cond_17
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1e
    if-ge v4, v1, :cond_dd

    aget-object v5, v0, v4

    .line 179
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_d9

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "speg."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    goto/16 :goto_d9

    .line 183
    :cond_37
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Old speg marker file exists for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_54
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_58} :catch_c0

    .line 192
    invoke-virtual {p0, v6}, Lcom/android/server/SpegService;->getSpegMarkerFilePaths(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8c

    .line 195
    :try_start_5e
    array-length v8, v7

    move v9, v3

    :goto_60
    if-ge v9, v8, :cond_8c

    aget-object v10, v7, v9

    .line 196
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_89

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_89

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete marker file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    .line 202
    :cond_8c
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_d9

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete fileEntry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/SecurityException; {:try_start_5e .. :try_end_aa} :catch_ab

    goto :goto_d9

    .line 206
    :catch_ab
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete marker files for uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 189
    :catch_c0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to convert uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to int"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    :goto_d9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e

    :cond_dd
    return-void

    :cond_de
    :goto_de
    const-string p0, "Failed to read /data/misc/speg"

    .line 173
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final createBufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z
    .registers 7

    const-string v0, "SpegService"

    .line 225
    invoke-virtual {p0, p3}, Lcom/android/server/SpegService;->checkUserAndService(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 229
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/SpegService;->mService:Landroid/os/ISpegHelperService;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/ISpegHelperService;->createOrDeleteMarkerFiles(Ljava/lang/String;ZI)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_10} :catch_14

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :catch_14
    const-string p0, "Trying to use disabled speg_helper"

    .line 235
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 233
    :catch_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create file: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return v2
.end method

.method public final findSpegHelperService()V
    .registers 5

    const-string/jumbo v0, "speg_helper"

    .line 99
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 102
    :try_start_9
    new-instance v1, Lcom/android/server/SpegService$1;

    invoke-direct {v1, p0}, Lcom/android/server/SpegService$1;-><init>(Lcom/android/server/SpegService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    const-string v1, "SpegService"

    if-eqz v0, :cond_25

    .line 116
    invoke-static {v0}, Landroid/os/ISpegHelperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpegHelperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SpegService;->mService:Landroid/os/ISpegHelperService;

    const-string/jumbo p0, "speg_helper found successfully"

    .line 117
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_25
    const-string/jumbo v0, "speg_helper not found; trying again"

    .line 119
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/SpegService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/SpegService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/SpegService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_39
    return-void
.end method

.method public getPidOf(Ljava/lang/String;I)I
    .registers 8

    .line 296
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/fs/cgroup/uid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_78

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_78

    aget-object v2, p2, v1

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pid_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_75

    .line 305
    :cond_40
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/server/SpegService;->getProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 308
    :try_start_53
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_57} :catch_58

    return p0

    :catch_58
    move-exception p0

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to convert pid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to int"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpegService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78

    :cond_75
    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_78
    :goto_78
    const/4 p0, -0x1

    return p0
.end method

.method public final getProcessName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 267
    :try_start_21
    invoke-virtual {p0, v0}, Lcom/android/server/SpegService;->createBufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_4b

    .line 270
    :try_start_25
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3b

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3f

    .line 277
    :try_start_37
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :cond_3b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_4b

    goto :goto_62

    :catchall_3f
    move-exception v0

    if-eqz p0, :cond_4a

    .line 267
    :try_start_42
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p0

    :try_start_47
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    throw v0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read process name for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpegService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSpegMarkerFilePaths(I)[Ljava/lang/String;
    .registers 7

    .line 148
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const/4 v0, 0x0

    const-string v1, "SpegService"

    if-nez p0, :cond_13

    const-string p0, "Could not get package manager"

    .line 150
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 153
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForAppId(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_32

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find apps with uid "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 158
    :cond_32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 159
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v0, :cond_63

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "base.speg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_63
    return-object v1
.end method

.method public hasPrivilegedPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 7

    .line 432
    const-class p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 433
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 434
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 436
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedPermission;

    if-nez v3, :cond_32

    goto :goto_52

    .line 440
    :cond_32
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_52

    .line 441
    :cond_3d
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v3

    if-nez v3, :cond_48

    goto :goto_52

    .line 443
    :cond_48
    invoke-virtual {v3}, Lcom/android/server/pm/permission/Permission;->getProtectionFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_52

    const/4 p0, 0x1

    return p0

    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_55
    return v1
.end method

.method public initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 328
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SpegService"

    if-eqz v1, :cond_4e

    .line 329
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/SpegService;->createBufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_39

    .line 331
    :goto_16
    :try_start_16
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v3, "#"

    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_16

    .line 336
    :cond_25
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2d

    goto :goto_16

    .line 338
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_39

    goto :goto_67

    :catchall_2d
    move-exception v1

    if-eqz p0, :cond_38

    .line 329
    :try_start_30
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception p0

    :try_start_35
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    .line 339
    :catch_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught while reading "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 342
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocklist file "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-object v0
.end method

.method public isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 356
    :cond_4
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 359
    :cond_c
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "*"

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_10

    :cond_25
    const-string v3, "\\S+"

    .line 363
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, "\\."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 365
    :try_start_33
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_37
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_33 .. :try_end_37} :catch_3a

    if-eqz v0, :cond_10

    return v1

    .line 367
    :catch_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid regular expression\'s syntax in pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpegService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_51
    return p0
.end method

.method public isPackageBlockListedForSPEG(Ljava/lang/String;)Z
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/SpegService;->packageBlockList:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SpegService;->isInBlockList(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public isSetupWizardFinished()Z
    .registers 1

    .line 423
    iget-boolean p0, p0, Lcom/android/server/SpegService;->mSetupWizardFinished:Z

    return p0
.end method

.method public isSmartSwitchBlockSpeg()Z
    .registers 1

    .line 410
    iget-boolean p0, p0, Lcom/android/server/SpegService;->mBlockSpegInstallation:Z

    return p0
.end method

.method public onStart()V
    .registers 1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/SpegService;->findSpegHelperService()V

    return-void
.end method

.method public packPrimaryProfToBaseDm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const-string v0, "SpegService"

    .line 249
    invoke-virtual {p0, p4}, Lcom/android/server/SpegService;->checkUserAndService(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 253
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/SpegService;->mService:Landroid/os/ISpegHelperService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/ISpegHelperService;->packPrimaryProfToBaseDm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_10} :catch_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_10} :catch_14

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :catch_14
    const-string p0, "Trying to use disabled speg"

    .line 259
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 257
    :catch_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to prepare DexMetadata "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return v2
.end method

.method public setSetupWizardState(Z)V
    .registers 2

    .line 417
    iput-boolean p1, p0, Lcom/android/server/SpegService;->mSetupWizardFinished:Z

    return-void
.end method

.method public setSmartSwitchState(Z)V
    .registers 2

    .line 403
    iput-boolean p1, p0, Lcom/android/server/SpegService;->mBlockSpegInstallation:Z

    return-void
.end method

.method public setSpegState(Ljava/lang/String;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/android/server/SpegService;->mSpegPackage:Ljava/lang/String;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 396
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/SpegService;->mSpegState:Z

    return-void
.end method
