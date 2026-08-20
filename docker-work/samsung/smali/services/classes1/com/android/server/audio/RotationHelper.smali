.class public Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioDisplayListener;
    }
.end annotation


# static fields
.field public static final DEBUG_ROTATION:Z = false

.field public static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field public static sContext:Landroid/content/Context; = null

.field public static sDeviceFold:Z = true

.field public static sDeviceRotation:I

.field public static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field public static sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public static final sFoldStateLock:Ljava/lang/Object;

.field public static sHandler:Landroid/os/Handler;

.field public static final sRotationLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$CS_GLDAGtrLroqbGkSNbeiwM6Ws(Ljava/lang/Boolean;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/audio/RotationHelper;->lambda$enable$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .registers 2

    .line 92
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 93
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 94
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 95
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public static enable()V
    .registers 3

    .line 82
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 84
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 86
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 87
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 2

    if-eqz p0, :cond_11

    .line 75
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 76
    sput-object p1, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 77
    new-instance p0, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-direct {p0}, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;-><init>()V

    sput-object p0, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 78
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    return-void

    .line 73
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$enable$0(Ljava/lang/Boolean;)V
    .registers 1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/audio/RotationHelper;->updateFoldState(Z)V

    return-void
.end method

.method public static publishRotation(I)V
    .registers 2

    if-eqz p0, :cond_28

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const-string p0, "AudioService.RotationHelper"

    const-string v0, "Unknown device rotation"

    .line 136
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_13
    const-string/jumbo p0, "rotation=270"

    .line 133
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2e

    :cond_1a
    const-string/jumbo p0, "rotation=180"

    .line 130
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2e

    :cond_21
    const-string/jumbo p0, "rotation=90"

    .line 127
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2e

    :cond_28
    const-string/jumbo p0, "rotation=0"

    .line 124
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public static updateFoldState(Z)V
    .registers 3

    .line 144
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    sget-boolean v1, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    if-eq v1, p0, :cond_16

    .line 146
    sput-boolean p0, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    if-eqz p0, :cond_11

    const-string p0, "device_folded=on"

    .line 148
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_16

    :cond_11
    const-string p0, "device_folded=off"

    .line 150
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 153
    :cond_16
    :goto_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static updateOrientation()V
    .registers 3

    .line 105
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 108
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 109
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_10
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v2, :cond_19

    .line 111
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 112
    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    .line 114
    :cond_19
    monitor-exit v1

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :goto_1e
    return-void
.end method
