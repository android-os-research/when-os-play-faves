.class public Lcom/android/server/am/FreecessHandler;
.super Ljava/lang/Object;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreecessHandler$BluetoothHanlder;,
        Lcom/android/server/am/FreecessHandler$BlueToothThread;,
        Lcom/android/server/am/FreecessHandler$MainHandler;,
        Lcom/android/server/am/FreecessHandler$FreecessThread;,
        Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;,
        Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;
    }
.end annotation


# static fields
.field public static final FREECESS_CALM_MODE_CANCEL_MSG:I = 0x17

.field public static final FREECESS_CALM_MODE_REPEAT_MSG:I = 0x16

.field public static final FREECESS_CALM_MODE_TRIGGER_MSG:I = 0x15

.field public static final FREECESS_CHANGE_TO_FREEZEABLE_MSG:I = 0x2

.field public static final FREECESS_CHANGE_TO_FROZEN_MSG:I = 0x3

.field public static final FREECESS_CHECK_FROZEN_BINDER_MSG:I = 0x8

.field public static final FREECESS_ENABLE_DELAYED_MSG:I = 0xd

.field public static final FREECESS_FREEZE_BT_SCAN_MSG:I = 0x1a

.field public static final FREECESS_LCD_ON_FREEZE_MSG:I = 0x4

.field public static final FREECESS_OLAF_MSG:I = 0x9

.field public static final FREECESS_OLAF_TIMEOUT_MSG:I = 0xa

.field public static final FREECESS_ON_FREEZE_STATE_CHANGED_MSG:I = 0x10

.field public static final FREECESS_PACKAGE_UNFREEZE_ALL_MSG:I = 0xc

.field public static final FREECESS_PENDING_BROADCAST_MSG:I = 0xb

.field public static final FREECESS_PROC_POST_MONITORING_MSG:I = 0x12

.field public static final FREECESS_REMOVE_PACKAGE_MSG:I = 0x13

.field public static final FREECESS_REPORT_STATUS_MSG:I = 0x19

.field public static final FREECESS_RESET_ALL_STATE_MSG:I = 0x6

.field public static final FREECESS_RESET_STATE_MSG:I = 0x5

.field public static final FREECESS_SETTLEMENT_PKG_MSG:I = 0x7

.field public static final FREECESS_SSRM_CHANGED_MSG:I = 0xe

.field public static final FREECESS_UIDIDLE_CHECK_MSG:I = 0x1

.field public static final FREECESS_UNFREEZE_ACTIVE_PKGS_MSG:I = 0xf

.field public static final FREECESS_UNFREEZE_BT_SCAN_MSG:I = 0x1b

.field public static final FREECESS_UNFREEZE_REQUEST_FOCUS_PKG_MSG:I = 0x18

.field public static final OLAF_TIMEOUT_API_MAX_INTERVAL:I = 0x1388

.field public static final OLAF_TIMEOUT_DELAY_INTERVAL:I = 0xbb8

.field public static TAG:Ljava/lang/String; = "FreecessHandler"

.field public static final WATCHDOG_PRE_ACTION_TO_UFZ_ALL_INTERVAL:I = 0x1388


# instance fields
.field public CHECK_FROZEN_BINDER_DELAY_INTERVAL:I

.field public DUMPSTATE_TIMEOUT_INTERVAL:I

.field public final FREECESS_THREAD_NAME:Ljava/lang/String;

.field public LCD_ON_DELAY_INTERVAL:I

.field public LCD_ON_FREECESS_CALM_MODE_DELAY_INTERVAL:I

.field public LCD_ON_FREECESS_CHECK_DELAY:I

.field public LCD_ON_FREECESS_DELAY_INTERVAL:I

.field public PROC_POST_MONITORING_DELAY_INTERVAL:I

.field public SMARTSWITCH_TIMEOUT_INTERVAL:I

.field public UID_IDLE_CHECK_INTERVAL:I

.field public lastDelayedTime:J

.field public mBlueToothThread:Lcom/android/server/am/FreecessHandler$BlueToothThread;

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mBluetoothHanlder:Lcom/android/server/am/FreecessHandler$BluetoothHanlder;

.field public mContext:Landroid/content/Context;

.field public mFreecessThread:Lcom/android/server/am/FreecessHandler$FreecessThread;

.field public mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

.field public mNetLinkReceiverThread:Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;


# direct methods
.method public static bridge synthetic -$$Nest$fputmBluetoothHanlder(Lcom/android/server/am/FreecessHandler;Lcom/android/server/am/FreecessHandler$BluetoothHanlder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothHanlder:Lcom/android/server/am/FreecessHandler$BluetoothHanlder;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FreecessHandler"

    .line 23
    iput-object v0, p0, Lcom/android/server/am/FreecessHandler;->FREECESS_THREAD_NAME:Ljava/lang/String;

    const v0, 0xfde8

    .line 36
    iput v0, p0, Lcom/android/server/am/FreecessHandler;->UID_IDLE_CHECK_INTERVAL:I

    const/16 v0, 0x3a98

    .line 37
    iput v0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_DELAY_INTERVAL:I

    const/16 v0, 0x7d0

    .line 38
    iput v0, p0, Lcom/android/server/am/FreecessHandler;->CHECK_FROZEN_BINDER_DELAY_INTERVAL:I

    const v1, 0xea60

    .line 39
    iput v1, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CHECK_DELAY:I

    const/16 v1, 0x2710

    .line 40
    iput v1, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_DELAY_INTERVAL:I

    const/16 v1, 0x3e8

    .line 41
    iput v1, p0, Lcom/android/server/am/FreecessHandler;->PROC_POST_MONITORING_DELAY_INTERVAL:I

    .line 44
    iput v0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CALM_MODE_DELAY_INTERVAL:I

    const v0, 0x493e0

    .line 47
    iput v0, p0, Lcom/android/server/am/FreecessHandler;->DUMPSTATE_TIMEOUT_INTERVAL:I

    const v0, 0xa1220

    .line 48
    iput v0, p0, Lcom/android/server/am/FreecessHandler;->SMARTSWITCH_TIMEOUT_INTERVAL:I

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/FreecessHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/FreecessHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/FreecessHandler;
    .registers 1

    .line 92
    invoke-static {}, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/am/FreecessHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 96
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler;->mContext:Landroid/content/Context;

    .line 98
    new-instance p1, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;

    const-string v0, "Freecess_NLRCT"

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;-><init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler;->mNetLinkReceiverThread:Lcom/android/server/am/FreecessHandler$NetLinkReceiverThread;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance p1, Lcom/android/server/am/FreecessHandler$BlueToothThread;

    const-string v0, "Freecess_BT"

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/FreecessHandler$BlueToothThread;-><init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler;->mBlueToothThread:Lcom/android/server/am/FreecessHandler$BlueToothThread;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz p0, :cond_7

    .line 152
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public removeBgTriggerMsg()V
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 851
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeBgTriggerMsg...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 853
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeBgTriggerMsgByObj(ILjava/lang/Object;)V
    .registers 6

    .line 839
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 842
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_28

    .line 843
    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeBgTriggerMsgByObj....what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_28
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public removeCalmModeFreezeMsg()V
    .registers 2

    .line 630
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x16

    .line 632
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeMessages(I)V
    .registers 2

    .line 859
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz p0, :cond_7

    .line 860
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    return-void
.end method

.method public removeOLAFTimeOutMsg()V
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 834
    :cond_5
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeOLAFTimeOutMsg...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendCalmModeCancelMsg()V
    .registers 4

    .line 621
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x17

    .line 624
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 625
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 607
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 610
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 611
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    .line 612
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "reason"

    .line 613
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 p3, 0x16

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 616
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 617
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    iget p0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CALM_MODE_DELAY_INTERVAL:I

    int-to-long v0, p0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendCalmModeTriggerMsg(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x15

    .line 597
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "list"

    .line 599
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 601
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 602
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 603
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 7

    .line 508
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 511
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 512
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    .line 513
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "isDelay"

    .line 514
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "reason"

    .line 515
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 p4, 0x2

    invoke-virtual {p2, p4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 518
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-eqz p3, :cond_4c

    .line 521
    iget-object p3, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p3, p4, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    .line 522
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p3

    if-eqz p3, :cond_45

    iget p0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_DELAY_INTERVAL:I

    goto :goto_47

    :cond_45
    iget p0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_DELAY_INTERVAL:I

    :goto_47
    int-to-long p3, p0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_51

    .line 524
    :cond_4c
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_51
    :goto_51
    return-void
.end method

.method public sendChangeToFrozenMsg(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 529
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 532
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 533
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    .line 534
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "reason"

    .line 535
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 538
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, p3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 541
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p3

    if-eqz p3, :cond_3d

    iget p0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_DELAY_INTERVAL:I

    goto :goto_3f

    :cond_3d
    iget p0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_DELAY_INTERVAL:I

    :goto_3f
    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_43
    return-void
.end method

.method public sendFreecessSettlementMsg(Ljava/lang/String;IIIIZZZ)V
    .registers 12

    .line 671
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x7

    .line 674
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 676
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 677
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 678
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "uid"

    .line 679
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "packetMonitorFlag"

    .line 680
    invoke-virtual {v1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "disableWakelockFlag"

    .line 681
    invoke-virtual {v1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "isLcdOnTrigger"

    .line 682
    invoke-virtual {v1, p2, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "unrestrictJobs"

    .line 683
    invoke-virtual {v1, p2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 686
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p6, :cond_5d

    .line 690
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 691
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 692
    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    invoke-virtual {p2, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 694
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    iget p0, p0, Lcom/android/server/am/FreecessHandler;->CHECK_FROZEN_BINDER_DELAY_INTERVAL:I

    int-to-long p3, p0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5d
    return-void
.end method

.method public sendLcdOnFreezeTriggerMsg(Ljava/lang/String;I)V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 548
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 549
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 550
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 553
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 555
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendOLAFMsg(ZLjava/lang/String;I)V
    .registers 7

    .line 699
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x9

    .line 702
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enterFlag"

    .line 705
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "packageName"

    .line 706
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 707
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 710
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 712
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public sendOLAFTimeOutMsg(J)V
    .registers 7

    .line 716
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0xa

    .line 719
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xbb8

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_28

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0x1388

    if-le p1, p2, :cond_1f

    move v1, p2

    goto :goto_20

    :cond_1f
    move v1, p1

    :goto_20
    if-gtz v1, :cond_28

    .line 727
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 731
    :cond_28
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    int-to-long p1, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendOnFreezeStateChanged(ZI)V
    .registers 5

    .line 760
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 763
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enabled"

    .line 764
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "uid"

    .line 765
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 768
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 770
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendPendingBroadcastMsg(Ljava/lang/String;I)V
    .registers 5

    .line 746
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 749
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 750
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 751
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 754
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 756
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendProcPostMonitoringMsg()V
    .registers 5

    .line 735
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x12

    .line 739
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 741
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    iget p0, p0, Lcom/android/server/am/FreecessHandler;->PROC_POST_MONITORING_DELAY_INTERVAL:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendRemovePackageMsg(Ljava/lang/String;I)V
    .registers 5

    .line 817
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 820
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 821
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uid"

    .line 822
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 824
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 825
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 827
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendResetAllStateMsg(Ljava/lang/String;)V
    .registers 6

    .line 574
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "Watchdog_HALF"

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 579
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->handleResetAllPreAction()V

    .line 581
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "reason"

    .line 583
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 586
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-eqz v0, :cond_38

    .line 588
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3d

    .line 590
    :cond_38
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3d
    return-void
.end method

.method public sendResetStateMsg(Ljava/lang/String;I)V
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x5

    .line 562
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 564
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 565
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 567
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 570
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSCPMChangedPkgMsgToDBHandler()V
    .registers 4

    .line 809
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0xe

    .line 812
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 813
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendSetFreecessEnableDelayedMsg(I)V
    .registers 9

    .line 785
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 788
    :cond_5
    iget v0, p0, Lcom/android/server/am/FreecessHandler;->DUMPSTATE_TIMEOUT_INTERVAL:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    .line 790
    iget v0, p0, Lcom/android/server/am/FreecessHandler;->SMARTSWITCH_TIMEOUT_INTERVAL:I

    .line 793
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 795
    iget-wide v3, p0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    sub-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3b

    add-long/2addr v1, v5

    .line 796
    iput-wide v1, p0, Lcom/android/server/am/FreecessHandler;->lastDelayedTime:J

    .line 797
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "type"

    .line 799
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 802
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 804
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3b
    return-void
.end method

.method public sendUidIdleCheckMsg(ILjava/lang/String;Z)V
    .registers 6

    .line 482
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 485
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    .line 486
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "packageName"

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 490
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    if-eqz p3, :cond_40

    .line 495
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result p3

    if-eqz p3, :cond_39

    iget p0, p0, Lcom/android/server/am/FreecessHandler;->LCD_ON_FREECESS_CHECK_DELAY:I

    goto :goto_3b

    :cond_39
    iget p0, p0, Lcom/android/server/am/FreecessHandler;->UID_IDLE_CHECK_INTERVAL:I

    :goto_3b
    int-to-long v0, p0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_66

    .line 498
    :cond_40
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_66

    .line 501
    :cond_46
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz p0, :cond_66

    .line 502
    sget-object p0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "packageName: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " already hasMessage"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method

.method public sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0xf

    .line 640
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 641
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "reason"

    .line 642
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 645
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 646
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUnfreezeAllMsg()V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    .line 777
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 778
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 781
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUnfreezeRequestFocusPackageMsg()V
    .registers 3

    .line 650
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x18

    .line 653
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 655
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdateBTMsg(II)V
    .registers 5

    .line 472
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothHanlder:Lcom/android/server/am/FreecessHandler$BluetoothHanlder;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 474
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    .line 475
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 476
    iget-object p2, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothHanlder:Lcom/android/server/am/FreecessHandler$BluetoothHanlder;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 477
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 478
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothHanlder:Lcom/android/server/am/FreecessHandler$BluetoothHanlder;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
