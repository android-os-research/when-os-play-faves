.class public Lcom/mediatek/powerhalwrapper/PowerHalWrapper;
.super Ljava/lang/Object;
.source "PowerHalWrapper.java"


# static fields
.field private static blacklist AMS_BOOST_ACT_SWITCH:Z = false

.field private static blacklist AMS_BOOST_PACK_SWITCH:Z = false

.field private static blacklist AMS_BOOST_PROCESS_CREATE:Z = false

.field private static blacklist AMS_BOOST_PROCESS_CREATE_BOOST:Z = false

.field private static final blacklist AMS_BOOST_TIME:I = 0x2710

.field private static final blacklist ENG:Z = true

.field private static blacklist EXT_PEAK_PERF_MODE:Z = false

.field public static final blacklist MAX_NETD_IP_FILTER_COUNT:I = 0x3

.field public static final blacklist MTKPOWER_CMD_GET_POWER_SCN_TYPE:I = 0x69

.field public static final blacklist MTKPOWER_CMD_GET_RILD_CAP:I = 0x28

.field private static final blacklist MTKPOWER_HINT_ACT_SWITCH:I = 0x17

.field private static final blacklist MTKPOWER_HINT_ALWAYS_ENABLE:I = 0xfffffff

.field private static final blacklist MTKPOWER_HINT_APP_ROTATE:I = 0x18

.field private static final blacklist MTKPOWER_HINT_EXT_LAUNCH:I = 0x1e

.field private static final blacklist MTKPOWER_HINT_GALLERY_BOOST:I = 0x1a

.field private static final blacklist MTKPOWER_HINT_PACK_SWITCH:I = 0x16

.field private static final blacklist MTKPOWER_HINT_PMS_INSTALL:I = 0x1d

.field private static final blacklist MTKPOWER_HINT_PROCESS_CREATE:I = 0x15

.field private static final blacklist MTKPOWER_HINT_WFD:I = 0x1c

.field private static final blacklist MTKPOWER_HINT_WIPHY_SPEED_DL:I = 0x20

.field private static final blacklist MTKPOWER_STATE_DEAD:I = 0x3

.field private static final blacklist MTKPOWER_STATE_DESTORYED:I = 0x2

.field private static final blacklist MTKPOWER_STATE_PAUSED:I = 0x0

.field private static final blacklist MTKPOWER_STATE_RESUMED:I = 0x1

.field private static final blacklist MTKPOWER_STATE_STOPPED:I = 0x4

.field public static final blacklist PERF_RES_NET_MD_CRASH_PID:I = 0x280c300

.field public static final blacklist PERF_RES_NET_WIFI_SMART_PREDICT:I = 0x2804100

.field public static final blacklist PERF_RES_POWERHAL_SCREEN_OFF_STATE:I = 0x3400000

.field public static final blacklist POWER_HIDL_SET_SYS_INFO:I = 0x0

.field public static final blacklist SCN_PERF_LOCK_HINT:I = 0x3

.field public static final blacklist SCN_USER_HINT:I = 0x2

.field public static final blacklist SCREEN_OFF_DISABLE:I = 0x0

.field public static final blacklist SCREEN_OFF_ENABLE:I = 0x1

.field public static final blacklist SCREEN_OFF_WAIT_RESTORE:I = 0x2

.field public static final blacklist SETSYS_FOREGROUND_SPORTS:I = 0x3

.field public static final blacklist SETSYS_INTERNET_STATUS:I = 0x5

.field public static final blacklist SETSYS_MANAGEMENT_PERIODIC:I = 0x4

.field public static final blacklist SETSYS_MANAGEMENT_PREDICT:I = 0x1

.field public static final blacklist SETSYS_NETD_BOOSTER_CONFIG:I = 0x12

.field public static final blacklist SETSYS_NETD_CLEAR_FASTPATH_RULES:I = 0x11

.field public static final blacklist SETSYS_NETD_DUPLICATE_PACKET_LINK:I = 0x8

.field public static final blacklist SETSYS_NETD_SET_FASTPATH_BY_LINKINFO:I = 0x10

.field public static final blacklist SETSYS_NETD_SET_FASTPATH_BY_UID:I = 0xf

.field public static final blacklist SETSYS_NETD_STATUS:I = 0x6

.field public static final blacklist SETSYS_PACKAGE_VERSION_NAME:I = 0x9

.field public static final blacklist SETSYS_PREDICT_INFO:I = 0x7

.field public static final blacklist SETSYS_SPORTS_APK:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "PowerHalWrapper"

.field private static final blacklist USER_DURATION_MAX:I = 0x7530

.field private static blacklist lock:Ljava/lang/Object;

.field private static blacklist mProcessCreatePack:Ljava/lang/String;

.field private static blacklist sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;


# instance fields
.field private blacklist mLock:Ljava/util/concurrent/locks/Lock;

.field public blacklist scnlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/powerhalwrapper/ScnList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    .line 118
    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    .line 119
    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    .line 120
    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->EXT_PEAK_PERF_MODE:Z

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->lock:Ljava/lang/Object;

    .line 125
    sput-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    .line 175
    const-string v0, "powerhalwrap_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 190
    return-void
.end method

.method public static blacklist getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;
    .registers 2

    .line 179
    const-string v0, "PowerHalWrapper.getInstance"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_8
    sget-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    if-nez v1, :cond_13

    .line 182
    new-instance v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-direct {v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;-><init>()V

    sput-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 184
    :cond_13
    sget-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->sInstance:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    monitor-exit v0

    return-object v1

    .line 185
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public static native blacklist nativeMtkCusPowerHint(II)I
.end method

.method public static native blacklist nativeMtkPowerHint(II)I
.end method

.method public static native blacklist nativeNotifyAppState(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native blacklist nativeNotifySbeRescue(IIIJ)I
.end method

.method public static native blacklist nativePerfCusLockHint(II)I
.end method

.method public static varargs native blacklist nativePerfLockAcq(II[I)I
.end method

.method public static native blacklist nativePerfLockRel(I)I
.end method

.method public static native blacklist nativeQuerySysInfo(II)I
.end method

.method public static native blacklist nativeScnConfig(IIIIII)I
.end method

.method public static native blacklist nativeScnDisable(I)I
.end method

.method public static native blacklist nativeScnEnable(II)I
.end method

.method public static native blacklist nativeScnReg()I
.end method

.method public static native blacklist nativeScnUltraCfg(IIIIII)I
.end method

.method public static native blacklist nativeScnUnreg(I)I
.end method

.method public static native blacklist nativeSetSysInfo(Ljava/lang/String;I)I
.end method

.method public static native blacklist nativeSetSysInfoAsync(Ljava/lang/String;I)I
.end method


# virtual methods
.method public blacklist NotifyAppCrash(IILjava/lang/String;)V
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    .local v0, "found":I
    const/4 v1, -0x1

    .line 349
    .local v1, "type":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 352
    .local v2, "myPid":I
    if-ne v2, p1, :cond_33

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<NotifyAppCrash> pack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " == myPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 354
    return-void

    .line 358
    :cond_33
    const/4 v3, 0x3

    invoke-static {p3, p3, p1, v3, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeNotifyAppState(Ljava/lang/String;Ljava/lang/String;III)I

    .line 360
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 362
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    if-eqz v3, :cond_a1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a1

    .line 363
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 364
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 365
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/powerhalwrapper/ScnList;

    .line 366
    .local v4, "item":Lcom/mediatek/powerhalwrapper/ScnList;
    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->getpid()I

    move-result v5

    if-ne v5, p1, :cond_a0

    .line 367
    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->gethandle()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfLockRel(I)I

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<NotifyAppCrash> pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->getpid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->getuid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/mediatek/powerhalwrapper/ScnList;->gethandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 370
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 371
    add-int/lit8 v0, v0, 0x1

    .line 373
    .end local v4    # "item":Lcom/mediatek/powerhalwrapper/ScnList;
    :cond_a0
    goto :goto_4c

    .line 375
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :cond_a1
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 376
    return-void
.end method

.method public blacklist UpdateManagementPkt(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UpdateManagementPkt> type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->logd(Ljava/lang/String;)V

    .line 287
    sparse-switch p1, :sswitch_data_30

    goto :goto_2e

    .line 294
    :sswitch_24
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    .line 295
    goto :goto_2e

    .line 290
    :sswitch_29
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    .line 291
    nop

    .line 300
    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_29
        0x4 -> :sswitch_24
    .end sparse-switch
.end method

.method public blacklist amsBoostNotify(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "state"    # I

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amsBoostNotify pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProcessCreatePack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 463
    invoke-static {p3, p2, p1, p5, p4}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeNotifyAppState(Ljava/lang/String;Ljava/lang/String;III)I

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amsBoostNotify AMS_BOOST_PROCESS_CREATE_BOOST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    if-eqz v0, :cond_7d

    if-eqz p3, :cond_7d

    .line 468
    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    if-eqz v1, :cond_7d

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    const/4 v0, 0x1

    if-ne p5, v0, :cond_7d

    .line 471
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    .line 474
    :cond_7d
    return-void
.end method

.method public blacklist amsBoostProcessCreate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 421
    if-eqz p1, :cond_3b

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amsBoostProcessCreate package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 424
    const-wide/16 v2, 0x40

    const-string v0, "amPerfBoost"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 425
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    .line 426
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE_BOOST:Z

    .line 427
    sput-object p2, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mProcessCreatePack:Ljava/lang/String;

    .line 430
    const/16 v0, 0x1e

    invoke-static {v0, v4}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 432
    const/16 v0, 0x15

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 434
    :cond_3b
    return-void
.end method

.method public blacklist amsBoostResume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "lastResumedPackageName"    # Ljava/lang/String;
    .param p2, "nextResumedPackageName"    # Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<amsBoostResume> last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 399
    const-wide/16 v0, 0x40

    const-string v2, "amPerfBoost"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 401
    const/16 v0, 0x1e

    invoke-static {v0, v3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 403
    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-eqz p1, :cond_41

    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_41

    .line 412
    :cond_39
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    .line 415
    const/16 v1, 0x17

    invoke-static {v1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    goto :goto_48

    .line 405
    :cond_41
    :goto_41
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    .line 408
    const/16 v1, 0x16

    invoke-static {v1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 418
    :goto_48
    return-void
.end method

.method public blacklist amsBoostStop()V
    .registers 5

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amsBoostStop AMS_BOOST_PACK_SWITCH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AMS_BOOST_ACT_SWITCH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AMS_BOOST_PROCESS_CREATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 441
    sget-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 442
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PACK_SWITCH:Z

    .line 443
    const/16 v0, 0x16

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 446
    :cond_3c
    sget-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    if-eqz v0, :cond_47

    .line 447
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_ACT_SWITCH:Z

    .line 448
    const/16 v0, 0x17

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 451
    :cond_47
    sget-boolean v0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    if-eqz v0, :cond_52

    .line 452
    sput-boolean v1, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->AMS_BOOST_PROCESS_CREATE:Z

    .line 453
    const/16 v0, 0x15

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 456
    :cond_52
    const-wide/16 v2, 0x40

    const-string v0, "amPerfBoost"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 457
    return-void
.end method

.method public blacklist galleryBoostEnable(I)V
    .registers 4
    .param p1, "timeoutMs"    # I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<galleryBoostEnable> do boost with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 319
    const/16 v0, 0x1a

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 320
    return-void
.end method

.method public blacklist getCpuCap()V
    .registers 2

    .line 269
    const-string v0, "getCpuCap"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public blacklist getCpuRTInfo()V
    .registers 2

    .line 281
    const-string v0, "mCpuRTInfo"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public blacklist getGpuCap()V
    .registers 2

    .line 273
    const-string v0, "mGpuCap"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public blacklist getGpuRTInfo()V
    .registers 2

    .line 277
    const-string v0, "getGpuCap"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public blacklist getRildCap(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 379
    const/16 v0, 0x28

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeQuerySysInfo(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 380
    return v1

    .line 382
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mtkCusPowerHint(II)V
    .registers 3
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 197
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkCusPowerHint(II)I

    .line 198
    return-void
.end method

.method public blacklist mtkNotifySbeRescue(IIIJ)V
    .registers 6
    .param p1, "tid"    # I
    .param p2, "start"    # I
    .param p3, "enhance"    # I
    .param p4, "frameId"    # J

    .line 201
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeNotifySbeRescue(IIIJ)I

    .line 202
    return-void
.end method

.method public blacklist mtkPowerHint(II)V
    .registers 3
    .param p1, "hint"    # I
    .param p2, "data"    # I

    .line 193
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 194
    return-void
.end method

.method public blacklist perfCusLockHint(II)I
    .registers 4
    .param p1, "hint"    # I
    .param p2, "duration"    # I

    .line 233
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfCusLockHint(II)I

    move-result v0

    return v0
.end method

.method public varargs blacklist perfLockAcquire(II[I)I
    .registers 9
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 207
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 208
    .local v1, "uid":I
    invoke-static {p1, p2, p3}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfLockAcq(II[I)I

    move-result v2

    .line 209
    .local v2, "new_hdl":I
    if-lez v2, :cond_2a

    if-eq v2, p1, :cond_2a

    const/16 v3, 0x7530

    if-gt p2, v3, :cond_16

    if-nez p2, :cond_2a

    .line 210
    :cond_16
    iget-object v3, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 211
    new-instance v3, Lcom/mediatek/powerhalwrapper/ScnList;

    invoke-direct {v3, v2, v0, v1}, Lcom/mediatek/powerhalwrapper/ScnList;-><init>(III)V

    .line 212
    .local v3, "user":Lcom/mediatek/powerhalwrapper/ScnList;
    iget-object v4, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v4, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    .end local v3    # "user":Lcom/mediatek/powerhalwrapper/ScnList;
    :cond_2a
    return v2
.end method

.method public blacklist perfLockRelease(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 219
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 220
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 221
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->scnlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/powerhalwrapper/ScnList;

    .line 224
    .local v1, "item":Lcom/mediatek/powerhalwrapper/ScnList;
    invoke-virtual {v1}, Lcom/mediatek/powerhalwrapper/ScnList;->gethandle()I

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 226
    .end local v1    # "item":Lcom/mediatek/powerhalwrapper/ScnList;
    :cond_2a
    goto :goto_15

    .line 228
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/powerhalwrapper/ScnList;>;"
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 229
    invoke-static {p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativePerfLockRel(I)I

    .line 230
    return-void
.end method

.method public blacklist querySysInfo(II)I
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<querySysInfo> cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->logd(Ljava/lang/String;)V

    .line 314
    invoke-static {p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeQuerySysInfo(II)I

    move-result v0

    return v0
.end method

.method public blacklist scnConfig(IIIIII)I
    .registers 8
    .param p1, "hdl"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 243
    const-string v0, "scnConfig not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scnDisable(I)I
    .registers 3
    .param p1, "hdl"    # I

    .line 258
    const-string v0, "scnDisable not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scnEnable(II)I
    .registers 4
    .param p1, "hdl"    # I
    .param p2, "timeout"    # I

    .line 253
    const-string v0, "scnEnable not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scnReg()I
    .registers 2

    .line 237
    const-string v0, "scnReg not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 238
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist scnUltraCfg(IIIIII)I
    .registers 8
    .param p1, "hdl"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .line 264
    const-string v0, "scnUltraCfg not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scnUnreg(I)I
    .registers 3
    .param p1, "hdl"    # I

    .line 248
    const-string v0, "scnUnreg not support!!!"

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->loge(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setInstallationBoost(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setInstallationBoost> enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 387
    const/16 v0, 0x1d

    if-eqz p1, :cond_20

    .line 388
    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    goto :goto_24

    .line 390
    :cond_20
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 391
    :goto_24
    return-void
.end method

.method public blacklist setRotationBoost(I)V
    .registers 4
    .param p1, "boostTime"    # I

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setRotation> do boost with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 324
    const/16 v0, 0x18

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 325
    return-void
.end method

.method public blacklist setSpeedDownload(I)V
    .registers 4
    .param p1, "timeoutMs"    # I

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setSpeedDownload> do boost with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 329
    const/16 v0, 0x20

    invoke-static {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 330
    return-void
.end method

.method public blacklist setSportsApk(Ljava/lang/String;)V
    .registers 4
    .param p1, "pack"    # Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setSportsApk> pack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    .line 344
    return-void
.end method

.method public blacklist setSysInfo(ILjava/lang/String;)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 304
    invoke-static {p2, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfo(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist setSysInfoAsync(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 309
    invoke-static {p2, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeSetSysInfoAsync(Ljava/lang/String;I)I

    .line 310
    return-void
.end method

.method public blacklist setWFD(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<setWFD> enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->log(Ljava/lang/String;)V

    .line 334
    const/16 v0, 0x1c

    if-eqz p1, :cond_21

    .line 335
    const v1, 0xfffffff

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    goto :goto_25

    .line 338
    :cond_21
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->nativeMtkPowerHint(II)I

    .line 339
    :goto_25
    return-void
.end method
