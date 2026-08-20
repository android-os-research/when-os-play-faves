.class public Landroid/service/quicksettings/TileService;
.super Landroid/app/Service;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/TileService$H;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_QS_TILE:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE"

.field public static final whitelist ACTION_QS_TILE_PREFERENCES:Ljava/lang/String; = "android.service.quicksettings.action.QS_TILE_PREFERENCES"

.field private static final blacklist DEBUG:Z = false

.field public static final greylist-max-o EXTRA_SERVICE:Ljava/lang/String; = "service"

.field public static final greylist-max-o EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final greylist-max-o EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final whitelist META_DATA_ACTIVE_TILE:Ljava/lang/String; = "android.service.quicksettings.ACTIVE_TILE"

.field public static final whitelist META_DATA_TOGGLEABLE_TILE:Ljava/lang/String; = "android.service.quicksettings.TOGGLEABLE_TILE"

.field public static final blacklist SEM_META_DATA_ACTIVE_TILE_SUPPORT_SEM_PLATFORM_VER:Ljava/lang/String; = "android.service.quicksettings.SEM_ACTIVE_TILE_SUPPORT_SEM_PLATFORM_VER"

.field public static final blacklist SEM_META_DATA_DEFAULT_TILE_DEXMODE_ONLY:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_DEXMODE_ONLY"

.field public static final whitelist SEM_META_DATA_DEFAULT_TILE_NAME:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

.field public static final whitelist SEM_META_DATA_DEFAULT_TILE_STATE:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_STATE"

.field public static final whitelist SEM_META_DATA_DEFAULT_TILE_UNLOCK_POLICY:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_UNLOCK_POLICY"

.field public static final whitelist SEM_META_DATA_DEFAULT_TILE_USER_POLICY:Ljava/lang/String; = "android.service.quicksettings.SEM_DEFAULT_TILE_USER_POLICY"

.field private static final blacklist TAG:Ljava/lang/String; = "TileService"


# instance fields
.field private final greylist-max-o mHandler:Landroid/service/quicksettings/TileService$H;

.field private greylist-max-o mListening:Z

.field private greylist-max-o mService:Landroid/service/quicksettings/IQSService;

.field private greylist-max-o mTile:Landroid/service/quicksettings/Tile;

.field private greylist-max-o mTileToken:Landroid/os/IBinder;

.field private greylist-max-o mToken:Landroid/os/IBinder;

.field private greylist-max-o mUnlockRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/TileService$H;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListening(Landroid/service/quicksettings/TileService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTileToken(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnlockRunnable(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListening(Landroid/service/quicksettings/TileService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToken(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 290
    new-instance v0, Landroid/service/quicksettings/TileService$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/quicksettings/TileService$H;-><init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    return-void
.end method

.method public static blacklist isQuickSettingsSupported()Z
    .registers 2

    .line 784
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 805
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 806
    .local v0, "sbm":Landroid/app/StatusBarManager;
    if-nez v0, :cond_12

    .line 807
    const-string v1, "TileService"

    const-string v2, "No StatusBarManager service found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void

    .line 810
    :cond_12
    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->requestTileServiceListeningState(Landroid/content/ComponentName;)V

    .line 811
    return-void
.end method


# virtual methods
.method public final whitelist getQsTile()Landroid/service/quicksettings/Tile;
    .registers 5

    .line 500
    const-string v0, "TileService"

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    if-nez v1, :cond_65

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    if-eqz v1, :cond_65

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    if-eqz v2, :cond_65

    .line 502
    :try_start_e
    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v1

    iput-object v1, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    .line 509
    goto :goto_31

    .line 503
    :catch_15
    move-exception v1

    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_5c

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getQsTile : Unable to reach IQSService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getQsTile : mTile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    if-eqz v0, :cond_65

    .line 512
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/service/quicksettings/Tile;->setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V

    .line 513
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    goto :goto_65

    .line 507
    .restart local v1    # "e":Landroid/os/RemoteException;
    :cond_5c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "getQsTile : Unable to reach IQSService"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 516
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    return-object v0
.end method

.method public final whitelist isLocked()Z
    .registers 3

    .line 452
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSService;->isLocked()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 453
    :catch_7
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public final whitelist isSecure()Z
    .registers 3

    .line 433
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSService;->isSecure()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 434
    :catch_7
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 606
    const-string/jumbo v0, "service"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/quicksettings/IQSService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    .line 607
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBind : mService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTileToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :try_start_49
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/service/quicksettings/IQSService;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v0

    iput-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_53} :catch_54

    .line 628
    goto :goto_6f

    .line 611
    :catch_54
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_ab

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to reach IQSService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind : mTile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mTile:Landroid/service/quicksettings/Tile;

    if-eqz v0, :cond_a5

    .line 631
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/service/quicksettings/Tile;->setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V

    .line 632
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mHandler:Landroid/service/quicksettings/TileService$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/TileService$H;->sendEmptyMessage(I)Z

    .line 634
    :cond_a5
    new-instance v0, Landroid/service/quicksettings/TileService$2;

    invoke-direct {v0, p0}, Landroid/service/quicksettings/TileService$2;-><init>(Landroid/service/quicksettings/TileService;)V

    return-object v0

    .line 625
    .restart local v0    # "e":Landroid/os/RemoteException;
    :cond_ab
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to reach IQSService"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist onClick()V
    .registers 1

    .line 347
    return-void
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    if-eqz v0, :cond_a

    .line 302
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/quicksettings/TileService;->mListening:Z

    .line 305
    :cond_a
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 306
    return-void
.end method

.method public whitelist onStartListening()V
    .registers 1

    .line 335
    return-void
.end method

.method public whitelist onStopListening()V
    .registers 1

    .line 341
    return-void
.end method

.method public whitelist onTileAdded()V
    .registers 1

    .line 316
    return-void
.end method

.method public whitelist onTileRemoved()V
    .registers 1

    .line 322
    return-void
.end method

.method public final whitelist semFireToggleStateChanged(ZZ)V
    .registers 5
    .param p1, "state"    # Z
    .param p2, "enabled"    # Z

    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/service/quicksettings/IQSService;->semFireToggleStateChanged(Landroid/os/IBinder;ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 490
    goto :goto_9

    .line 489
    :catch_8
    move-exception v0

    .line 491
    :goto_9
    return-void
.end method

.method public whitelist semGetDetailView()Landroid/widget/RemoteViews;
    .registers 2

    .line 578
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;
    .registers 2

    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist semGetDetailViewTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 528
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist semGetSettingsIntent()Landroid/content/Intent;
    .registers 2

    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist semIsToggleButtonChecked()Z
    .registers 2

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semIsToggleButtonExists()Z
    .registers 2

    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semSetToggleButtonChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .line 602
    return-void
.end method

.method public final whitelist semUpdateDetailView()V
    .registers 3

    .line 476
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->semUpdateDetailView(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 478
    goto :goto_9

    .line 477
    :catch_8
    move-exception v0

    .line 479
    :goto_9
    return-void
.end method

.method public final whitelist setStatusIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentDescription"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    if-eqz v0, :cond_b

    .line 363
    :try_start_4
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/service/quicksettings/IQSService;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 365
    goto :goto_b

    .line 364
    :catch_a
    move-exception v0

    .line 367
    :cond_b
    :goto_b
    return-void
.end method

.method public final whitelist showDialog(Landroid/app/Dialog;)V
    .registers 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 380
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 381
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_29

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_29

    .line 383
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 384
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 387
    :cond_29
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/service/quicksettings/TileService$1;

    invoke-direct {v2, p0}, Landroid/service/quicksettings/TileService$1;-><init>(Landroid/service/quicksettings/TileService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 401
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 403
    :try_start_3c
    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v2, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onShowDialog(Landroid/os/IBinder;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44

    .line 405
    goto :goto_45

    .line 404
    :catch_44
    move-exception v1

    .line 406
    :goto_45
    return-void
.end method

.method public final whitelist startActivityAndCollapse(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->startActivity(Landroid/content/Intent;)V

    .line 464
    :try_start_3
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onStartActivity(Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 466
    goto :goto_c

    .line 465
    :catch_b
    move-exception v0

    .line 467
    :goto_c
    return-void
.end method

.method public final whitelist unlockAndRun(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 416
    iput-object p1, p0, Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;

    .line 418
    :try_start_2
    iget-object v0, p0, Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->startUnlockAndRun(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_a

    .line 420
    goto :goto_b

    .line 419
    :catch_a
    move-exception v0

    .line 421
    :goto_b
    return-void
.end method
