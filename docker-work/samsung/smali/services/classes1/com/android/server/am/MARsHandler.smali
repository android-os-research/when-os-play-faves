.class public Lcom/android/server/am/MARsHandler;
.super Ljava/lang/Object;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsHandler$MainHandler;,
        Lcom/android/server/am/MARsHandler$MainThread;,
        Lcom/android/server/am/MARsHandler$MARsHandlerHolder;
    }
.end annotation


# static fields
.field public static final FIRST_TRIGGER_INTERVAL:J = 0x1388L

.field public static final GET_BATTERYSTAT_INTERVAL:J = 0x2932e00L

.field public static final MARS_MH_CALL_SETAPPSTANDBYBUCKET_MSG:I = 0xd

.field public static final MARS_MH_CALL_SETMODE_MSG:I = 0x5

.field public static final MARS_MH_CANCEL_POLICY_MSG:I = 0x8

.field public static final MARS_MH_FGS_RESTRICTION_TARGET_MSG:I = 0xf

.field public static final MARS_MH_FIRST_TRIGGER_MSG:I = 0x1

.field public static final MARS_MH_GET_BATTERYSTAT_MSG:I = 0x4

.field public static final MARS_MH_INIT_DISABLED_MSG:I = 0xc

.field public static final MARS_MH_KILL_PACKAGE_PROCS_MSG:I = 0xe

.field public static final MARS_MH_NOTIFY_ANOMALY_MSG:I = 0x10

.field public static final MARS_MH_NOTIFY_DEVICECARE_MSG:I = 0xb

.field public static final MARS_MH_REPEAT_TRIGGER_MSG:I = 0x2

.field public static final MARS_MH_RUN_POLICY_SPECIFIC_PKG_MSG:I = 0x7

.field public static final MARS_MH_TIME_CHANGED_MSG:I = 0x6

.field public static final MARS_MH_TRIGGER_POLICY_MSG:I = 0x9

.field public static final MARS_MH_UPDATE_DISABLE_MSG:I = 0xa

.field public static final MARS_MH_UPDATE_PACKAGES_MSG:I = 0x3

.field public static final REPEAT_TRIGGER_INTERVAL:J = 0x3a98L

.field public static final TAG:Ljava/lang/String; = "MARsHandler"

.field public static final UPDATE_DISABLE_INTERVAL:J = 0x5265c00L

.field public static final UPDATE_DISABLE_INTERVAL_DEBUG:J = 0x36ee80L

.field public static final UPDATE_PACKAGES_INTERVAL:J = 0x927c0L


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/MARsHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/MARsHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MARsHandler;
    .registers 1

    .line 60
    invoke-static {}, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsHandler;->setContext(Landroid/content/Context;)V

    .line 74
    new-instance p1, Lcom/android/server/am/MARsHandler$MainThread;

    const-string v0, "MARsMainThread"

    const/4 v1, -0x2

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/MARsHandler$MainThread;-><init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public removeMessages(I)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez p0, :cond_5

    return-void

    .line 498
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeMessagesByObj(ILjava/lang/Object;)V
    .registers 3

    .line 502
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez p0, :cond_5

    return-void

    .line 505
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public sendAnomalyMsgToMainHandler(Ljava/lang/String;I)V
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 485
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 486
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 490
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 491
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCallSetAppStandbyBucketMsgToMainHandler(Ljava/lang/String;IIZ)V
    .registers 7

    .line 437
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 440
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 441
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 442
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bucket"

    .line 443
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "byUser"

    .line 444
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V
    .registers 6

    .line 342
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 345
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 346
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 347
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "mode"

    .line 348
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 351
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_2f

    .line 353
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_34

    .line 355
    :cond_2f
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :goto_34
    return-void
.end method

.method public sendCancelPolicyMsgToMainHandler(Ljava/util/ArrayList;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageList"

    .line 385
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "policy-num"

    .line 386
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userId"

    .line 387
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 390
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 391
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFGSRestrictionTargetMsgToMainHandler(Ljava/lang/String;I)V
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 472
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 473
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 474
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 477
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 478
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFirstTriggerMsgToMainHandler()V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 307
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_26

    .line 310
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_26
    return-void
.end method

.method public sendGetBatteryStatMsgToMainHandler(Z)V
    .registers 5

    .line 333
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x4

    .line 336
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 338
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_16

    const-wide/16 v1, 0x0

    goto :goto_19

    :cond_16
    const-wide/32 v1, 0x2932e00

    :goto_19
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendInitDisabledMsgToMainHandler(I)V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 428
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    .line 429
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 432
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 433
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendKillPackageProcsMsgToMainHandler(Ljava/lang/String;IIIZLjava/lang/String;)V
    .registers 9

    .line 452
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 455
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pkgName"

    .line 456
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 457
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "userId"

    .line 458
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "minAdj"

    .line 459
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "allowRestart"

    .line 460
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "reason"

    .line 461
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 464
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 465
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 412
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 415
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extraType"

    .line 416
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "specificPackage"

    .line 417
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "specificPackageCnt"

    .line 418
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 422
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendRepeatTriggerMsgToMainHandler()V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x2

    .line 318
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 320
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendRunPolicySepcificPkgMsgToMainHandler(Ljava/util/ArrayList;ILjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageList"

    .line 372
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "policy-num"

    .line 373
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "trigger-reason"

    .line 374
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 375
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 378
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 379
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTimeChangedMsgToMainHandler(J)V
    .registers 5

    .line 360
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "changedTime"

    .line 362
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    iget-object p1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 365
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTriggerPolicyMsgToMainHandler()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 396
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdateDisableMsgToMainHandler(Z)V
    .registers 6

    .line 400
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 402
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "debug"

    .line 403
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v1, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 407
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 408
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_27

    const-wide/32 v2, 0x36ee80

    goto :goto_2a

    :cond_27
    const-wide/32 v2, 0x5265c00

    :goto_2a
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendUpdatePkgMsgToMainHandler(Z)V
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x3

    .line 327
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 329
    iget-object p0, p0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz p1, :cond_16

    const-wide/16 v1, 0x0

    goto :goto_19

    :cond_16
    const-wide/32 v1, 0x927c0

    :goto_19
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    return-void
.end method
