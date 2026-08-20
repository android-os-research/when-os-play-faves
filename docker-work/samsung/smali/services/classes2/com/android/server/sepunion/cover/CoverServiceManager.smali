.class public Lcom/android/server/sepunion/cover/CoverServiceManager;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;,
        Lcom/android/server/sepunion/cover/CoverServiceManager$H;,
        Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;,
        Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;,
        Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;
    }
.end annotation


# static fields
.field public static final ACTION_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.cover.CoverService"

.field public static final ACTION_INSTALL_FANCONTROL:Ljava/lang/String; = "com.sec.android.app.applinker.GAME_PACK_ADDED"

.field public static final GAMEPACK_COVER:Landroid/content/ComponentName;

.field public static final GAMEPACK_COVER_CLASS:Ljava/lang/String; = "com.sec.android.usb.fancontrol.FanControlService"

.field public static final GAMEPACK_COVER_PACKAGE:Ljava/lang/String; = "com.sec.android.usb.fancontrol"

.field public static final LED_COVER:Landroid/content/ComponentName;

.field public static final LED_COVER_CLASS:Ljava/lang/String; = "com.sec.android.cover.ledcover.LedCoverService"

.field public static final LED_COVER_PACKAGE:Ljava/lang/String; = "com.sec.android.cover.ledcover"

.field public static final MAX_BIND_HISTORY:I = 0xa

.field public static final META_DATA_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.cover.service"

.field public static final PACKAGE_APP_LINKER:Ljava/lang/String; = "com.sec.android.app.applinker"

.field public static final PERMISSION_COVER_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.BIND_COVER_SERVICE"

.field public static final SYSTEM_UI_COVER:Landroid/content/ComponentName;

.field public static final SYSTEM_UI_COVER_CLASS:Ljava/lang/String; = "com.android.systemui.cover.SysUICoverService"

.field public static final SYSTEM_UI_COVER_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActiveServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mBindHistory:[Ljava/lang/String;

.field public mBindHistoryIdx:I

.field public final mBindingTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public final mCoverServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

.field public mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

.field public mIsUserSwitching:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRegisterBroadcast:Z

.field public mWakeLockRunnable:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActiveServices(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateProvider(Lcom/android/server/sepunion/cover/CoverServiceManager;)Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverWakeLock(Lcom/android/server/sepunion/cover/CoverServiceManager;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsUserSwitching(Lcom/android/server/sepunion/cover/CoverServiceManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mIsUserSwitching:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddBindingServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->addCoverService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcontainsBindingServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->containsBindingServiceLocked(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mfindActiveServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findCoverServiceByComponentLocked(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetCoverServiceNameLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;IZZ)Landroid/content/ComponentName;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateCoverState(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreconnectCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->reconnectCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveBindingServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBindHistoryLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetLED_COVER()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSYSTEM_UI_COVER()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.cover.ledcover"

    const-string v2, "com.sec.android.cover.ledcover.LedCoverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.cover.SysUICoverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 60
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.usb.fancontrol"

    const-string v2, "com.sec.android.usb.fancontrol.FanControlService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->GAMEPACK_COVER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;)V
    .registers 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 78
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 79
    new-instance v1, Lcom/android/server/sepunion/cover/CoverServiceManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$1;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    .line 126
    new-instance p3, Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    invoke-direct {p3, p0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager$H;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const-string/jumbo p2, "power"

    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "CoverServiceManager"

    .line 128
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    return-void
.end method

.method public static verifySystemFeature(Landroid/content/Context;I)Z
    .registers 3

    if-eqz p1, :cond_5a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_51

    const/4 v0, 0x7

    if-eq p1, v0, :cond_48

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3f

    packed-switch p1, :pswitch_data_64

    const/4 p0, 0x0

    return p0

    .line 606
    :pswitch_12
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCameraViewCover()Z

    move-result p0

    return p0

    .line 604
    :pswitch_1b
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportMiniSviewWalletCover()Z

    move-result p0

    return p0

    .line 602
    :pswitch_24
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearSideViewCover()Z

    move-result p0

    return p0

    .line 600
    :pswitch_2d
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportLEDBackCover()Z

    move-result p0

    return p0

    .line 598
    :pswitch_36
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportGamePackCover()Z

    move-result p0

    return p0

    .line 590
    :cond_3f
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result p0

    return p0

    .line 596
    :cond_48
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNfcLedCover()Z

    move-result p0

    return p0

    .line 594
    :cond_51
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result p0

    return p0

    .line 592
    :cond_5a
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result p0

    return p0

    nop

    :pswitch_data_64
    .packed-switch 0xd
        :pswitch_36
        :pswitch_2d
        :pswitch_24
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public final addBindingServiceLocked(Landroid/content/ComponentName;)V
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final addCoverService(Ljava/lang/String;)Z
    .registers 10

    .line 500
    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCoverService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cover.CoverService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7c

    .line 505
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7c

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_38

    return v0

    :cond_38
    move v2, v0

    :goto_39
    if-ge v0, v1, :cond_7b

    .line 512
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 513
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 514
    :try_start_42
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    if-nez v5, :cond_59

    .line 516
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_74

    .line 519
    :cond_59
    sget-object v5, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addCoverService : Cover Type("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is already added"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_74
    monitor-exit v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :catchall_78
    move-exception p0

    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_42 .. :try_end_7a} :catchall_78

    throw p0

    :cond_7b
    move v0, v2

    :cond_7c
    return v0
.end method

.method public bindCoverService(IZ)V
    .registers 6

    .line 156
    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCoverService : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isShouldNotBindCoverService(IZ)Z

    move-result p2

    if-eqz p2, :cond_1d

    return-void

    .line 162
    :cond_1d
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 165
    new-instance p2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p2, v1}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_35

    .line 167
    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;

    move-result-object v0

    :goto_35
    if-nez v0, :cond_38

    return-void

    .line 172
    :cond_38
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 173
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    goto :goto_61

    :cond_46
    const/16 p2, 0xd

    if-ne p1, p2, :cond_61

    const-string p1, "com.sec.android.usb.fancontrol"

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 177
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.applinker.GAME_PACK_ADDED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.sec.android.app.applinker"

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 185
    :cond_61
    :goto_61
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getSystemUICoverService(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_73

    .line 186
    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_73

    .line 189
    :cond_6e
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    :cond_73
    :goto_73
    return-void
.end method

.method public final bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    .registers 11

    const-string v0, "Unable to bind service: "

    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 194
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "bindCoverServiceLocked : component is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 197
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->containsBindingServiceLocked(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    .line 202
    :cond_14
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 203
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    :try_start_1c
    new-instance v3, Lcom/android/server/sepunion/cover/CoverServiceManager$2;

    invoke-direct {v3, p0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager$2;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;I)V

    .line 265
    sget-object v4, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindCoverServiceLocked : type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    const v6, 0x1000005

    invoke-virtual {v5, v2, v3, v6, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p3

    if-nez p3, :cond_55

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 272
    :cond_55
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding:cn="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",type="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_74} :catch_76

    const/4 p0, 0x1

    return p0

    :catch_76
    move-exception p0

    .line 277
    sget-object p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final containsBindingServiceLocked(Landroid/content/ComponentName;)Z
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 482
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 700
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    const-string p3, " Active Cover Service: "

    .line 701
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_2f
    const-string p3, " "

    .line 705
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, " Binding Cover Service: "

    .line 706
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 708
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_47
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_47

    :cond_85
    const-string p3, " "

    .line 711
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, " Bind history:"

    .line 712
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    array-length p3, p0

    const/4 v0, 0x0

    :goto_93
    if-ge v0, p3, :cond_b0

    aget-object v1, p0, v0

    if-eqz v1, :cond_ad

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_b0
    const-string p0, " "

    .line 718
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    monitor-exit p1

    return-void

    :catchall_b7
    move-exception p0

    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_b7

    throw p0
.end method

.method public final findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 458
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 459
    monitor-exit v0

    return-object v1

    .line 462
    :cond_21
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final findCoverServiceByComponentLocked(Landroid/content/ComponentName;)I
    .registers 6

    .line 442
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_25

    .line 445
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 446
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 447
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 450
    :cond_25
    monitor-exit v0

    const/4 p0, 0x2

    return p0

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;
    .registers 6

    .line 397
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_8

    goto :goto_15

    :cond_8
    if-eqz p3, :cond_15

    .line 400
    :try_start_a
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-nez p3, :cond_15

    .line 401
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->refreshCoverServicesLocked()V

    .line 405
    :cond_15
    :goto_15
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    if-eqz p3, :cond_21

    .line 407
    monitor-exit v0

    return-object p3

    :cond_21
    if-eqz p2, :cond_28

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    monitor-exit v0

    return-object p0

    :catchall_2b
    move-exception p0

    .line 410
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;
    .registers 3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2d

    const/16 v0, 0xff

    if-eq p1, v0, :cond_15

    const/16 p0, 0xd

    if-eq p1, p0, :cond_12

    const/16 p0, 0xe

    if-eq p1, p0, :cond_2d

    .line 437
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object p0

    .line 428
    :cond_12
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->GAMEPACK_COVER:Landroid/content/ComponentName;

    return-object p0

    .line 430
    :cond_15
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 431
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "getPredefinedCoverServiceNameLocked : return because of nfc smart cover supporting nfc authentication"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 434
    :cond_2a
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object p0

    .line 426
    :cond_2d
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getSystemUICoverService(I)Landroid/content/ComponentName;
    .registers 3

    const/16 v0, 0xff

    if-ne p1, v0, :cond_19

    .line 388
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 390
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "getSystemUICoverService : return because of nfc smart cover supporting nfc authentication"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 393
    :cond_19
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    if-eqz p1, :cond_102

    .line 558
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_102

    .line 559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 560
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 561
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "com.samsung.android.permission.BIND_COVER_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "service("

    const-string v5, "/"

    if-nez v3, :cond_5b

    .line 563
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has no permission"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 566
    :cond_5b
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_83

    .line 567
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has no meta data"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_83
    const/4 v6, -0x1

    const-string v7, "com.samsung.android.cover.service"

    .line 570
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 571
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result v6

    const-string v7, ")"

    if-nez v6, :cond_bf

    .line 572
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has wrong cover type("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 576
    :cond_bf
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_fd

    .line 577
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") of service("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is duplicated  with "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 581
    :cond_fd
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_11

    :cond_102
    return-object v0
.end method

.method public final handleUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    .line 659
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 661
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_9

    .line 663
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_32

    .line 664
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_23

    .line 665
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    :cond_23
    new-instance p1, Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$3;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mWakeLockRunnable:Ljava/lang/Runnable;

    .line 674
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_32
    move-exception p0

    .line 663
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public isBindingCoverService()Z
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 614
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final isShouldNotBindCoverService(IZ)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p2, :cond_27

    .line 305
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_27

    .line 306
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShouldNotBindCoverService : not support cover type("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 309
    :cond_27
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result p0

    const/16 p1, 0xff

    if-ne p0, p1, :cond_37

    .line 310
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string p1, "isShouldNotBindCoverService : return because of test mode for nfc smart cover"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public final isShouldRebindCoverServiceLocked(Lcom/samsung/android/cover/CoverState;Landroid/content/ComponentName;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 286
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 289
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isShouldNotBindCoverService(IZ)Z

    move-result p1

    if-eqz p1, :cond_16

    return v0

    .line 292
    :cond_16
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 293
    :try_start_19
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 294
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_3b

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long p0, v1, v3

    if-lez p0, :cond_39

    const/4 v0, 0x1

    :cond_39
    monitor-exit p1

    return v0

    .line 299
    :cond_3b
    monitor-exit p1

    return v0

    :catchall_3d
    move-exception p0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public onCoverAppStateChanged(Z)I
    .registers 7

    .line 619
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 621
    monitor-exit v0

    return v2

    .line 623
    :cond_e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 624
    sget-object v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 625
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    move-result v1

    move v2, v1

    goto :goto_14

    .line 627
    :cond_32
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->onCoverAppStateChanged(Z)I

    goto :goto_14

    .line 630
    :cond_36
    monitor-exit v0

    return v2

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final queryInstalledCoverServices()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 488
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.cover.CoverService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 493
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 495
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    throw p0
.end method

.method public final queryIntentService(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0xc0084

    const/4 v1, 0x0

    .line 553
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final reconnectCoverService(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    .registers 5

    .line 635
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 637
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final refreshCoverServicesLocked()V
    .registers 7

    .line 414
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 415
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    .line 418
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    return-void
.end method

.method public final registerBroadcastReceiver(Ljava/lang/String;)V
    .registers 9

    .line 134
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-nez v0, :cond_36

    .line 135
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 136
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 137
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 139
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1e
    const-string/jumbo v0, "package"

    .line 141
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {v4, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 143
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    :cond_36
    return-void
.end method

.method public final removeAllCoverServiceLocked()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 383
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 384
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final removeBindingServiceLocked(Landroid/content/ComponentName;)V
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 377
    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    return-void

    :catchall_11
    move-exception p0

    .line 376
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public switchCoverService(II)V
    .registers 7

    .line 344
    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCoverService : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 346
    :try_start_22
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_47

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_47

    const/4 v2, 0x1

    .line 350
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mIsUserSwitching:Z

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 352
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    .line 353
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Z

    .line 356
    :cond_47
    monitor-exit p2

    return-void

    :catchall_49
    move-exception p0

    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 692
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 693
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 694
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xb

    .line 695
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/16 v2, 0xd

    .line 696
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const/4 p0, 0x6

    aput-object p1, v1, p0

    const-string p0, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    .line 693
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unbindActiveCoverService(I)V
    .registers 5

    .line 360
    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindActiveCoverService : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-eqz p1, :cond_30

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Z

    .line 370
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_32

    throw p0
.end method

.method public unbindCoverService(I)V
    .registers 5

    .line 317
    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindCoverService : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 319
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Z

    goto :goto_20

    .line 322
    :cond_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_38

    .line 323
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeAllCoverServiceLocked()V

    .line 324
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unregisterBroadcastReceiver()V

    return-void

    :catchall_38
    move-exception p0

    .line 322
    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 329
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unbindCoverServiceLocked : info is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 332
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    .line 334
    :try_start_f
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetconnection(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding:cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_3d} :catch_3f

    const/4 p0, 0x1

    return p0

    :catch_3f
    move-exception p0

    .line 337
    sget-object v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " could not be unbound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final unregisterBroadcastReceiver()V
    .registers 3

    .line 149
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    if-eqz v0, :cond_e

    .line 150
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    :cond_e
    return-void
.end method

.method public final updateBindHistoryLocked(Ljava/lang/String;)V
    .registers 6

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 681
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    array-length v1, v0

    .line 682
    iget v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-ltz v2, :cond_13

    if-ge v2, v1, :cond_13

    add-int/lit8 v3, v2, 0x1

    .line 683
    iput v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    aput-object p1, v0, v2

    .line 686
    :cond_13
    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    if-lt p1, v1, :cond_1a

    const/4 p1, 0x0

    .line 687
    iput p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    :cond_1a
    return-void
.end method

.method public final updateCoverService(Ljava/lang/String;)Z
    .registers 8

    .line 528
    sget-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cover.CoverService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryIntentService(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    .line 532
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_39

    return v0

    .line 538
    :cond_39
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :goto_3c
    if-ge v0, v1, :cond_50

    .line 540
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 542
    :cond_50
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_53
    move-exception p0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    return v0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    .line 642
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object v0

    .line 643
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isShouldRebindCoverServiceLocked(Lcom/samsung/android/cover/CoverState;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 645
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    :cond_12
    if-eqz v2, :cond_1c

    .line 649
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_33

    .line 651
    :cond_1c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_29

    .line 652
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 654
    :cond_29
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_33
    return-void
.end method
