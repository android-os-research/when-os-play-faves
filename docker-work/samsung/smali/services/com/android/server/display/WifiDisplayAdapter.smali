.class public final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
    }
.end annotation


# static fields
.field public static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field public static final DEBUG:Z = true

.field public static final DISPLAY_NAME_PREFIX:Ljava/lang/String; = "wifi:"

.field public static final MSG_SEND_STATUS_CHANGE_BROADCAST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WifiDisplayAdapter"


# instance fields
.field public mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field public mActiveDisplayState:I

.field public mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field public mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field public mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

.field public mDisplays:[Landroid/hardware/display/WifiDisplay;

.field public mDlnaController:Lcom/android/server/display/DlnaController;

.field public mFeatureState:I

.field public final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field public mIRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mPendingStatusChangeBroadcast:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field public mScanState:I

.field public mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

.field public final mSupportsProtectedBuffers:Z

.field public mVolumeController:Lcom/android/server/display/VolumeController;

.field public final mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvailableDisplays(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadcastReceiver(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDevice(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDlnaController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/DlnaController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureState(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentDataStore(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScanState(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmActiveDisplay(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmActiveDisplayState(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvailableDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplays(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDlnaController(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/DlnaController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFeatureState(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScanState(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSessionInfo(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeController(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/VolumeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfixRememberedDisplayNamesFromAvailableDisplaysLocked(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->fixRememberedDisplayNamesFromAvailableDisplaysLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendStatusChangeBroadcast(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrenameDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrotationDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->rotationDisplayDeviceLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleStatusChangedBroadcastLocked(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPresentationDisplayInfo(Lcom/android/server/display/WifiDisplayAdapter;ZILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter;->sendPresentationDisplayInfo(ZILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAllowWifiScan(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->setAllowWifiScan(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplaySurfaceLocked(Lcom/android/server/display/WifiDisplayAdapter;Landroid/view/Surface;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaySurfaceLocked(Landroid/view/Surface;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplaysLocked(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRememberedDisplaysLocked(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 12

    const-string v5, "WifiDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 107
    sget-object p1, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 108
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 109
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 731
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$14;

    invoke-direct {p1, p0}, Lcom/android/server/display/WifiDisplayAdapter$14;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 772
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$15;

    invoke-direct {p1, p0}, Lcom/android/server/display/WifiDisplayAdapter$15;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p4, "android.hardware.wifi.direct"

    invoke-virtual {p1, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 131
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    .line 132
    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 133
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110208

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    return-void

    .line 127
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "WiFi display was requested, but there is no WiFi Direct feature"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 20

    move-object v11, p0

    .line 422
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    .line 424
    iget-object v0, v11, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 425
    iget-object v0, v11, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 426
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_18
    and-int/lit8 v0, p5, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_20

    move v0, v12

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    const v3, 0x10000060

    if-eqz v0, :cond_30

    const v3, 0x10000064

    .line 436
    iget-boolean v4, v11, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    if-eqz v4, :cond_30

    const v3, 0x1000006c

    :cond_30
    and-int/lit8 v4, p5, 0x4

    const/4 v5, 0x3

    if-eqz v4, :cond_37

    move v10, v12

    goto :goto_3e

    :cond_37
    and-int/lit8 v4, p5, 0x8

    if-eqz v4, :cond_3d

    move v10, v5

    goto :goto_3e

    :cond_3d
    move v10, v2

    .line 448
    :goto_3e
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v2

    const/high16 v4, 0x20000000

    if-ne v2, v5, :cond_4e

    or-int/lit16 v2, v3, 0x80

    or-int/2addr v2, v4

    and-int/lit8 v2, v2, -0x41

    const/high16 v3, 0x8000000

    or-int/2addr v3, v2

    .line 454
    :cond_4e
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5d

    or-int/lit16 v2, v3, 0x80

    or-int/2addr v2, v4

    and-int/lit8 v2, v2, -0x41

    const/high16 v3, 0x4000000

    or-int/2addr v3, v2

    .line 460
    :cond_5d
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_6e

    .line 461
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v2

    if-ne v2, v12, :cond_6c

    goto :goto_6e

    :cond_6c
    move v7, v3

    goto :goto_71

    :cond_6e
    :goto_6e
    or-int v2, v3, v4

    move v7, v2

    .line 464
    :goto_71
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v2

    if-nez v2, :cond_7a

    .line 465
    invoke-virtual {p0, v12}, Lcom/android/server/display/WifiDisplayAdapter;->setIRefreshRate(Z)V

    :cond_7a
    const/high16 v6, 0x42700000    # 60.0f

    .line 470
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    .line 476
    invoke-static {v3, v0}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 479
    new-instance v13, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-object v0, v13

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;I)V

    iput-object v13, v11, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    .line 481
    invoke-virtual {p0, v13, v12}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 143
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFeatureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvailableDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRememberedDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingStatusChangeBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportsProtectedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-nez v0, :cond_102

    const-string/jumbo p0, "mDisplayController=null"

    .line 158
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11f

    :cond_102
    const-string/jumbo v0, "mDisplayController:"

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-wide/16 v5, 0xc8

    const-string v4, ""

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    :goto_11f
    return-void
.end method

.method public final enableScreenInTile(I)V
    .registers 4

    .line 643
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 6

    .line 412
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    aget-object v2, p0, v1

    .line 413
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public fitToActiveDisplayLocked(Z)V
    .registers 4

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fitToActiveDisplayLocked, status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberActiveDisplayFitStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 611
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_23
    xor-int/lit8 p1, p1, 0x1

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->sendBroadcastScreenRatio(Z)V

    return-void
.end method

.method public final fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    .line 391
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v2

    if-ge v0, v3, :cond_53

    .line 392
    aget-object v2, v2, v0

    .line 394
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {p0, v3}, Lcom/android/server/display/WifiDisplayAdapter;->findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 395
    invoke-virtual {v2, v3}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixRememberedDisplayNamesFromAvailableDisplaysLocked: updating remembered display to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WifiDisplayAdapter"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aput-object v3, v2, v0

    .line 402
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    new-instance v12, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 402
    invoke-virtual {v2, v12}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_53
    if-eqz v1, :cond_5a

    .line 407
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_5a
    return-void
.end method

.method public getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {p0}, Lcom/android/server/display/DlnaController;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object p0

    return-object p0
.end method

.method public getScreenSharingStatus()I
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->getScreenSharingStatus()I

    move-result p0

    return p0
.end method

.method public getVolumeControllerInstance()Lcom/android/server/display/VolumeController;
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    return-object p0
.end method

.method public getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .registers 9

    .line 331
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-nez v0, :cond_18

    .line 332
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 338
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWifiDisplayStatusLocked: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p0
.end method

.method public final handleSendStatusChangeBroadcast()V
    .registers 5

    .line 521
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 522
    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v1, :cond_b

    .line 523
    monitor-exit v0

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 526
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 528
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 530
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    .line 529
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 531
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2e

    .line 534
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_2e
    move-exception p0

    .line 531
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public initializeMcfManager()V
    .registers 1

    .line 637
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz p0, :cond_7

    .line 638
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->initializeMcfManager()V

    :cond_7
    return-void
.end method

.method public isFitToActiveDisplayLocked()Z
    .registers 3

    .line 617
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->getRememberedActiveDisplayFitStatus()Z

    move-result p0

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isFitToActiveDisplayLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isWifiDisplayWithPinSupported"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz p0, :cond_11

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplayWithPinSupported(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public registerLocked()V
    .registers 3

    .line 169
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeDisplayDeviceLocked()V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_14

    .line 486
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->destroyLocked()V

    .line 487
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->setIRefreshRate(Z)V

    :cond_14
    return-void
.end method

.method public final renameDisplayDeviceLocked(Ljava/lang/String;)V
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 496
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setNameLocked(Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_19
    return-void
.end method

.method public requestConnectLocked(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .registers 5

    .line 552
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$9;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestConnectLocked(Ljava/lang/String;)V
    .registers 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestConnectLocked: address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$4;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestDisconnectLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisconnectedLocked"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$7;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$7;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestForgetLocked(Ljava/lang/String;)V
    .registers 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestForgetLocked: address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 320
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 321
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 322
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 325
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 326
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    :cond_3b
    return-void
.end method

.method public requestPauseLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestPauseLocked"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$5;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestRenameLocked: address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_32

    .line 291
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    const/4 p2, 0x0

    :cond_32
    move-object v3, p2

    .line 297
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p2, p1}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object p2

    if-eqz p2, :cond_6a

    .line 298
    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 300
    new-instance v8, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 301
    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 302
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p2, v8}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 303
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 309
    :cond_6a
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz p2, :cond_81

    invoke-virtual {p2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 310
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method public requestResumeLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestResumeLocked"

    .line 257
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$6;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestSetWifiDisplayParameters(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)Z"
        }
    .end annotation

    .line 623
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz p0, :cond_9

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public requestStartScanLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStartScanLocked"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$2;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStartScanLocked(II)V
    .registers 5

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestStartScanLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 541
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopScanLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStopScanLocked"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$3;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .registers 3

    .line 630
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz p0, :cond_9

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final rotationDisplayDeviceLocked(I)V
    .registers 3

    .line 670
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_d

    .line 671
    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setRotationLocked(I)V

    .line 672
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_d
    return-void
.end method

.method public final scheduleStatusChangedBroadcastLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 512
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 514
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method public final sendBroadcastScreenRatio(Z)V
    .registers 4

    .line 677
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$12;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPresentationDisplayInfo(ZILjava/lang/String;)V
    .registers 6

    .line 660
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$11;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAllowWifiScan(Z)V
    .registers 4

    .line 689
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$13;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V
    .registers 4

    .line 578
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DlnaController;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 579
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 580
    invoke-virtual {p1}, Landroid/hardware/display/SemDlnaDevice;->getConnectionState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    .line 582
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    goto :goto_25

    :cond_1d
    if-eqz p1, :cond_22

    const/4 p2, 0x2

    if-ne p1, p2, :cond_25

    .line 585
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    :cond_25
    :goto_25
    return-void
.end method

.method public final setIRefreshRate(Z)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "WifiDisplayAdapter"

    if-eqz p1, :cond_39

    .line 703
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p1, :cond_61

    const-string p1, "display"

    .line 705
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    if-eqz p1, :cond_61

    :try_start_15
    const-string/jumbo v2, "setIRefreshRate acquire"

    .line 708
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-interface {p1, v0, v1}, Landroid/hardware/display/IDisplayManager;->acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_22

    goto :goto_61

    :catch_22
    move-exception p0

    .line 712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIRefreshRate acquire exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 717
    :cond_39
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz p1, :cond_61

    :try_start_3d
    const-string/jumbo p1, "setIRefreshRate release"

    .line 719
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_5f

    :catch_49
    move-exception p1

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIRefreshRate exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_5f
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    :cond_61
    :goto_61
    return-void
.end method

.method public setScreenSharingStatus(I)V
    .registers 2

    .line 599
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayController;->setScreenSharingStatus(I)V

    return-void
.end method

.method public setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 604
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public final updateDisplaySurfaceLocked(Landroid/view/Surface;II)V
    .registers 6

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "updateDisplaySurfaceLocked"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz p0, :cond_f

    .line 505
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->updateSurfaceLocked(Landroid/view/Surface;II)V

    :cond_f
    return-void
.end method

.method public final updateDisplaysLocked()V
    .registers 17

    move-object/from16 v0, p0

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    new-array v2, v2, [Z

    .line 347
    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v4, :cond_62

    aget-object v7, v3, v6

    const/4 v8, 0x0

    .line 349
    :goto_1c
    iget-object v9, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v10, v9

    const/4 v11, 0x1

    if-ge v8, v10, :cond_30

    .line 350
    aget-object v9, v9, v8

    invoke-virtual {v7, v9}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 351
    aput-boolean v11, v2, v8

    goto :goto_31

    :cond_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_30
    const/4 v11, 0x0

    :goto_31
    if-nez v11, :cond_5f

    .line 357
    iget-object v8, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v7, v8}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 359
    iget-object v7, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 361
    :cond_41
    new-instance v15, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    move-object v8, v15

    move-object v5, v15

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_62
    const/4 v5, 0x0

    .line 365
    :goto_63
    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v3

    if-ge v5, v4, :cond_a2

    .line 366
    aget-object v3, v3, v5

    .line 368
    new-instance v4, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 369
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v11

    aget-boolean v12, v2, v5

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v13

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getIconIdx()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    .line 371
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/display/WifiDisplay;->setBluetoothMacAddress(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    .line 373
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 375
    :cond_a2
    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/WifiDisplay;

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-void
.end method

.method public final updateRememberedDisplaysLocked()V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 380
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 381
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    return-void
.end method
