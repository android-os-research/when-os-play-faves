.class public Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
.super Ljava/lang/Object;
.source "FrameCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/subsystem/FrameCounter$Singleton;,
        Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK@FrameCounter"


# instance fields
.field private mFps:D

.field private final mLock:Ljava/lang/Object;

.field private mPrevFPSCheckStartTime:J

.field private mPrevFlipCount:I

.field private mPrevFps:D

.field private mPrevPrevCheckStartTime:J

.field private mPrevPrevFlipCount:I

.field private volatile mSkipUpdate:Z

.field private volatile mStopThread:Z

.field private mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mSkipUpdate:Z

    .line 18
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mLock:Ljava/lang/Object;

    .line 20
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    .line 21
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFps:D

    .line 23
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFlipCount:I

    .line 24
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFPSCheckStartTime:J

    .line 26
    iput v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevPrevFlipCount:I

    .line 27
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevPrevCheckStartTime:J

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/subsystem/FrameCounter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/subsystem/FrameCounter$1;

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mSkipUpdate:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->updateFlipCountRecord()V

    return-void
.end method

.method private getFlipCount()I
    .registers 9

    .line 134
    const-string v0, "GameSDK@FrameCounter"

    const/4 v1, -0x1

    .line 136
    .local v1, "flipCount":I
    :try_start_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 137
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_4d

    .line 139
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_b
    const-string v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 141
    .local v4, "surfaceFlinger":Landroid/os/IBinder;
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    if-eqz v4, :cond_26

    const/16 v5, 0x3f5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 143
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_27

    move v1, v5

    .line 147
    .end local v4    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_26
    goto :goto_46

    .line 145
    :catch_27
    move-exception v4

    .line 146
    .local v4, "e":Ljava/lang/Exception;
    :try_start_28
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FAIL] getFlipCount(): inner msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_46
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4c} :catch_4d

    .line 153
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    goto :goto_6c

    .line 151
    :catch_4d
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] getFlipCount(): outer msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6c
    return v1
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    .registers 1

    .line 208
    # getter for: Lcom/samsung/android/gamesdk/subsystem/FrameCounter$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$Singleton;->access$500()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v0

    return-object v0
.end method

.method private isAvailable()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private updateCurrentFps()V
    .registers 14

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_74

    .line 63
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mSkipUpdate:Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 66
    .local v1, "curTime":J
    iget-wide v3, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFPSCheckStartTime:J

    sub-long v3, v1, v3

    .line 67
    .local v3, "duration":J
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getFlipCount()I

    move-result v5

    .line 68
    .local v5, "curFlipCount":I
    const-wide/16 v6, 0xc8

    cmp-long v6, v3, v6

    const-wide v7, 0x408f400000000000L    # 1000.0

    if-gez v6, :cond_2c

    .line 69
    iget v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevPrevFlipCount:I

    sub-int v6, v5, v6

    int-to-double v9, v6

    iget-wide v11, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevPrevCheckStartTime:J

    sub-long v11, v1, v11

    long-to-double v11, v11

    div-double/2addr v11, v7

    div-double/2addr v9, v11

    iput-wide v9, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    goto :goto_3a

    .line 71
    :cond_2c
    iget v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFlipCount:I

    sub-int v6, v5, v6

    int-to-double v9, v6

    iget-wide v11, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFPSCheckStartTime:J

    sub-long v11, v1, v11

    long-to-double v11, v11

    div-double/2addr v11, v7

    div-double/2addr v9, v11

    iput-wide v9, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    .line 74
    :goto_3a
    iget-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_46

    .line 75
    iget-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFps:D

    iput-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    .line 78
    :cond_46
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v6

    const-string v7, "GameSDK@FrameCounter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[PROGRESS] updateCurrentFps(): fps : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput v5, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFlipCount:I

    .line 81
    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFPSCheckStartTime:J

    .line 82
    iget-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    iput-wide v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFps:D

    .line 84
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mSkipUpdate:Z

    .line 85
    .end local v1    # "curTime":J
    .end local v3    # "duration":J
    .end local v5    # "curFlipCount":I
    monitor-exit v0

    .line 88
    goto :goto_95

    .line 85
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_4 .. :try_end_73} :catchall_71

    .end local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    :try_start_73
    throw v1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_74} :catch_74

    .line 86
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    :catch_74
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FrameCounter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] updateCurrentFps(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_95
    return-void
.end method

.method private updateFlipCountRecord()V
    .registers 6

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1c

    .line 160
    :try_start_3
    iget-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFPSCheckStartTime:J

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevPrevCheckStartTime:J

    .line 161
    iget v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFlipCount:I

    iput v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevPrevFlipCount:I

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFPSCheckStartTime:J

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getFlipCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFlipCount:I

    .line 164
    monitor-exit v0

    .line 167
    goto :goto_3d

    .line 164
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    .end local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 165
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/FrameCounter;
    :catch_1c
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@FrameCounter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] updateFlipCountRecord(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 193
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string v1, "GameSDK@FrameCounter:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    sget-boolean v1, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v1, :cond_50

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last fps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    :cond_50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public getFps()D
    .registers 5

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_18

    .line 93
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "GameSDK@FrameCounter"

    const-string v3, "[FAIL] getFps(): FrameCounter is NOT available"

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    const-wide v0, -0x3f70c80000000000L    # -999.0

    return-wide v0

    .line 96
    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->updateCurrentFps()V

    .line 97
    iget-wide v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mFps:D

    return-wide v0
.end method

.method public getGpuFrameTime()D
    .registers 18

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->isAvailable()Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    const/4 v3, 0x0

    const-string v4, "GameSDK@FrameCounter"

    if-nez v0, :cond_18

    .line 109
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v5, "[FAIL] getGpuFrameTime(): FrameCounter is not available"

    invoke-virtual {v0, v4, v3, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 110
    return-wide v1

    .line 114
    :cond_18
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getFps()D

    move-result-wide v5

    .line 115
    .local v5, "currentFps":D
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getGpuUsage()D

    move-result-wide v7

    .line 117
    .local v7, "mGpuUsage":D
    cmpl-double v0, v7, v1

    if-eqz v0, :cond_5f

    .line 118
    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, v5

    .line 119
    .local v9, "mFrameTime":D
    mul-double v11, v7, v9

    .line 120
    .local v11, "temp":D
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double v15, v11, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v0, v1

    div-double/2addr v0, v13

    .line 122
    .local v0, "mGpuFrameTime":D
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getGpuFrameTime(): gpu usage: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", gpu frametime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v4, v3, v13}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 123
    return-wide v0

    .line 125
    .end local v0    # "mGpuFrameTime":D
    .end local v9    # "mFrameTime":D
    .end local v11    # "temp":D
    :cond_5f
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "[FAIL] getGpuFrameTime(): Failed to get proper value"

    invoke-virtual {v0, v4, v3, v1}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_68} :catch_69

    .line 129
    .end local v5    # "currentFps":D
    .end local v7    # "mGpuUsage":D
    goto :goto_88

    .line 127
    :catch_69
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FAIL] getGpuFrameTime(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    const-wide v1, -0x3f70c80000000000L    # -999.0

    return-wide v1
.end method

.method public getPrevFps()D
    .registers 3

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 102
    const-wide v0, -0x3f70c80000000000L    # -999.0

    return-wide v0

    .line 104
    :cond_c
    iget-wide v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mPrevFps:D

    return-wide v0
.end method

.method public start()V
    .registers 5

    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    if-nez v0, :cond_b

    .line 35
    monitor-exit p0

    return-void

    .line 38
    :cond_b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@FrameCounter"

    const-string v2, "[START] start()"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    iput-boolean v3, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    .line 40
    new-instance v0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;-><init>(Lcom/samsung/android/gamesdk/subsystem/FrameCounter;Lcom/samsung/android/gamesdk/subsystem/FrameCounter$1;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;->start()V

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 42
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public stop()V
    .registers 5

    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@FrameCounter"

    const/4 v2, 0x0

    const-string v3, "[STOP] stop()"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mStopThread:Z

    .line 49
    iget-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    if-eqz v0, :cond_17

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;->interrupt()V

    .line 52
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->mThread:Lcom/samsung/android/gamesdk/subsystem/FrameCounter$ThreadGetFlip;

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 53
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method
