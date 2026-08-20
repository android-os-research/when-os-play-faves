.class public Lcom/android/server/wm/MultiResolutionController;
.super Ljava/lang/Object;
.source "MultiResolutionController.java"


# static fields
.field public static final INVALID_DENSITY:I = -0x1

.field public static final INVALID_SIZE:I = -0x1

.field public static final INVALID_USER:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MultiResolutionController"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplaySizeDensityChangedReason:Ljava/lang/String;

.field public mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpDisplaySize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    iput-object p2, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkMultiResolutionChangePermission(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .registers 4

    .line 274
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_31

    .line 278
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_11

    return-void

    .line 279
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input illegalArgument(displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_31
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearForcedDisplaySizeDensity(I)V
    .registers 14

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7c

    if-nez p1, :cond_60

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_50

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 115
    iget-object v3, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiResolutionController;->getForcedDisplaySize(Landroid/graphics/Point;)V

    .line 130
    iget-object v3, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 131
    iget v6, v3, Landroid/graphics/Point;->y:I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/MultiResolutionController;->getForcedDisplayDensity()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 147
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V

    .line 156
    :cond_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_4a

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_50

    .line 158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move v5, p1

    .line 159
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    return-void

    :catchall_4a
    move-exception v3

    .line 156
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v2

    .line 158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move v4, p1

    .line 159
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    .line 162
    throw v2

    .line 109
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input illegalArgument(displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_7c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 293
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDisplaySizeDensityChangedReason: "

    .line 294
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_14
    return-void
.end method

.method public getDisplaySizeDensityChangedReason()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    return-object p0
.end method

.method public getForcedDisplayDensity()I
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_3b

    if-lez v2, :cond_2e

    .line 93
    :try_start_1d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_26
    .catchall {:try_start_1d .. :try_end_21} :catchall_3b

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "MultiResolutionController"

    const-string v3, "NumberFormatException"

    .line 95
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_2e
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_3b
    move-exception p0

    .line 99
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getForcedDisplaySize(Landroid/graphics/Point;)V
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 66
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d

    const/16 v2, 0x2c

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4d

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_5f

    if-ne v2, v3, :cond_4d

    const/4 v2, 0x0

    .line 73
    :try_start_2b
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_40} :catch_45
    .catchall {:try_start_2b .. :try_end_40} :catchall_5f

    .line 76
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catch_45
    move-exception v1

    :try_start_46
    const-string v2, "MultiResolutionController"

    const-string v3, "NumberFormatException"

    .line 78
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_4d
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 83
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 84
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5f
    move-exception p0

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getValidValue(II)I
    .registers 3

    if-gez p1, :cond_3

    return p2

    :cond_3
    return p1
.end method

.method public setForcedDisplaySizeDensity(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .registers 11

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->checkMultiResolutionChangePermission(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    .line 168
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result v3

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result v4

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result v5

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 173
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->setForcedDisplaySizeDensityInner(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_2b

    .line 175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v1

    const/4 v2, -0x1

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v6

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getCallerInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 176
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    return-void

    :catchall_2b
    move-exception v8

    .line 175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v1

    const/4 v2, -0x1

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v6

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getCallerInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 176
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/MultiResolutionController;->updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V

    .line 179
    throw v8
.end method

.method public setForcedDisplaySizeDensityInner(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .registers 12

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result v1

    if-ltz v1, :cond_2c

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result v1

    if-ltz v1, :cond_2c

    move v7, v2

    goto :goto_2d

    :cond_2c
    move v7, v4

    .line 188
    :goto_2d
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result v1

    if-ltz v1, :cond_3b

    move v8, v2

    goto :goto_3c

    :cond_3b
    move v8, v4

    .line 189
    :goto_3c
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    move-result v1

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiResolutionController;->getValidValue(II)I

    move-result v4

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    move-result v1

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiResolutionController;->getValidValue(II)I

    move-result v5

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    move-result v1

    iget v2, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/MultiResolutionController;->getValidValue(II)I

    move-result v6

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getForcedHideCutout()I

    move-result v9

    .line 214
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V

    .line 227
    :cond_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_66
    move-exception p0

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;)V

    return-void
.end method

.method public updateDisplaySizeDensityChangedReason(IIIIIZLjava/lang/String;)V
    .registers 11

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "Pid="

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ProcessName="

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_34

    const-string v2, ", UserId="

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_34
    if-eq p3, v1, :cond_49

    if-eq p4, v1, :cond_49

    const-string p2, ", Size="

    .line 252
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_49
    if-eq p5, v1, :cond_53

    const-string p2, ", Density="

    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_53
    if-eqz p6, :cond_5a

    const-string p2, ", saveToSettings=true"

    .line 258
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    if-eqz p7, :cond_64

    const-string p2, ", info="

    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    const-string p2, ", caller="

    .line 264
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_7a

    .line 268
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    .line 270
    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateDisplaySizeDensityChangedReason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiResolutionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
