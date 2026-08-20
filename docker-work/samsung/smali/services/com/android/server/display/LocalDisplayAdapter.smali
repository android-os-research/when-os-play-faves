.class public final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;,
        Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;,
        Lcom/android/server/display/LocalDisplayAdapter$ProxyDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;,
        Lcom/android/server/display/LocalDisplayAdapter$Injector;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field public static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field public static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field public final mDevices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

.field public final mIsBootDisplayModeSupported:Z

.field public mOverlayContext:Landroid/content/Context;

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDevices(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtryConnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryDisconnectDisplayLocked(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11

    .line 108
    new-instance v5, Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-direct {v5}, Lcom/android/server/display/LocalDisplayAdapter$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 95
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 115
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    .line 116
    invoke-virtual {p5}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->getSurfaceControlProxy()Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getBootDisplayModeSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    return-void
.end method

.method public static getPowerModeForState(I)I
    .registers 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eq p0, v1, :cond_14

    if-eq p0, v2, :cond_e

    return v3

    .line 221
    :cond_e
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    if-eqz p0, :cond_13

    return v3

    :cond_13
    return v1

    .line 213
    :cond_14
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    if-eqz p0, :cond_19

    return v3

    :cond_19
    return v0

    :cond_1a
    return v2

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getOptimizedDisplayMode([Landroid/view/SurfaceControl$DisplayMode;)I
    .registers 13

    .line 240
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    move v1, v3

    :goto_7
    if-ge v0, p0, :cond_36

    aget-object v5, p1, v0

    .line 241
    iget v6, v5, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v7, v5, Landroid/view/SurfaceControl$DisplayMode;->height:I

    mul-int v8, v6, v7

    mul-int v9, v2, v3

    if-ge v8, v9, :cond_16

    goto :goto_33

    .line 244
    :cond_16
    iget v8, v5, Landroid/view/SurfaceControl$DisplayMode;->refreshRate:F

    const v10, 0x426ff5c3    # 59.99f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_20

    goto :goto_33

    :cond_20
    mul-int v10, v6, v7

    if-gt v10, v9, :cond_28

    cmpg-float v9, v8, v4

    if-gez v9, :cond_33

    .line 253
    :cond_28
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v2, v6

    move v3, v7

    move v4, v8

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_36
    return v1
.end method

.method public getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 1566
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 1567
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    .line 1569
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mOverlayContext:Landroid/content/Context;

    return-object p0
.end method

.method public registerLocked()V
    .registers 6

    .line 122
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 124
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener-IA;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->setDisplayEventListenerLocked(Landroid/os/Looper;Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_28

    aget-wide v3, v0, v2

    .line 128
    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    return-void
.end method

.method public final tryConnectDisplayLocked(J)V
    .registers 14

    .line 133
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 134
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_d7

    .line 136
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 137
    invoke-virtual {v0, v3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v6

    const-string v0, "LocalDisplayAdapter"

    if-nez v6, :cond_27

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid static info found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_27
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 143
    invoke-virtual {v1, v3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v7

    if-nez v7, :cond_44

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid dynamic info found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 148
    :cond_44
    iget-object v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    if-nez v1, :cond_5d

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid modes found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_5d
    iget v2, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    if-gez v2, :cond_76

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid active mode found for display device "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_76
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz v2, :cond_84

    iget-boolean v2, v6, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v2, :cond_84

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->getOptimizedDisplayMode([Landroid/view/SurfaceControl$DisplayMode;)I

    move-result v1

    iput v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    .line 165
    :cond_84
    iget v1, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    if-gez v1, :cond_9f

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid active color mode for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 170
    iput v0, v7, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    .line 172
    :cond_9f
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 173
    invoke-virtual {v0, v3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v8

    .line 174
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v0, :cond_cd

    .line 180
    invoke-static {}, Landroid/view/SurfaceControl;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v10, 0x1

    if-nez v0, :cond_ba

    move v9, v10

    goto :goto_bc

    :cond_ba
    const/4 v0, 0x0

    move v9, v0

    .line 183
    :goto_bc
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V

    .line 185
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 186
    invoke-virtual {p0, v0, v10}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_d7

    .line 187
    :cond_cd
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p1

    if-eqz p1, :cond_d7

    const/4 p1, 0x2

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_d7
    :goto_d7
    return-void
.end method

.method public final tryDisconnectDisplayLocked(J)V
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_13

    .line 202
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 p1, 0x3

    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_13
    return-void
.end method
