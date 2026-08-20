.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final greylist-max-o PROC_WAKELOCKS_FORMAT:[I

.field private static final blacklist SEC_DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final greylist-max-o WAKEUP_SOURCES_FORMAT:[I

.field private static greylist-max-o sKernelWakelockUpdateVersion:I = 0x0

.field private static final blacklist sSysClassWakeupDir:Ljava/lang/String; = "/sys/class/wakeup"

.field private static final greylist-max-o sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final greylist-max-o sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private blacklist mKernelWakelockBuffer:[B

.field private final greylist-max-o mProcWakelocksData:[J

.field private final greylist-max-o mProcWakelocksName:[Ljava/lang/String;

.field private blacklist mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_14
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_24
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 70
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 72
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    return-void
.end method

.method private blacklist getWakelockStatsFromSystemSuspend(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 7
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 187
    const-string v0, "KernelWakelockReader"

    const/4 v1, 0x0

    .line 189
    .local v1, "wlStats":[Landroid/system/suspend/internal/WakeLockInfo;
    const/4 v2, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/os/KernelWakelockReader;->waitForSuspendControlService()Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    :try_end_a
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_4 .. :try_end_a} :catch_23

    .line 193
    nop

    .line 196
    :try_start_b
    invoke-interface {v3}, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v3

    move-object v1, v3

    .line 197
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/os/KernelWakelockReader;->updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_13} :catch_15

    .line 204
    nop

    .line 206
    return-object p1

    .line 201
    :catch_15
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "SuspendControlService got IllegalArgumentException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    return-object v2

    .line 198
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1c
    move-exception v3

    .line 199
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to obtain wakelock stats from ISuspendControlService"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    return-object v2

    .line 190
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_23
    move-exception v3

    .line 191
    .local v3, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    const-string v4, "Required service suspend_control not available"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    return-object v2
.end method

.method private blacklist waitForSuspendControlService()Landroid/system/suspend/internal/ISuspendControlServiceInternal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 170
    const-string/jumbo v0, "suspend_control_internal"

    .line 171
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x5

    .line 172
    .local v1, "numRetries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/4 v3, 0x5

    const-string/jumbo v4, "suspend_control_internal"

    if-ge v2, v3, :cond_1c

    .line 173
    nop

    .line 174
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 173
    invoke-static {v3}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    .line 175
    if-eqz v3, :cond_19

    .line 176
    return-object v3

    .line 172
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 179
    .end local v2    # "i":I
    :cond_1c
    new-instance v2, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v2, v4}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist-max-o parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 25
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 267
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_a
    const/16 v13, 0xa

    if-ge v12, v10, :cond_19

    aget-byte v0, v9, v12

    if-eq v0, v13, :cond_19

    aget-byte v0, v9, v12

    if-eqz v0, :cond_19

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 268
    :cond_19
    add-int/lit8 v0, v12, 0x1

    move v2, v0

    .line 270
    .local v0, "startIndex":I
    .local v2, "endIndex":I
    monitor-enter p0

    move v14, v0

    .line 271
    .end local v0    # "startIndex":I
    .local v14, "startIndex":I
    :goto_1e
    if-ge v2, v10, :cond_ec

    .line 272
    move v0, v14

    move v15, v0

    .line 273
    .end local v2    # "endIndex":I
    .local v15, "endIndex":I
    :goto_22
    if-ge v15, v10, :cond_2f

    :try_start_24
    aget-byte v0, v9, v15

    if-eq v0, v13, :cond_2f

    aget-byte v0, v9, v15

    if-eqz v0, :cond_2f

    .line 274
    add-int/lit8 v15, v15, 0x1

    goto :goto_22

    .line 277
    :cond_2f
    add-int/lit8 v0, v10, -0x1

    if-le v15, v0, :cond_36

    .line 278
    move v2, v15

    goto/16 :goto_ec

    .line 281
    :cond_36
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 282
    .local v16, "nameStringArray":[Ljava/lang/String;
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    move-object/from16 v17, v0

    .line 286
    .local v17, "wlData":[J
    move v0, v14

    .local v0, "j":I
    :goto_3f
    if-ge v0, v15, :cond_4e

    .line 287
    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4b

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    .line 286
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 289
    .end local v0    # "j":I
    :cond_4e
    nop

    .line 290
    if-eqz p3, :cond_55

    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    move-object v5, v0

    goto :goto_58

    .line 291
    :cond_55
    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    move-object v5, v0

    :goto_58
    const/4 v8, 0x0

    .line 289
    move-object/from16 v2, p1

    move v3, v14

    move v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    .line 294
    .local v2, "parsed":Z
    const/4 v0, 0x0

    aget-object v0, v16, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 295
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x1

    aget-wide v4, v17, v0

    long-to-int v4, v4

    .line 297
    .local v4, "count":I
    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_7b

    .line 299
    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    .local v7, "totalTime":J
    goto :goto_82

    .line 302
    .end local v7    # "totalTime":J
    :cond_7b
    aget-wide v7, v17, v0

    const-wide/16 v18, 0x1f4

    add-long v7, v7, v18

    div-long/2addr v7, v5

    .line 305
    .restart local v7    # "totalTime":J
    :goto_82
    if-eqz v2, :cond_bb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bb

    .line 306
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 307
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e5

    .line 310
    :cond_9b
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 311
    .local v0, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v6, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v5, v6, :cond_b2

    .line 312
    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 313
    iget-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_ba

    .line 315
    :cond_b2
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 316
    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 317
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_ba
    .catchall {:try_start_24 .. :try_end_ba} :catchall_f2

    .line 319
    .end local v0    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :goto_ba
    goto :goto_e5

    .line 320
    :cond_bb
    if-nez v2, :cond_e5

    .line 322
    :try_start_bd
    const-string v0, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse proc line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sub-int v13, v15, v14

    invoke-direct {v6, v9, v14, v13}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_dc} :catch_dd
    .catchall {:try_start_bd .. :try_end_dc} :catchall_f2

    .line 326
    goto :goto_e5

    .line 324
    :catch_dd
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    :try_start_de
    const-string v5, "KernelWakelockReader"

    const-string v6, "Failed to parse proc line!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_f2

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e5
    :goto_e5
    add-int/lit8 v14, v15, 0x1

    .line 329
    .end local v2    # "parsed":Z
    .end local v16    # "nameStringArray":[Ljava/lang/String;
    .end local v17    # "wlData":[J
    move v2, v15

    const/16 v13, 0xa

    goto/16 :goto_1e

    .line 331
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v7    # "totalTime":J
    .end local v15    # "endIndex":I
    .local v2, "endIndex":I
    :cond_ec
    :goto_ec
    :try_start_ec
    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_ee

    return-object v11

    .line 332
    :catchall_ee
    move-exception v0

    move v15, v2

    .end local v2    # "endIndex":I
    .restart local v15    # "endIndex":I
    :goto_f0
    :try_start_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f2

    throw v0

    :catchall_f2
    move-exception v0

    goto :goto_f0
.end method

.method public final greylist-max-o readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 15
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 80
    const-class v0, Lcom/android/internal/os/KernelWakelockReader;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/wakeup"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 82
    .local v1, "useSystemSuspend":Z
    const-string v2, "KernelWakelockReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readKernelWakelockStats("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 86
    monitor-enter v0

    .line 88
    :try_start_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->updateVersion(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v3

    if-nez v3, :cond_41

    .line 90
    const-string v3, "KernelWakelockReader"

    const-string v4, "Failed to get wakelock stats from SystemSuspend"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    monitor-exit v0

    return-object v2

    .line 93
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->removeOldStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 94
    :catchall_47
    move-exception v2

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_47

    throw v2

    .line 96
    :cond_4a
    iget-object v3, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 97
    const/4 v3, 0x0

    .line 99
    .local v3, "len":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 101
    .local v4, "startTime":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v6

    .line 105
    .local v6, "oldMask":I
    :try_start_59
    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/proc/wakelocks"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_60} :catch_68
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_60} :catch_65
    .catchall {:try_start_59 .. :try_end_60} :catchall_62

    .line 106
    .local v7, "is":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 116
    .local v8, "wakeup_sources":Z
    goto :goto_73

    .line 129
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "wakeup_sources":Z
    :catchall_62
    move-exception v0

    goto/16 :goto_119

    .line 125
    :catch_65
    move-exception v0

    goto/16 :goto_10d

    .line 107
    :catch_68
    move-exception v7

    .line 109
    .local v7, "e":Ljava/io/FileNotFoundException;
    :try_start_69
    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/d/wakeup_sources"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_70} :catch_100
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_70} :catch_65
    .catchall {:try_start_69 .. :try_end_70} :catchall_62

    .line 110
    .local v8, "is":Ljava/io/FileInputStream;
    const/4 v9, 0x1

    .line 115
    .local v9, "wakeup_sources":Z
    move-object v7, v8

    move v8, v9

    .line 119
    .end local v9    # "wakeup_sources":Z
    .local v7, "is":Ljava/io/FileInputStream;
    .local v8, "wakeup_sources":Z
    :goto_73
    :try_start_73
    iget-object v9, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v10, v9

    sub-int/2addr v10, v3

    invoke-virtual {v7, v9, v3, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    move v10, v9

    .local v10, "cnt":I
    if-lez v9, :cond_80

    .line 121
    add-int/2addr v3, v10

    goto :goto_73

    .line 124
    :cond_80
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_83} :catch_65
    .catchall {:try_start_73 .. :try_end_83} :catchall_62

    .line 129
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v10    # "cnt":I
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 130
    nop

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 133
    .local v9, "readTime":J
    const-wide/16 v11, 0x64

    cmp-long v2, v9, v11

    if-lez v2, :cond_b0

    .line 134
    const-string v2, "KernelWakelockReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading wakelock stats took "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "ms"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_b0
    if-lez v3, :cond_e0

    .line 138
    iget-object v2, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v2, v2

    if-lt v3, v2, :cond_d2

    .line 139
    const-string v2, "KernelWakelockReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Kernel wake locks exceeded mKernelWakelockBuffer size "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_d2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d3
    if-ge v2, v3, :cond_e0

    .line 144
    iget-object v7, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    aget-byte v7, v7, v2

    if-nez v7, :cond_dd

    .line 145
    move v3, v2

    .line 146
    goto :goto_e1

    .line 143
    :cond_dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 152
    .end local v2    # "i":I
    :cond_e0
    move v2, v3

    .end local v3    # "len":I
    .local v2, "len":I
    :goto_e1
    monitor-enter v0

    .line 153
    :try_start_e2
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->updateVersion(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v3

    if-nez v3, :cond_f2

    .line 156
    const-string v3, "KernelWakelockReader"

    const-string v7, "Failed to get Native wakelock stats from SystemSuspend"

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_f2
    iget-object v3, p0, Lcom/android/internal/os/KernelWakelockReader;->mKernelWakelockBuffer:[B

    invoke-virtual {p0, v3, v2, v8, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelWakelockReader;->removeOldStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 161
    :catchall_fd
    move-exception v3

    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_e2 .. :try_end_ff} :catchall_fd

    throw v3

    .line 111
    .end local v2    # "len":I
    .end local v8    # "wakeup_sources":Z
    .end local v9    # "readTime":J
    .restart local v3    # "len":I
    .local v7, "e":Ljava/io/FileNotFoundException;
    :catch_100
    move-exception v0

    .line 112
    .local v0, "e2":Ljava/io/FileNotFoundException;
    :try_start_101
    const-string v8, "KernelWakelockReader"

    const-string v9, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_108} :catch_65
    .catchall {:try_start_101 .. :try_end_108} :catchall_62

    .line 114
    nop

    .line 129
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 114
    return-object v2

    .line 126
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .local v0, "e":Ljava/io/IOException;
    :goto_10d
    :try_start_10d
    const-string v7, "KernelWakelockReader"

    const-string v8, "failed to read kernel wakelocks"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_62

    .line 127
    nop

    .line 129
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 127
    return-object v2

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :goto_119
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 130
    throw v0
.end method

.method public blacklist removeOldStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 5
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 355
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v1, v1, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v1, v2, :cond_8

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 360
    :cond_1e
    return-object p1
.end method

.method public blacklist updateVersion(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 3
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 342
    sget v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 343
    iput v0, p1, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 344
    return-object p1
.end method

.method public blacklist updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .registers 16
    .param p1, "wlStats"    # [Landroid/system/suspend/internal/WakeLockInfo;
    .param p2, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .line 217
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e3

    aget-object v2, p1, v1

    .line 219
    .local v2, "info":Landroid/system/suspend/internal/WakeLockInfo;
    iget-object v3, v2, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x3e8

    if-nez v3, :cond_25

    .line 220
    const-wide/16 v6, 0x0

    .line 221
    .local v6, "prevTotalTime":J
    iget-object v3, v2, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    new-instance v8, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget-wide v9, v2, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v9, v9

    iget-wide v10, v2, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v10, v4

    sget v12, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {p2, v3, v8}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 224
    .end local v6    # "prevTotalTime":J
    :cond_25
    iget-object v3, v2, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 225
    .local v3, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget-wide v6, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 226
    .restart local v6    # "prevTotalTime":J
    iget-boolean v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    if-nez v8, :cond_4a

    iget v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v9, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v8, v9, :cond_4a

    .line 227
    iget v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v9, v2, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 229
    iget-wide v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    iget-wide v10, v2, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_58

    .line 231
    :cond_4a
    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v8, v8

    iput v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 233
    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v8, v4

    iput-wide v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 234
    sget v8, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v8, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    .line 237
    .end local v3    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :goto_58
    iget-object v3, v2, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    const-string v8, "PowerManager"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v8, v4

    sub-long/2addr v8, v6

    const-wide v10, 0x283baec00L

    cmp-long v3, v8, v10

    if-ltz v3, :cond_df

    .line 239
    :cond_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t isActive="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t lastChange="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->lastChange:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t activeCount="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t activeTime="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t totalTime="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t version="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v8, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\t time_delta="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v2, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v8, v4

    sub-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KernelWakelockReader"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2    # "info":Landroid/system/suspend/internal/WakeLockInfo;
    .end local v6    # "prevTotalTime":J
    :cond_df
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 250
    :cond_e3
    return-object p2
.end method
