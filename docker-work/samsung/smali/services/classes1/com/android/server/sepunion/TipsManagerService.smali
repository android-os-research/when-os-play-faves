.class public Lcom/android/server/sepunion/TipsManagerService;
.super Lcom/samsung/android/sepunion/ITipsManager$Stub;
.source "TipsManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/TipsManagerService$TipsHandler;,
        Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;,
        Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;,
        Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_GALAXY_TIPS_NETWORK_GRANTED:Ljava/lang/String; = "samsung.galaxy.tips.network_granted"

.field public static final ACTION_GALAXY_TIPS_TERMINATED:Ljava/lang/String; = "samsung.galaxy.tips.application.terminated"

.field public static final APP_SUPPORT_TIPS_XML_NAME:Ljava/lang/String; = "tips_list"

.field public static final EXTRA_CUSTOM_INVENTORY:Ljava/lang/String; = "custom_inventory"

.field public static final EXTRA_DATA:Ljava/lang/String; = "tips_extras"

.field public static final EXTRA_DATA2:Ljava/lang/String; = "tips_extras2"

.field public static final EXTRA_DATA3:Ljava/lang/String; = "tips_extras3"

.field public static final EXTRA_DATA4:Ljava/lang/String; = "tips_extras4"

.field public static final EXTRA_TIPS_ACTION:Ljava/lang/String; = "tips_action"

.field public static final EXTRA_TIPS_CONDITION:Ljava/lang/String; = "tips_condition"

.field public static final EXTRA_TIPS_DELETE_ACTION:Ljava/lang/String; = "tips_delete_action"

.field public static final EXTRA_TIPS_ICON:Ljava/lang/String; = "tips_app_icon"

.field public static final EXTRA_TIPS_ID:Ljava/lang/String; = "tips_id"

.field public static final EXTRA_TIPS_TEXT:Ljava/lang/String; = "tips_text"

.field public static final EXTRA_TIPS_TITLE:Ljava/lang/String; = "tips_title"

.field public static final MSG_CHECK_REGULAR_HOUR:I = 0x2713

.field public static final MSG_FOTA_DONE:I = 0x5

.field public static final MSG_GALAXY_BASIC_EXPOSURE:I = 0x3

.field public static final MSG_GET_CERTAIN_CONTENT:I = 0x7

.field public static final MSG_INITIAL_TIMER_START:I = 0x2714

.field public static final MSG_NEW_DATA_UPDATED:I = 0x1

.field public static final MSG_REGULAR_TIPS_NOTIFICATION:I = 0x6

.field public static final MSG_SHOW_EXT_TIPS:I = 0x9

.field public static final MSG_SHOW_HEADUP_NOTIFICATION:I = 0x2

.field public static final MSG_SHOW_JIT_HEADUP_NOTIFICATION:I = 0x8

.field public static final MSG_START_TIPS_HUN:I = 0x2711

.field public static final ONE_DAY:I = 0x5265c00

.field public static final ONE_HOUR:I = 0x36ee80

.field public static final ONE_MINUTE:I = 0xea60

.field public static final ONE_MONTH:I = -0x65813800

.field public static final ONE_SECOND:I = 0x3e8

.field public static final ONE_WEEK:I = 0x240c8400

.field public static final SENDMSG_NOOP:I = 0x1

.field public static final SENDMSG_QUEUE:I = 0x2

.field public static final SENDMSG_REPLACE:I = 0x0

.field public static final SETTING_TIPS_NETWORK_GRANTED:Ljava/lang/String; = "gtips_network_granted"

.field public static final TAG:Ljava/lang/String;

.field public static final TIPS_HUN_CALL_COUNT:I = 0x5

.field public static final TIPS_HUN_RETRY_MAX_COUNT:I = 0x3

.field public static final TIPS_INTENT_SERVICE_NAME:Ljava/lang/String; = ".TipsIntentService"

.field public static final TIPS_MAIN_ACTIVITY_NAME:Ljava/lang/String; = ".TipsMainActivity"

.field public static final TIPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.tips"

.field public static final TIPS_SMARTITEM_DETAIL_ACTIVITY_NAME:Ljava/lang/String; = ".TipsSmartItemDetailActivity"

.field public static mLastDeviceConnectMsgTime:Ljava/lang/Long;


# instance fields
.field public mBootupCompleted:Z

.field public mContext:Landroid/content/Context;

.field public mDialCount:I

.field public mHUNDisplayCount:I

.field public final mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

.field public final mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

.field public mTipsHUNAlreadyShown:Z

.field public mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

.field public mTipsNetworkGranted:Z

.field public mTipsOnBoot:Z

.field public mTipsPackageExist:Z

.field public mTipsServiceThread:Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

.field public mWaitingCallEnd:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBootupCompleted(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDialCount(Lcom/android/server/sepunion/TipsManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipReceiver(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsOnBoot(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDialCount(Lcom/android/server/sepunion/TipsManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHUNDisplayCount(Lcom/android/server/sepunion/TipsManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;Lcom/android/server/sepunion/TipsManagerService$TipsHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsOnBoot(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 71
    const-class v0, Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ITipsManager$Stub;-><init>()V

    .line 68
    new-instance v1, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 69
    new-instance v0, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    const/4 v6, 0x0

    .line 97
    iput v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 98
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 99
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 100
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 105
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 264
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 265
    sget-object p1, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "[GalaxyTips] TipsManagerService"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_2c
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "com.samsung.android.app.tips"

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 271
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "tips_trigger_count"

    const/4 v4, -0x2

    invoke-static {p1, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_52

    .line 276
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 278
    :cond_52
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "gtips_network_granted"

    invoke-static {p1, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_63

    .line 279
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    :cond_63
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 282
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "samsung.galaxy.tips.application.terminated"

    .line 283
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 284
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    if-nez p1, :cond_7d

    const-string/jumbo p1, "samsung.galaxy.tips.network_granted"

    .line 287
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    :cond_7d
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    if-nez p1, :cond_8b

    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 290
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PHONE_STATE"

    .line 291
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    :cond_8b
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_94
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_94} :catch_95

    goto :goto_99

    .line 295
    :catch_95
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 296
    iput-boolean v6, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsOnBoot:Z

    .line 298
    :goto_99
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_INSTALL"

    .line 300
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 301
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 302
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 303
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/sepunion/TipsManagerService;->mPackageReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsPackageReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    new-instance p1, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsServiceThread:Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    .line 308
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getDeviceVersion(Landroid/content/Context;)I
    .registers 3

    .line 494
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x138e4

    if-lt p0, v0, :cond_29

    .line 495
    div-int/lit16 v0, p0, 0x2710

    .line 496
    rem-int/lit16 p0, p0, 0x2710

    div-int/lit8 p0, p0, 0x64

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 11

    if-nez p2, :cond_6

    .line 482
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 483
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_10

    return-void

    .line 486
    :cond_10
    :goto_10
    sget-object p2, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter p2

    .line 487
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 488
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 489
    monitor-exit p2

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p2
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    if-eqz p3, :cond_164

    .line 370
    array-length p1, p3

    if-lez p1, :cond_164

    const/4 p1, 0x0

    .line 371
    aget-object p1, p3, p1

    const-string/jumbo v0, "notification"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string/jumbo v2, "tips_extras"

    const-string v3, "com.samsung.android.app.tips.TipsIntentService"

    const-string v4, "com.samsung.android.app.tips"

    if-eqz v0, :cond_2c

    .line 374
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 376
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_2c
    const-string/jumbo v0, "refresh"

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_49

    .line 382
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 384
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_49
    const-string/jumbo v0, "showbasic"

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_66

    .line 390
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 392
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_66
    const-string/jumbo v0, "getcustom"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 399
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.MAIN"

    .line 401
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x18000000

    .line 402
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "com.samsung.android.app.tips.TipsSmartItemDetailActivity"

    .line 403
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    aget-object p2, p3, v5

    const-string p3, "custom_inventory"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_90
    const-string v0, "fotadone"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 409
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 411
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x5

    .line 412
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_ac
    const-string/jumbo v0, "showrecent"

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 417
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 419
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x6

    .line 420
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_c9
    const-string/jumbo v0, "showcontent"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v7, "tips_extras2"

    if-eqz v0, :cond_ee

    .line 425
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 427
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x7

    .line 428
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    aget-object p2, p3, v5

    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_ee
    const-string/jumbo v0, "showjit"

    .line 433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 434
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 436
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x8

    .line 437
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    aget-object p2, p3, v5

    invoke-virtual {p1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    aget-object p2, p3, v1

    const-string/jumbo v0, "tips_extras4"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    aget-object p2, p3, v6

    const-string/jumbo p3, "tips_extras3"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_121
    const-string/jumbo v0, "showtip"

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_164

    .line 445
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 447
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x9

    .line 448
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    aget-object p2, p3, v5

    const-string/jumbo v0, "tips_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    aget-object p2, p3, v1

    const-string/jumbo v0, "tips_title"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    aget-object p2, p3, v6

    const-string/jumbo v0, "tips_text"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x4

    .line 454
    aget-object p2, p3, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo p3, "tips_condition"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void

    :cond_164
    const-string p1, "\n\n"

    .line 462
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "[Galaxy Tips]"

    .line 463
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    iget-boolean p3, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-nez p3, :cond_178

    const-string p0, "Galaxy Tips is not exist this device"

    .line 466
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 470
    :cond_178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "ETC Values"

    .line 471
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "=========================================================================="

    .line 472
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "mTipsNetworkGranted = "

    .line 473
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "mTipsHUNAlreadyShown = "

    .line 474
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo p1, "mDialCount = "

    .line 475
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onBootPhase(I)V
    .registers 9

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 331
    iget-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-eqz p1, :cond_19

    .line 332
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    const/16 v1, 0x2714

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x1d4c0

    invoke-static/range {v0 .. v6}, Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_19
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method
