.class public final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field public static final FLAG_NON_VR_MODE:I = 0x0

.field public static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field public static final FLAG_VR_MODE:I = 0x1

.field public static ORIG_ENUMS:[I = null

.field public static PROTO_ENUMS:[I = null

.field public static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field public final mGlobalAmLock:Ljava/lang/Object;

.field public final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field public mVrRenderThreadTid:I

.field public volatile mVrState:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGlobalAmLock(Lcom/android/server/wm/VrController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVrState(Lcom/android/server/wm/VrController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmVrState(Lcom/android/server/wm/VrController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPersistentVrRenderThreadLocked(Lcom/android/server/wm/VrController;IZ)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetVrRenderThreadLocked(Lcom/android/server/wm/VrController;IIZ)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 59
    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    .line 64
    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 107
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 111
    new-instance v0, Lcom/android/server/wm/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z
    .registers 6

    .line 300
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 305
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    goto :goto_11

    .line 307
    :cond_b
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 310
    :goto_11
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v2, 0x0

    if-eq v0, p1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    if-eqz v1, :cond_2b

    if-eqz p2, :cond_28

    .line 314
    iget p1, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-lez p1, :cond_2b

    .line 316
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result p2

    .line 315
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2b

    .line 319
    :cond_28
    invoke-virtual {p0, v2}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_2b
    :goto_2b
    return v1
.end method

.method public final clearVrRenderThreadLocked(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 453
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 454
    iget v3, p0, Lcom/android/server/wm/VrController;->mVrState:I

    sget-object v4, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    sget-object v5, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    const-wide v1, 0x20e00000001L

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 456
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 457
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final enforceThreadInProcess(II)V
    .registers 3

    .line 426
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 427
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VR thread does not belong to process"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasPersistentVrFlagSet()Z
    .registers 1

    .line 444
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final inVrMode()Z
    .registers 2

    .line 435
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isInterestingToSchedGroup()Z
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onSystemReady()V
    .registers 2

    .line 142
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_f

    .line 144
    iget-object p0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, p0}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_f
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 165
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 167
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_17

    .line 169
    :cond_e
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne p1, v0, :cond_17

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 10

    .line 184
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    const/4 v0, 0x0

    if-nez v1, :cond_d

    return v0

    :cond_d
    const/4 v2, -0x1

    .line 195
    iget-object v3, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_11
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_16

    const/4 v0, 0x1

    .line 198
    :cond_16
    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 199
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 202
    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v0, v7}, Lcom/android/server/wm/VrController;->changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z

    move-result p0

    .line 204
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_2d

    .line 205
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    goto :goto_2e

    :cond_2d
    move p1, v2

    .line 207
    :goto_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_37

    move v2, v0

    move-object v3, v4

    move v4, v5

    move v5, p1

    .line 211
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return p0

    :catchall_37
    move-exception p0

    .line 207
    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final setPersistentVrRenderThreadLocked(IZ)I
    .registers 4

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p2, :cond_f

    const-string p1, "VrController"

    const-string p2, "Failed to set persistent VR thread, system not in persistent VR mode."

    .line 370
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_f
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0

    .line 375
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p0

    return p0
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 265
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-nez v0, :cond_e

    const-string p0, "Persistent VR thread may only be set in persistent VR mode!"

    .line 266
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p3, :cond_16

    const-string p0, "Persistent VR thread not set, calling process doesn\'t exist!"

    .line 270
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    :cond_1b
    const/4 p2, 0x0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public final setVrRenderThreadLocked(IIZ)I
    .registers 7

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    goto :goto_15

    .line 408
    :cond_10
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p0

    return p0

    :cond_15
    :goto_15
    if-nez p3, :cond_3b

    if-nez v0, :cond_1d

    const-string/jumbo p1, "system not in VR mode."

    goto :goto_25

    :cond_1d
    if-eqz v1, :cond_23

    const-string/jumbo p1, "system in persistent VR mode."

    goto :goto_25

    :cond_23
    const-string p1, "caller is not the current top application."

    .line 404
    :goto_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to set VR thread, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VrController"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_3b
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0
.end method

.method public setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-eqz v0, :cond_e

    const-string p0, "VR thread cannot be set in persistent VR mode!"

    .line 232
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p3, :cond_16

    const-string p0, "Persistent VR thread not set, calling process doesn\'t exist!"

    .line 236
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-eqz p1, :cond_1b

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 242
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_28

    const-string p0, "VR thread cannot be set when not in VR mode!"

    .line 243
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 245
    :cond_28
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    :goto_2f
    if-lez p1, :cond_32

    goto :goto_33

    :cond_32
    move p1, v0

    .line 247
    :goto_33
    iput p1, p3, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 1

    .line 285
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 449
    iget v1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateVrRenderThreadLocked(IZ)I
    .registers 4

    .line 338
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_5

    return v0

    :cond_5
    if-lez v0, :cond_d

    .line 343
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    :cond_d
    if-lez p1, :cond_14

    .line 348
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 349
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 351
    :cond_14
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p0
.end method
