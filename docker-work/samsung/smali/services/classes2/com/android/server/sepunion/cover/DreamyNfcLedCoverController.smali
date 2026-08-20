.class public final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;,
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;,
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field public static final CMD_START_LED_BACK_COVER_SERVICE_APP:I = -0x2

.field public static final CMD_START_LED_COVER_SERVICE_APP:I = -0x1

.field public static final MAX_FACTORY_MODE_ENQUEUE_COMMANDS:I = 0x3

.field public static final MSG_COVER_ATTACH_STATE:I = 0x5

.field public static final MSG_FOTA_IN_PROGRESS_REQUEST:I = 0xc

.field public static final MSG_FOTA_IN_PROGRESS_RESPONSE:I = 0xd

.field public static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x9

.field public static final MSG_LED_NOTIFICATION_ADD:I = 0x6

.field public static final MSG_LED_NOTIFICATION_REMOVE:I = 0x7

.field public static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field public static final MSG_NOTIFY_AUTH_RESPONSE:I = 0xb

.field public static final MSG_REQUEST_AUTH:I = 0xa

.field public static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field public static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x4

.field public static final TAG:Ljava/lang/String; = "DreamyNfcLedCoverController"


# instance fields
.field public mCoverAuthCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mEnquedFactoryCommands:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public mFotaInProgressCallbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

.field public mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCoverAuthCallbacks(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFotaInProgressCallbacks(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCoverDetachedLocked(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyAuthResponse(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleNotifyAuthResponse()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNotifyFotaInProgress(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleNotifyFotaInProgress(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRequestCoverAuthentication(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleRequestCoverAuthentication(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSetFotaInProgress(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->handleSetFotaInProgress(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 90
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 91
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 93
    new-instance p2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {p2, p0, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 94
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string/jumbo v0, "send leddata"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 97
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 4

    .line 278
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 280
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current NfcLedCoverController state:"

    .line 787
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsLEDCoverAttached="

    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  "

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " Current NFC Callback state:"

    .line 792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 795
    :try_start_1c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Live callbacks ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz p3, :cond_41

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    :cond_89
    const-string p0, "  "

    .line 802
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    monitor-exit p1

    return-void

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_1c .. :try_end_92} :catchall_90

    throw p0
.end method

.method public final handleAddLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 321
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 322
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 323
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x2

    .line 324
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 327
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final handleCoverDetachedLocked()V
    .registers 3

    .line 179
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public final handleEventResponse(II)V
    .registers 7

    .line 398
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleEventResponse: type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p2, v1, :cond_e1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_ba

    if-eq p2, v2, :cond_93

    const/4 v1, 0x4

    if-eq p2, v1, :cond_6b

    const/4 v1, 0x5

    if-eq p2, v1, :cond_43

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_104

    :cond_43
    const-string p2, "Event touch: tap right"

    .line 442
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 444
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 445
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_51

    .line 446
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapRight()V

    goto :goto_51

    .line 449
    :cond_65
    monitor-exit p2

    goto/16 :goto_104

    :catchall_68
    move-exception p0

    monitor-exit p2
    :try_end_6a
    .catchall {:try_start_4b .. :try_end_6a} :catchall_68

    throw p0

    :cond_6b
    const-string p2, "Event touch: tap middle"

    .line 432
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 434
    :try_start_73
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_79
    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 435
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_79

    .line 436
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapMid()V

    goto :goto_79

    .line 439
    :cond_8d
    monitor-exit p2

    goto/16 :goto_104

    :catchall_90
    move-exception p0

    monitor-exit p2
    :try_end_92
    .catchall {:try_start_73 .. :try_end_92} :catchall_90

    throw p0

    :cond_93
    const-string p2, "Event touch: tap left"

    .line 422
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 424
    :try_start_9b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a1
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 425
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_a1

    .line 426
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapLeft()V

    goto :goto_a1

    .line 429
    :cond_b5
    monitor-exit p2

    goto :goto_104

    :catchall_b7
    move-exception p0

    monitor-exit p2
    :try_end_b9
    .catchall {:try_start_9b .. :try_end_b9} :catchall_b7

    throw p0

    :cond_ba
    const-string p2, "Event touch: reject"

    .line 412
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 414
    :try_start_c2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c8
    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 415
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_c8

    .line 416
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_c8

    .line 419
    :cond_dc
    monitor-exit p2

    goto :goto_104

    :catchall_de
    move-exception p0

    monitor-exit p2
    :try_end_e0
    .catchall {:try_start_c2 .. :try_end_e0} :catchall_de

    throw p0

    :cond_e1
    const-string p2, "Event touch: accept"

    .line 402
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 404
    :try_start_e9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ef
    :goto_ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 405
    iget v3, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_ef

    .line 406
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_ef

    .line 409
    :cond_103
    monitor-exit p2
    :try_end_104
    .catchall {:try_start_e9 .. :try_end_104} :catchall_112

    .line 455
    :goto_104
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_111

    .line 456
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_111
    return-void

    :catchall_112
    move-exception p0

    .line 409
    :try_start_113
    monitor-exit p2
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw p0
.end method

.method public final handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 347
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 348
    invoke-virtual {v1, v3, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 351
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final handleNotifyAuthResponse()V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 534
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 535
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 536
    invoke-virtual {v1, v2, v3}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 537
    iget-object v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 538
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 540
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final handleNotifyFotaInProgress(Z)V
    .registers 4

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fota_in_progress"

    .line 601
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 603
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter p1

    .line 604
    :try_start_d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    if-eqz p0, :cond_22

    const/16 v1, 0x8

    .line 606
    invoke-virtual {p0, v1, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 609
    :cond_22
    monitor-exit p1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final handleRemoveLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 333
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 335
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x3

    .line 336
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 339
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final handleRequestCoverAuthentication(J)V
    .registers 3

    return-void
.end method

.method public final handleSendDataToNfcLedCover(I[B)V
    .registers 10

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "send_command_id"

    .line 370
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "send_command_content"

    .line 371
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 374
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    .line 375
    :try_start_14
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 376
    iget v5, v4, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1c

    const/4 v3, 0x5

    .line 377
    invoke-virtual {v4, v3, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    const/4 v3, 0x1

    goto :goto_1c

    .line 381
    :cond_33
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_6d

    if-nez v3, :cond_5f

    .line 383
    sget-object p2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LedCoverService did not finished initalizing, enqueue command "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_5a

    .line 388
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 390
    :cond_5a
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_5f
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 393
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_6c
    return-void

    :catchall_6d
    move-exception p0

    .line 381
    :try_start_6e
    monitor-exit p2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public final handleSendPowerKeyToCover()V
    .registers 1

    .line 364
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->notifyPowerButtonPressListeners()V

    return-void
.end method

.method public final handleSetFotaInProgress(Z)V
    .registers 6

    .line 577
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fota_in_progress"

    .line 578
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 582
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 583
    :try_start_d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 584
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    const/4 v2, 0x7

    .line 585
    invoke-virtual {v1, v2, v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_13

    .line 588
    :cond_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public notifyAuthenticationResponse()V
    .registers 2

    .line 523
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final notifyPowerButtonPressListeners()V
    .registers 5

    .line 469
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 470
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 471
    iget v2, v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1e

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 473
    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 476
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_9

    .line 234
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v0

    return-void

    .line 242
    :cond_29
    new-instance v8, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 p3, 0x0

    .line 244
    invoke-interface {p2, v8, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 245
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x4

    if-ne p1, p2, :cond_63

    .line 247
    iget-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const/4 p3, 0x5

    .line 248
    invoke-virtual {v8, p3, p2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_4d

    .line 250
    :cond_5e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 252
    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 4

    .line 285
    sget-object v0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    if-eqz v2, :cond_9

    .line 487
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 488
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "requestCoverAuthentication : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    monitor-exit v0

    return v3

    .line 495
    :cond_2a
    new-instance v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v10, 0x4

    move-object v4, v1

    move-object v5, p0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$AuthCallbackInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 497
    invoke-interface {p3, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 498
    iget-object p3, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_58

    .line 501
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 502
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    :catchall_58
    move-exception p0

    .line 499
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 4

    .line 189
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_13

    .line 191
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_13
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_26

    .line 196
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : Nfc Service not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const/4 v0, -0x1

    if-eq p1, v0, :cond_43

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2d

    goto :goto_43

    .line 212
    :cond_2d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 216
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 218
    iput p1, v0, Landroid/os/Message;->what:I

    .line 219
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 203
    :cond_43
    :goto_43
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : command: -1 should not be sent, ignore"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "event_type"

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    goto :goto_53

    :cond_10
    const/4 v0, 0x0

    const-string v1, "fota_in_progress"

    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 312
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 313
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 314
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_53

    .line 306
    :cond_25
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 307
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_53

    .line 295
    :cond_33
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const-string v0, "lcd_touch_listener_type"

    const/4 v1, -0x1

    .line 296
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "lcd_touch_listener_respone"

    .line 297
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 298
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 300
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 302
    iput p1, p0, Landroid/os/Message;->arg2:I

    .line 303
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_53
    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter v0

    .line 546
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    if-eqz v2, :cond_9

    .line 548
    iget-object v2, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 549
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setFotaInProgress : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    monitor-exit v0

    return v3

    .line 556
    :cond_2a
    new-instance v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v10, 0x4

    move-object v4, v1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;-><init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 558
    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 559
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {p2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 560
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_54

    .line 562
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 563
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 564
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    :catchall_54
    move-exception p0

    .line 560
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 8

    .line 261
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_9

    .line 264
    iget-object v4, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 265
    sget-object v1, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 268
    monitor-exit v0

    return p0

    .line 272
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4d

    .line 273
    sget-object p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_4d
    move-exception p0

    .line 272
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public updateNfcLedCoverAttachStateLocked(ZI)V
    .registers 4

    if-eqz p1, :cond_b

    const/4 v0, 0x7

    if-eq p2, v0, :cond_9

    const/16 v0, 0xe

    if-ne p2, v0, :cond_b

    :cond_9
    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 158
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v0, p2, :cond_29

    .line 159
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez p2, :cond_29

    .line 165
    sget-object p2, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v0, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 167
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 168
    iget-object p0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_29
    return-void
.end method
