.class public final Lcom/android/server/sepunion/cover/StateNotifier;
.super Ljava/lang/Object;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;,
        Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;,
        Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;,
        Lcom/android/server/sepunion/cover/StateNotifier$H;
    }
.end annotation


# static fields
.field public static final INCALLUI_PACKAGE:Ljava/lang/String; = "com.samsung.android.incallui"

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_COVER_STATE_LISTENER:I = 0x2

.field public static final TYPE_COVER_WINDOW_STATE_LISTENER:I = 0x4

.field public static final TYPE_STATE_LISTENER:I = 0x1


# instance fields
.field public mBootComplete:Z

.field public mContext:Landroid/content/Context;

.field public mCoverOpen:Z

.field public mCoverType:I

.field public mGoToSleepRunnable:Ljava/lang/Runnable;

.field public final mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

.field public final mHighPriorityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLcdOffDisableListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLcdOffDisabledByApp:Z

.field public mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

.field public final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$2Obu2S88yvwWuXT0RMMC0DNaLAo(Lcom/android/server/sepunion/cover/StateNotifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->lambda$updatePowerState$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHighPriorityListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLcdOffDisableListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menableLcdOffByCoverIfPossibleLocked(Lcom/android/server/sepunion/cover/StateNotifier;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendCoverAttachState(Lcom/android/server/sepunion/cover/StateNotifier;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->handleSendCoverAttachState(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendCoverSwitchState(Lcom/android/server/sepunion/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Ljava/lang/Runnable;

    .line 77
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 78
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 80
    new-instance v1, Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier$H;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    const/4 p1, 0x1

    const-string v1, "CoverSwitchState"

    .line 81
    invoke-virtual {p2, p1, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "CoverAttachState"

    .line 83
    invoke-virtual {p2, p1, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method private synthetic lambda$updatePowerState$0()V
    .registers 5

    const-string v0, "CoverManager_"

    const-string v1, "goToSleep by cover close after boot complete : mLcdOffDisabledByApp is false"

    .line 461
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method


# virtual methods
.method public final addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    sget-object p0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string p1, "addListenerToListLocked : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_22
    new-instance v7, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 257
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 p0, 0x0

    .line 259
    :try_start_35
    invoke-interface {p1, v7, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 261
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    :goto_3d
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkSystemFeatureForCoverType(I)Z
    .registers 3

    if-eqz p1, :cond_5f

    const/16 v0, 0xb

    if-eq p1, v0, :cond_54

    const/4 v0, 0x7

    if-eq p1, v0, :cond_49

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3e

    packed-switch p1, :pswitch_data_6a

    const/4 p0, 0x0

    return p0

    .line 523
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCameraViewCover()Z

    move-result p0

    return p0

    .line 521
    :pswitch_1d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportMiniSviewWalletCover()Z

    move-result p0

    return p0

    .line 519
    :pswitch_28
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearSideViewCover()Z

    move-result p0

    return p0

    .line 517
    :pswitch_33
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportLEDBackCover()Z

    move-result p0

    return p0

    .line 509
    :cond_3e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result p0

    return p0

    .line 515
    :cond_49
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNfcLedCover()Z

    move-result p0

    return p0

    .line 513
    :cond_54
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result p0

    return p0

    .line 511
    :cond_5f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result p0

    return p0

    :pswitch_data_6a
    .packed-switch 0xe
        :pswitch_33
        :pswitch_28
        :pswitch_1d
        :pswitch_12
    .end packed-switch
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v1, "disableLcdOffByCover"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 564
    :try_start_a
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz v2, :cond_10

    .line 565
    iget-object v2, v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 566
    sget-object p0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string p1, "disableLcdOffByCover : LCD off already called by app"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    monitor-exit v0

    return v3

    .line 571
    :cond_30
    new-instance v1, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 572
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 573
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 574
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 575
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 576
    monitor-exit v0

    return p1

    :catchall_4e
    move-exception p0

    .line 577
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string p1, " Current StateNotifier state:"

    .line 642
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 645
    :try_start_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Live listeners ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    iget-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2d
    :goto_2d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v0, :cond_2d

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    :cond_6b
    const-string p3, "  "

    .line 652
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    monitor-exit p1
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_166

    .line 654
    iget-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter p3

    .line 655
    :try_start_74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Live high priority listeners ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_99
    :goto_99
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v0, :cond_99

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_99

    :cond_d7
    const-string p1, "  "

    .line 662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    monitor-exit p3
    :try_end_dd
    .catchall {:try_start_74 .. :try_end_dd} :catchall_163

    .line 664
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 665
    :try_start_e0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " LCD Off disabled by app: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " LCD Off listeners ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11b
    :goto_11b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_159

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz p3, :cond_11b

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11b

    :cond_159
    const-string p0, "  "

    .line 673
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    monitor-exit p1

    return-void

    :catchall_160
    move-exception p0

    monitor-exit p1
    :try_end_162
    .catchall {:try_start_e0 .. :try_end_162} :catchall_160

    throw p0

    :catchall_163
    move-exception p0

    .line 663
    :try_start_164
    monitor-exit p3
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_163

    throw p0

    :catchall_166
    move-exception p0

    .line 653
    :try_start_167
    monitor-exit p1
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw p0
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    sget-object p2, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v0, "enableLcdOffByCover"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p2

    const/4 v0, 0x0

    .line 584
    :try_start_b
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz v2, :cond_11

    .line 585
    iget-object v3, v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v0, v2

    :cond_28
    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 592
    sget-object p0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string p1, "enableLcdOffByCover: matching listener does not exist."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit p2

    return v1

    .line 596
    :cond_34
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 598
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 599
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    const/4 p0, 0x1

    .line 600
    monitor-exit p2

    return p0

    :catchall_42
    move-exception p0

    .line 601
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final enableLcdOffByCoverIfPossibleLocked()V
    .registers 6

    .line 609
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 611
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    if-nez v1, :cond_25

    iget v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    if-nez v1, :cond_25

    const-string v1, "CoverManager_"

    const-string v2, "goToSleep by cover close : enableLcdOff"

    .line 612
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 615
    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    if-eqz v0, :cond_39

    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    const/4 v1, 0x7

    if-eq p0, v1, :cond_36

    const/16 v1, 0xb

    if-eq p0, v1, :cond_36

    const/16 v1, 0xe

    if-ne p0, v1, :cond_39

    .line 617
    :cond_36
    invoke-interface {v0}, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;->onLcdOffByCoverEnabled()V

    :cond_39
    return-void
.end method

.method public final findListenerOnListLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;",
            ">;)",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;"
        }
    .end annotation

    .line 288
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz p2, :cond_4

    .line 289
    iget-object v0, p2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleSendCoverAttachState(Z)V
    .registers 5

    .line 385
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 387
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_9

    .line 389
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5c

    .line 390
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 391
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 392
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_23

    .line 394
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_59

    const-string v0, "CoverManager_"

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send cover attach : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 397
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_58
    return-void

    :catchall_59
    move-exception p0

    .line 394
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0

    :catchall_5c
    move-exception p0

    .line 389
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 347
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 348
    invoke-virtual {v2, p2}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_9

    .line 350
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_42

    const-string p1, "CoverManager_"

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send cover switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 353
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_41
    return-void

    :catchall_42
    move-exception p0

    .line 350
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public isLcdOffByDisabledByApp()Z
    .registers 1

    .line 638
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    return p0
.end method

.method public onBootComplete()V
    .registers 3

    .line 215
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    if-nez v0, :cond_19

    .line 216
    sget-object v0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    .line 219
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Ljava/lang/Runnable;

    :cond_19
    return-void
.end method

.method public onCoverAppStateChanged(Z)I
    .registers 4

    .line 498
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 500
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAppStateChanged(Z)V

    goto :goto_9

    .line 502
    :cond_19
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public registerLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 6

    if-eqz p2, :cond_1b

    const-string v0, "com.samsung.android.incallui"

    .line 236
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 237
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 238
    :try_start_11
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V

    .line 239
    monitor-exit v0

    goto :goto_24

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p0

    .line 241
    :cond_1b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 242
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V

    .line 243
    monitor-exit v0

    :goto_24
    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final removeListenerFromListLocked(Landroid/os/IBinder;Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_c

    .line 299
    sget-object p1, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "removeListenerFromListLocked : listener is null"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 303
    :cond_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 304
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    :cond_15
    invoke-interface {p1, p2, p0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 307
    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    const/4 p0, 0x1

    return p0
.end method

.method public final sendCoverAttachState(Z)V
    .registers 6

    .line 371
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 372
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 374
    :cond_d
    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 375
    iget v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isCoverTypeForWirelessCharger(I)Z

    move-result v0

    const-string v3, "/sys/class/power_supply/battery/led_cover"

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    .line 376
    invoke-static {v3, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(Ljava/lang/String;I)Z

    goto :goto_26

    .line 378
    :cond_23
    invoke-static {v3, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(Ljava/lang/String;I)Z

    .line 381
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .registers 4

    .line 337
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 338
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 340
    :cond_d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    .line 341
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->findListenerOnListLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 275
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/sepunion/cover/StateNotifier;->removeListenerFromListLocked(Landroid/os/IBinder;Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;Ljava/util/ArrayList;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 277
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2d

    .line 278
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 279
    :try_start_17
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/cover/StateNotifier;->findListenerOnListLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 280
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/sepunion/cover/StateNotifier;->removeListenerFromListLocked(Landroid/os/IBinder;Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;Ljava/util/ArrayList;)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 282
    :cond_27
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_2a
    move-exception p0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw p0

    :catchall_2d
    move-exception p0

    .line 277
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public unregisterLcdOffDisabledByAppListener(Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;)V
    .registers 2

    const/4 p1, 0x0

    .line 634
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisabledByAppListener;

    return-void
.end method

.method public updateCoverAttachState(ZIZ)V
    .registers 4

    .line 358
    iput p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    .line 359
    iput-boolean p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 364
    iget-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/sepunion/cover/Feature;->isSupportSecureCover()Z

    move-result p3

    if-nez p3, :cond_16

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/StateNotifier;->checkSystemFeatureForCoverType(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 365
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->sendCoverAttachState(Z)V

    :cond_19
    return-void
.end method

.method public updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    .registers 6

    .line 318
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    .line 321
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 322
    :try_start_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    .line 326
    invoke-virtual {v1, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 327
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_f

    .line 329
    :cond_26
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2b

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier;->sendCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    return-void

    :catchall_2b
    move-exception p0

    .line 329
    :try_start_2c
    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public updatePowerState(IZ)V
    .registers 7

    .line 402
    sget-object v0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePowerState : isOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->updateCoverState(Z)V

    const/16 v0, 0x67

    const/4 v1, 0x0

    if-eqz p1, :cond_c1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_a2

    const/16 v2, 0x64

    if-eq p1, v2, :cond_c1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_5b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3c

    goto/16 :goto_185

    .line 406
    :cond_3c
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result p1

    if-eqz p1, :cond_185

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_185

    .line 407
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_185

    .line 469
    :cond_5b
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/Feature;->isSupportNfcLedCover()Z

    move-result p1

    if-eqz p1, :cond_185

    if-eqz p2, :cond_8a

    .line 471
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 472
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_185

    .line 475
    :cond_7c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-string/jumbo v1, "updatePowerState"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    goto/16 :goto_185

    .line 477
    :cond_8a
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz p1, :cond_185

    .line 480
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 481
    :try_start_91
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 483
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    .line 485
    :cond_9c
    monitor-exit p1

    goto/16 :goto_185

    :catchall_9f
    move-exception p0

    monitor-exit p1
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_9f

    throw p0

    .line 412
    :cond_a2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result p1

    if-eqz p1, :cond_185

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_185

    .line 413
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_185

    .line 419
    :cond_c1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result p1

    if-eqz p1, :cond_185

    .line 420
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result p1

    if-nez p1, :cond_185

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 421
    invoke-static {p1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_185

    .line 422
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_e3

    goto/16 :goto_185

    :cond_e3
    if-eqz p2, :cond_10c

    .line 427
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 428
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_103

    .line 431
    :cond_f7
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo p2, "updatePowerState"

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 433
    :goto_103
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_185

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Ljava/lang/Runnable;

    goto/16 :goto_185

    .line 436
    :cond_10c
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    const/16 p2, 0x14

    if-eqz p1, :cond_169

    .line 439
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 440
    :try_start_115
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_152

    .line 441
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_123
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_164

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cover close: goToSleep disabled by: PID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " UID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 446
    sget-object v0, Lcom/android/server/sepunion/cover/StateNotifier;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 450
    :cond_152
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    const-string v0, "CoverManager_"

    const-string v2, "goToSleep by cover close : mLcdOffDisableListeners is empty"

    .line 451
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 454
    :cond_164
    monitor-exit p1

    goto :goto_185

    :catchall_166
    move-exception p0

    monitor-exit p1
    :try_end_168
    .catchall {:try_start_115 .. :try_end_168} :catchall_166

    throw p0

    .line 456
    :cond_169
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    if-eqz p1, :cond_17e

    const-string p1, "CoverManager_"

    const-string v0, "goToSleep by cover close : mLcdOffDisabledByApp is false"

    .line 457
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_185

    .line 460
    :cond_17e
    new-instance p1, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Ljava/lang/Runnable;

    :cond_185
    :goto_185
    return-void
.end method
