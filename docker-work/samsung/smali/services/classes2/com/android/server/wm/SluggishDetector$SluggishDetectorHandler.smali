.class public final Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SluggishDetectorHandler"
.end annotation


# static fields
.field public static final ENABLE_DELAY_AFTER_BOOT:J = 0x493e0L

.field public static ENABLE_HANDLER:Z = false

.field public static final MSG_ENABLE_HANDLER:I = 0x1

.field public static final MSG_REPORT_LAUNCH:I = 0xc

.field public static final MSG_REPORT_LOCK_CONTENTION:I = 0xd

.field public static final MSG_REPORT_SLUGGISH:I = 0x2

.field public static final MSG_SET_COLLECT_FLAG_FOR_PERIODIC_MEMORY:I = 0x65

.field public static final MSG_SET_LAUNCH:I = 0xb

.field public static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_LAUNCH:I = 0x3e9

.field public static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_MEMORY:I = 0x3ea

.field public static final MSG_STORE_OLOG_Day:I = 0x15

.field public static final MSG_STORE_OLOG_Now:I = 0x16

.field public static final TAG:Ljava/lang/String;

.field public static sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

.field public static sHandlerThread:Lcom/android/server/ServiceThread;


# instance fields
.field public mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendDataToHandler(ILjava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessageToHandlerDelayed(IJ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 162
    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 163
    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    const/4 v0, 0x0

    .line 165
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 280
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 355
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    return-void
.end method

.method public static check()Z
    .registers 1

    .line 187
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static init()V
    .registers 4

    .line 169
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_27

    .line 174
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 175
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    .line 178
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setEnableWithDelay()V

    :cond_27
    return-void
.end method

.method public static sendDataToHandler(ILjava/lang/Object;)V
    .registers 3

    .line 214
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_20

    .line 216
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_c

    return-void

    .line 235
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_15

    .line 236
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 238
    :cond_15
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 240
    sget-object p1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    return-void
.end method

.method public static sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    .registers 5

    .line 251
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1b

    if-nez p1, :cond_7

    return-void

    .line 265
    :cond_7
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_10

    .line 266
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 268
    :cond_10
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 270
    sget-object p1, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1b
    return-void
.end method

.method public static sendMessageToHandlerDelayed(IJ)V
    .registers 4

    .line 192
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_12

    .line 200
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v0

    if-nez v0, :cond_d

    .line 201
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V

    .line 203
    :cond_d
    sget-object v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    return-void
.end method

.method public static setEnable()V
    .registers 1

    const/4 v0, 0x1

    .line 397
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method public static setEnableWithDelay()V
    .registers 3

    const/4 v0, 0x1

    const-wide/32 v1, 0x493e0

    .line 405
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 299
    :cond_3
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_52

    const/16 v1, 0x15

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x16

    if-eq v0, v1, :cond_4a

    packed-switch v0, :pswitch_data_5e

    goto :goto_5c

    .line 317
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5c

    .line 318
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    new-instance v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->checkTime()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->updateLCD()V

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendToInfoForLockContention(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V

    goto :goto_5c

    .line 311
    :pswitch_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5c

    instance-of v0, p1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    if-eqz v0, :cond_5c

    .line 312
    check-cast p1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->reportLaunch(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    goto :goto_5c

    .line 305
    :pswitch_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5c

    instance-of v0, p1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    if-eqz v0, :cond_5c

    .line 306
    check-cast p1, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    goto :goto_5c

    .line 332
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->storeOLOGNow()V

    goto :goto_5c

    .line 329
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->storeOLOGDay()V

    goto :goto_5c

    .line 301
    :cond_52
    sget-object p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    const-string p1, "case MSG_ENABLE_HANDLER"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->setEnable()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5c} :catch_5c

    :catch_5c
    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0xb
        :pswitch_3c
        :pswitch_2e
        :pswitch_14
    .end packed-switch
.end method

.method public reportLaunch(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    const/4 v1, 0x0

    .line 377
    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 378
    invoke-static {p1, v0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->-$$Nest$mreportLaunch(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method public final sendToInfoForLockContention(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V
    .registers 2

    .line 352
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->-$$Nest$mLockInfo_Logging(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V

    return-void
.end method

.method public setLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 365
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->-$$Nest$msetLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method public final storeOLOGDay()V
    .registers 2

    const/16 v0, 0x15

    .line 384
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "/data/log/remaining_olog"

    .line 385
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstoreOLOG(Ljava/lang/String;)Z

    return-void
.end method

.method public final storeOLOGNow()V
    .registers 2

    const/16 v0, 0x16

    .line 391
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-string p0, "/data/log/remaining_olog_now"

    .line 392
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->-$$Nest$smstoreOLOG(Ljava/lang/String;)Z

    return-void
.end method
