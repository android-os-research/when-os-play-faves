.class Landroid/media/MediaRouter$Static;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$Static$Client;
    }
.end annotation


# instance fields
.field greylist-max-o mActivelyScanningWifiDisplays:Z

.field final greylist-max-o mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

.field final greylist-max-o mAudioService:Landroid/media/IAudioService;

.field greylist-max-o mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

.field final greylist-max-o mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mCanConfigureWifiDisplays:Z

.field final greylist-max-o mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteCategory;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mClient:Landroid/media/IMediaRouterClient;

.field greylist-max-o mClientState:Landroid/media/MediaRouterClientState;

.field final greylist-max-o mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

.field greylist-max-o mCurrentUserId:I

.field greylist-max-o mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

.field greylist-max-o mDiscoverRequestActiveScan:Z

.field greylist-max-o mDiscoveryRequestRouteTypes:I

.field final greylist-max-o mDisplayService:Landroid/hardware/display/DisplayManager;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field blacklist mIsBluetoothA2dpOn:Z

.field final greylist-max-o mMediaRouterService:Landroid/media/IMediaRouterService;

.field final greylist-max-o mPackageName:Ljava/lang/String;

.field greylist-max-o mPreviousActiveWifiDisplayAddress:Ljava/lang/String;

.field final greylist-max-o mResources:Landroid/content/res/Resources;

.field final greylist-max-o mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

.field blacklist mStreamVolume:Landroid/util/SparseIntArray;

.field final greylist-max-o mSystemCategory:Landroid/media/MediaRouter$RouteCategory;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "appContext"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCategories:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 122
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    .line 124
    new-instance v0, Landroid/media/MediaRouter$Static$1;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$1;-><init>(Landroid/media/MediaRouter$Static;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    .line 147
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    .line 150
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 152
    nop

    .line 153
    const-string v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 152
    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 155
    new-instance v1, Landroid/media/MediaRouter$RouteCategory;

    const v2, 0x1040411

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/MediaRouter$RouteCategory;-><init>(IIZ)V

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    .line 158
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/media/MediaRouter$RouteCategory;->mIsSystem:Z

    .line 163
    nop

    .line 165
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 163
    const-string v5, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p1, v5, v1, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_8b

    move v4, v2

    :cond_8b
    iput-boolean v4, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    .line 166
    return-void
.end method

.method private greylist-max-o updatePresentationDisplays(I)V
    .registers 6
    .param p1, "changedDisplayId"    # I

    .line 412
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 413
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_29

    .line 414
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 415
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eqz v3, :cond_26

    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    .line 416
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 417
    :cond_23
    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 413
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 420
    .end local v1    # "i":I
    :cond_29
    return-void
.end method


# virtual methods
.method greylist-max-o findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;
    .registers 6
    .param p1, "globalRouteId"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 649
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 650
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 651
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v3, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 652
    return-object v2

    .line 649
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 655
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getAllPresentationDisplays()[Landroid/view/Display;
    .registers 4

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 405
    :catch_9
    move-exception v0

    .line 406
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to get displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getStreamVolume(I)I
    .registers 7
    .param p1, "streamType"    # I

    .line 291
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 292
    .local v0, "idx":I
    if-gez v0, :cond_22

    .line 293
    const/4 v1, 0x0

    .line 295
    .local v1, "volume":I
    :try_start_9
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v2, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v2

    move v1, v2

    .line 296
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_18
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    .line 300
    return v1

    :catchall_16
    move-exception v2

    goto :goto_21

    .line 297
    :catch_18
    move-exception v2

    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v3, "MediaRouter"

    const-string v4, "Error getting local stream volume"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    .line 300
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_21
    return v1

    .line 303
    .end local v1    # "volume":I
    :cond_22
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mStreamVolume:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1
.end method

.method blacklist handleGroupRouteSelected(Ljava/lang/String;)V
    .registers 7
    .param p1, "routeId"    # Ljava/lang/String;

    .line 423
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 425
    .local v0, "routeToSelect":Landroid/media/MediaRouter$RouteInfo;
    :goto_b
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 426
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_28

    .line 427
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 428
    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v4, v3, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 429
    move-object v0, v3

    .line 426
    .end local v3    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 432
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v0, v2, :cond_32

    .line 433
    iget v2, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 435
    :cond_32
    return-void
.end method

.method greylist-max-o isBluetoothA2dpOn()Z
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o isPlaybackActive()Z
    .registers 4

    .line 659
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_13

    .line 661
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v1, v0}, Landroid/media/IMediaRouterService;->isPlaybackActive(Landroid/media/IMediaRouterClient;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 662
    :catch_b
    move-exception v0

    .line 663
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to retrieve playback active state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .registers 4
    .param p1, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .line 562
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 563
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 564
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 565
    iget-object v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 566
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 567
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->deviceType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 568
    iget-boolean v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v1, v0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 569
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 570
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 571
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 572
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 573
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 574
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 575
    iget v1, p1, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 576
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 577
    return-object v0
.end method

.method public whitelist onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 379
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 380
    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 384
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 385
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 389
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$Static;->updatePresentationDisplays(I)V

    .line 390
    return-void
.end method

.method greylist-max-o publishClientDiscoveryRequest()V
    .registers 5

    .line 471
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_16

    .line 473
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget v2, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    iget-boolean v3, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    invoke-interface {v1, v0, v2, v3}, Landroid/media/IMediaRouterService;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    .line 477
    goto :goto_16

    .line 475
    :catch_e
    move-exception v0

    .line 476
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to publish media router client discovery request."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method

.method greylist-max-o publishClientSelectedRoute(Z)V
    .registers 5
    .param p1, "explicit"    # Z

    .line 482
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_1a

    .line 484
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 485
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_d

    iget-object v2, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 484
    :goto_e
    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 489
    goto :goto_1a

    .line 487
    :catch_12
    move-exception v0

    .line 488
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to publish media router client selected route."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method greylist-max-o rebindAsUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 444
    iget v0, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    if-ne v0, p1, :cond_a

    if-ltz p1, :cond_a

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-nez v0, :cond_40

    .line 445
    :cond_a
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    const-string v1, "MediaRouter"

    if-eqz v0, :cond_1f

    .line 447
    :try_start_10
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v2, v0}, Landroid/media/IMediaRouterService;->unregisterClient(Landroid/media/IMediaRouterClient;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 450
    goto :goto_1c

    .line 448
    :catch_16
    move-exception v0

    .line 449
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Unable to unregister media router client."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 454
    :cond_1f
    iput p1, p0, Landroid/media/MediaRouter$Static;->mCurrentUserId:I

    .line 457
    :try_start_21
    new-instance v0, Landroid/media/MediaRouter$Static$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$Static$Client;-><init>(Landroid/media/MediaRouter$Static;)V

    .line 458
    .local v0, "client":Landroid/media/MediaRouter$Static$Client;
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0, v3, p1}, Landroid/media/IMediaRouterService;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 459
    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2f} :catch_30

    .line 462
    .end local v0    # "client":Landroid/media/MediaRouter$Static$Client;
    goto :goto_36

    .line 460
    :catch_30
    move-exception v0

    .line 461
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Unable to register media router client."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_36
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 466
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 468
    :cond_40
    return-void
.end method

.method greylist-max-o requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .line 540
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_18

    .line 542
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p2}, Landroid/media/IMediaRouterService;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 546
    goto :goto_18

    .line 544
    :catch_10
    move-exception v0

    .line 545
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to request volume change."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method greylist-max-o requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V
    .registers 6
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "direction"    # I

    .line 551
    iget-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_18

    .line 553
    :try_start_8
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p1, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p2}, Landroid/media/IMediaRouterService;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 557
    goto :goto_18

    .line 555
    :catch_10
    move-exception v0

    .line 556
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to request volume change."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist setRouterGroupId(Ljava/lang/String;)V
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v0, :cond_12

    .line 395
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v1, v0, p1}, Landroid/media/IMediaRouterService;->registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 398
    goto :goto_12

    .line 396
    :catch_a
    move-exception v0

    .line 397
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Unable to register group ID of the client."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method greylist-max-o setSelectedRoute(Landroid/media/MediaRouter$RouteInfo;Z)V
    .registers 3
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "explicit"    # Z

    .line 439
    iput-object p1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 440
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$Static;->publishClientSelectedRoute(Z)V

    .line 441
    return-void
.end method

.method greylist-max-o startMonitoringRoutes(Landroid/content/Context;)V
    .registers 5
    .param p1, "appContext"    # Landroid/content/Context;

    .line 170
    new-instance v0, Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v0, v1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    .line 171
    const v1, 0x1040413

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 172
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x3

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 173
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 174
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 175
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 176
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 178
    :cond_2b
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 181
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaRouter;->updateWifiDisplayStatus(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 183
    new-instance v0, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$WifiDisplayStatusChangedReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v0, Landroid/media/MediaRouter$VolumeChangeReceiver;

    invoke-direct {v0}, Landroid/media/MediaRouter$VolumeChangeReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "newAudioRoutes":Landroid/media/AudioRoutesInfo;
    :try_start_5f
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothA2dpOn()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaRouter$Static;->mIsBluetoothA2dpOn:Z

    .line 193
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mAudioRoutesObserver:Landroid/media/IAudioRoutesObserver$Stub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6f} :catch_71

    move-object v0, v1

    .line 195
    goto :goto_72

    .line 194
    :catch_71
    move-exception v1

    .line 196
    :goto_72
    if-eqz v0, :cond_77

    .line 200
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$Static;->updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V

    .line 204
    :cond_77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter$Static;->rebindAsUser(I)V

    .line 208
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v1, :cond_85

    .line 209
    invoke-static {}, Landroid/media/MediaRouter;->selectDefaultRouteStatic()V

    .line 211
    :cond_85
    return-void
.end method

.method greylist-max-o updateAudioRoutes(Landroid/media/AudioRoutesInfo;)V
    .registers 9
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "audioRoutesChanged":Z
    const/4 v1, 0x0

    .line 217
    .local v1, "forceUseDefaultRoute":Z
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_53

    .line 218
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v3, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 220
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3f

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_1d

    goto :goto_3f

    .line 223
    :cond_1d
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_27

    .line 224
    const v2, 0x1040414

    .local v2, "name":I
    goto :goto_42

    .line 225
    .end local v2    # "name":I
    :cond_27
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_31

    .line 226
    const v2, 0x1040415

    .restart local v2    # "name":I
    goto :goto_42

    .line 227
    .end local v2    # "name":I
    :cond_31
    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3b

    .line 228
    const v2, 0x1040417

    .restart local v2    # "name":I
    goto :goto_42

    .line 230
    .end local v2    # "name":I
    :cond_3b
    const v2, 0x1040413

    .restart local v2    # "name":I
    goto :goto_42

    .line 222
    .end local v2    # "name":I
    :cond_3f
    :goto_3f
    const v2, 0x1040416

    .line 232
    .restart local v2    # "name":I
    :goto_42
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    iput v2, v3, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 233
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 235
    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v3, v3, 0x13

    if-eqz v3, :cond_52

    .line 237
    const/4 v1, 0x1

    .line 239
    :cond_52
    const/4 v0, 0x1

    .line 242
    .end local v2    # "name":I
    :cond_53
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, v3, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "MediaRouter"

    if-nez v2, :cond_b0

    .line 243
    const/4 v1, 0x0

    .line 244
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a2

    .line 245
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v2, :cond_98

    .line 247
    new-instance v2, Landroid/media/MediaRouter$RouteInfo;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSystemCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-direct {v2, v5}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 248
    .local v2, "info":Landroid/media/MediaRouter$RouteInfo;
    iget-object v5, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 249
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v6, 0x104025e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 251
    iput v4, v2, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 252
    const/4 v5, 0x3

    iput v5, v2, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    .line 253
    sget-object v5, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v5, v5, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    const v6, 0x104025d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 256
    iput-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 257
    invoke-static {v2}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 258
    .end local v2    # "info":Landroid/media/MediaRouter$RouteInfo;
    goto :goto_ae

    .line 259
    :cond_98
    iget-object v5, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v5, v2, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 260
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_ae

    .line 262
    :cond_a2
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_ae

    .line 264
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 265
    .local v2, "btRoute":Landroid/media/MediaRouter$RouteInfo;
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 266
    invoke-static {v2}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 268
    .end local v2    # "btRoute":Landroid/media/MediaRouter$RouteInfo;
    :cond_ae
    :goto_ae
    const/4 v0, 0x1

    goto :goto_ce

    .line 269
    :cond_b0
    iget-object v2, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v5, v5, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 270
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eq v2, v5, :cond_ce

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 271
    const-string v2, "force audioRouteschanged true "

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    .line 276
    :cond_ce
    :goto_ce
    if-eqz v0, :cond_117

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio routes updated: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", a2dp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->isBluetoothA2dpOn()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v2, :cond_106

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v2

    if-nez v2, :cond_106

    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 279
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v2

    if-eqz v2, :cond_117

    .line 280
    :cond_106
    const/4 v2, 0x0

    if-nez v1, :cond_112

    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v3, :cond_10e

    goto :goto_112

    .line 283
    :cond_10e
    invoke-static {v4, v3, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    goto :goto_117

    .line 281
    :cond_112
    :goto_112
    iget-object v3, p0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v4, v3, v2}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    .line 287
    :cond_117
    :goto_117
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mCurAudioRoutesInfo:Landroid/media/AudioRoutesInfo;

    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 288
    return-void
.end method

.method greylist-max-o updateClientState()V
    .registers 9

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    .line 496
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-eqz v1, :cond_18

    .line 498
    :try_start_7
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-interface {v2, v1}, Landroid/media/IMediaRouterService;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    .line 501
    goto :goto_18

    .line 499
    :catch_10
    move-exception v1

    .line 500
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MediaRouter"

    const-string v3, "Unable to retrieve media router client state."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    iget-object v1, p0, Landroid/media/MediaRouter$Static;->mClientState:Landroid/media/MediaRouterClientState;

    if-eqz v1, :cond_1e

    iget-object v0, v1, Landroid/media/MediaRouterClientState;->routes:Ljava/util/ArrayList;

    .line 507
    .local v0, "globalRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRouterClientState$RouteInfo;>;"
    :cond_1e
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 508
    .local v1, "globalRouteCount":I
    :goto_26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-ge v2, v1, :cond_45

    .line 509
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 510
    .local v3, "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/media/MediaRouter$Static;->findGlobalRoute(Ljava/lang/String;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 511
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    if-nez v4, :cond_3f

    .line 512
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$Static;->makeGlobalRoute(Landroid/media/MediaRouterClientState$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 513
    invoke-static {v4}, Landroid/media/MediaRouter;->addRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_42

    .line 515
    :cond_3f
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaRouter$Static;->updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V

    .line 508
    .end local v3    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 520
    .end local v2    # "i":I
    :cond_45
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "i":I
    :goto_4b
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_83

    .line 521
    iget-object v2, p0, Landroid/media/MediaRouter$Static;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    .line 522
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    iget-object v4, v2, Landroid/media/MediaRouter$RouteInfo;->mGlobalRouteId:Ljava/lang/String;

    .line 523
    .local v4, "globalRouteId":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_81

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 524
    goto :goto_81

    .line 526
    :cond_66
    if-eqz v4, :cond_80

    .line 527
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_69
    if-ge v5, v1, :cond_7d

    .line 528
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRouterClientState$RouteInfo;

    .line 529
    .local v6, "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    iget-object v7, v6, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 530
    goto :goto_81

    .line 527
    .end local v6    # "globalRoute":Landroid/media/MediaRouterClientState$RouteInfo;
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 534
    .end local v5    # "j":I
    :cond_7d
    invoke-static {v2}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 536
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v4    # "globalRouteId":Ljava/lang/String;
    :cond_80
    nop

    .line 520
    :cond_81
    :goto_81
    move v2, v3

    goto :goto_4b

    .line 537
    .end local v3    # "i":I
    :cond_83
    return-void
.end method

.method greylist-max-o updateDiscoveryRequest()V
    .registers 11

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "routeTypes":I
    const/4 v1, 0x0

    .line 314
    .local v1, "passiveRouteTypes":I
    const/4 v2, 0x0

    .line 315
    .local v2, "activeScan":Z
    const/4 v3, 0x0

    .line 316
    .local v3, "activeScanWifiDisplay":Z
    iget-object v4, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 317
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ge v5, v4, :cond_3d

    .line 318
    iget-object v8, p0, Landroid/media/MediaRouter$Static;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$CallbackInfo;

    .line 319
    .local v8, "cbi":Landroid/media/MediaRouter$CallbackInfo;
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v9, v9, 0x5

    if-eqz v9, :cond_21

    .line 322
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v0, v9

    goto :goto_2e

    .line 323
    :cond_21
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2b

    .line 325
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v1, v9

    goto :goto_2e

    .line 330
    :cond_2b
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    or-int/2addr v0, v9

    .line 332
    :goto_2e
    iget v9, v8, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_3a

    .line 333
    const/4 v2, 0x1

    .line 334
    iget v7, v8, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3a

    .line 335
    const/4 v3, 0x1

    .line 317
    .end local v8    # "cbi":Landroid/media/MediaRouter$CallbackInfo;
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 339
    .end local v5    # "i":I
    :cond_3d
    if-nez v0, :cond_41

    if-eqz v2, :cond_42

    .line 343
    :cond_41
    or-int/2addr v0, v1

    .line 348
    :cond_42
    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mCanConfigureWifiDisplays:Z

    if-eqz v5, :cond_6b

    .line 349
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v5, :cond_51

    .line 350
    invoke-virtual {v5, v6}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 353
    const/4 v3, 0x0

    .line 355
    :cond_51
    if-eqz v3, :cond_5f

    .line 356
    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-nez v5, :cond_6b

    .line 357
    iput-boolean v7, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 358
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->startWifiDisplayScan()V

    goto :goto_6b

    .line 361
    :cond_5f
    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    if-eqz v5, :cond_6b

    .line 362
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/media/MediaRouter$Static;->mActivelyScanningWifiDisplays:Z

    .line 363
    iget-object v5, p0, Landroid/media/MediaRouter$Static;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->stopWifiDisplayScan()V

    .line 369
    :cond_6b
    :goto_6b
    iget v5, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    if-ne v0, v5, :cond_73

    iget-boolean v5, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    if-eq v2, v5, :cond_7a

    .line 371
    :cond_73
    iput v0, p0, Landroid/media/MediaRouter$Static;->mDiscoveryRequestRouteTypes:I

    .line 372
    iput-boolean v2, p0, Landroid/media/MediaRouter$Static;->mDiscoverRequestActiveScan:Z

    .line 373
    invoke-virtual {p0}, Landroid/media/MediaRouter$Static;->publishClientDiscoveryRequest()V

    .line 375
    :cond_7a
    return-void
.end method

.method greylist-max-o updateGlobalRoute(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouterClientState$RouteInfo;)V
    .registers 9
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "globalRoute"    # Landroid/media/MediaRouterClientState$RouteInfo;

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 583
    .local v1, "volumeChanged":Z
    const/4 v2, 0x0

    .line 585
    .local v2, "presentationDisplayChanged":Z
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 586
    iget-object v3, p2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    iput-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 587
    const/4 v0, 0x1

    .line 589
    :cond_12
    iget-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 590
    iget-object v3, p2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    iput-object v3, p1, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 591
    const/4 v0, 0x1

    .line 593
    :cond_21
    iget v3, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 594
    .local v3, "oldSupportedTypes":I
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v3, v4, :cond_2c

    .line 595
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 596
    const/4 v0, 0x1

    .line 598
    :cond_2c
    iget-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    iget-boolean v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v4, v5, :cond_37

    .line 599
    iget-boolean v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    iput-boolean v4, p1, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    .line 600
    const/4 v0, 0x1

    .line 602
    :cond_37
    invoke-static {p1}, Landroid/media/MediaRouter$RouteInfo;->-$$Nest$fgetmRealStatusCode(Landroid/media/MediaRouter$RouteInfo;)I

    move-result v4

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v4, v5, :cond_45

    .line 603
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    invoke-virtual {p1, v4}, Landroid/media/MediaRouter$RouteInfo;->setRealStatusCode(I)Z

    .line 604
    const/4 v0, 0x1

    .line 606
    :cond_45
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v4, v5, :cond_50

    .line 607
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 608
    const/4 v0, 0x1

    .line 610
    :cond_50
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v4, v5, :cond_5b

    .line 611
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 612
    const/4 v0, 0x1

    .line 614
    :cond_5b
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v4, v5, :cond_67

    .line 615
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 616
    const/4 v0, 0x1

    .line 617
    const/4 v1, 0x1

    .line 619
    :cond_67
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v4, v5, :cond_73

    .line 620
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 621
    const/4 v0, 0x1

    .line 622
    const/4 v1, 0x1

    .line 624
    :cond_73
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v4, v5, :cond_7f

    .line 625
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 626
    const/4 v0, 0x1

    .line 627
    const/4 v1, 0x1

    .line 629
    :cond_7f
    iget v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iget v5, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v4, v5, :cond_8e

    .line 630
    iget v4, p2, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    iput v4, p1, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    .line 631
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->updatePresentationDisplay()Z

    .line 632
    const/4 v0, 0x1

    .line 633
    const/4 v2, 0x1

    .line 636
    :cond_8e
    if-eqz v0, :cond_93

    .line 637
    invoke-static {p1, v3}, Landroid/media/MediaRouter;->dispatchRouteChanged(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 639
    :cond_93
    if-eqz v1, :cond_98

    .line 640
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 642
    :cond_98
    if-eqz v2, :cond_9d

    .line 643
    invoke-static {p1}, Landroid/media/MediaRouter;->dispatchRoutePresentationDisplayChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 645
    :cond_9d
    return-void
.end method
