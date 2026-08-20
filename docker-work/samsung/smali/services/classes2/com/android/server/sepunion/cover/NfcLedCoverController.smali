.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field public static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field public static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field public static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field public static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field public static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field public static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field public static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field public static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field public static final MSG_COVER_ATTACH_STATE:I = 0x7

.field public static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xa

.field public static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field public static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field public static final MSG_LED_OFF_BY_SELF:I = 0x1

.field public static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field public static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field public static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field public static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field public static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field public static final RESPONSE_COMMAND_POS:I = 0x3

.field public static final RESPONSE_LEN_POS:I = 0x1

.field public static final RESPONSE_STATUS_POS:I = 0x2

.field public static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field public static final SYSTEM_EVENT_TOUCH_RESPONSE:I

.field public static final TAG:Ljava/lang/String;

.field public static final mResponsePattern:[B


# instance fields
.field public mCallDurationTimer:Ljava/util/Timer;

.field public mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

.field public mCallInProgressDisplay:Z

.field public mCallStartTime:J

.field public mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mCoverEventsDisabledForSamsungPay:Z

.field public mFactoryTransceiveResponseIntentSent:Z

.field public final mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field public mIsLedOn:Z

.field public mLedCoverRetryPostTime:J

.field public mLedCoverStartRetryCount:I

.field public mLedCoverTransceiveRetryCount:I

.field public mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

.field public mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPollingTouchEvents:Z

.field public mPrevCommand:I

.field public mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mTestCount:I

.field public mTestMode:I

.field public mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallInProgressDisplay(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallTimerLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLedOnOffWakeLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrevCommand(Lcom/android/server/sepunion/cover/NfcLedCoverController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendLedDataWakeLock(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearRetryCountDelayedMsg(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCallDuration(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleClearOngoingEvent(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCoverDetachedLocked(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePollEventTouch(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCurrentClockCommand(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 112
    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    :array_22
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 8

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 122
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, -0x1

    .line 124
    iput-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    .line 141
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 142
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 158
    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 159
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 162
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "onoff ledcover"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "nfc_led_cover_test"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 4

    .line 527
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 529
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final buildNfcCoverLedData(I[B)[B
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    new-array p2, v0, [B

    aput-byte v1, p2, v1

    .line 1105
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result p0

    add-int/lit8 v2, p0, 0x5

    .line 1107
    new-array v3, v2, [B

    .line 1110
    aput-byte v1, v3, v1

    const/16 v4, -0x5e

    .line 1111
    aput-byte v4, v3, v0

    const/4 v0, 0x2

    .line 1112
    aput-byte v1, v3, v0

    const/4 v4, 0x3

    .line 1113
    aput-byte v1, v3, v4

    const/4 v4, 0x4

    int-to-byte p0, p0

    .line 1115
    aput-byte p0, v3, v4

    const/16 v4, 0x10

    const/4 v5, 0x5

    .line 1118
    aput-byte v4, v3, v5

    const/4 v4, 0x6

    .line 1119
    aput-byte p0, v3, v4

    const/4 p0, 0x7

    int-to-byte p1, p1

    .line 1120
    aput-byte p1, v3, p0

    const/16 p0, 0x8

    .line 1121
    array-length p1, p2

    invoke-static {p2, v1, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, v2, -0x1

    sub-int/2addr v2, v0

    const/4 p1, -0x1

    .line 1122
    aput-byte p1, v3, v2

    aput-byte p1, v3, p0

    return-object v3
.end method

.method public final clearOngoingEvent()V
    .registers 2

    const/4 v0, 0x0

    .line 979
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    return-void
.end method

.method public final clearRetryCountDelayedMsg()V
    .registers 3

    const/4 v0, 0x0

    .line 1405
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 1407
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1409
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1410
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current NfcLedCoverController state:"

    .line 1633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsLEDCoverAttached="

    .line 1634
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  "

    .line 1636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " Current NFC Callback state:"

    .line 1638
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 1641
    :try_start_1c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Live callbacks ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz p3, :cond_41

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    :cond_89
    const-string p0, "  "

    .line 1648
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    monitor-exit p1

    return-void

    :catchall_90
    move-exception p0

    monitor-exit p1
    :try_end_92
    .catchall {:try_start_1c .. :try_end_92} :catchall_90

    throw p0
.end method

.method public final getCallDuration()[B
    .registers 12

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1435
    fill-array-data v0, :array_5a

    .line 1436
    iget-wide v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_f

    return-object v0

    .line 1439
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const/4 p0, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-wide/16 v5, 0x3c

    .line 1442
    div-long v7, v1, v5

    const-wide/16 v9, 0x64

    rem-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    const-string v7, "%02d"

    invoke-static {p0, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-array v9, v3, [Ljava/lang/Object;

    .line 1443
    rem-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v8

    invoke-static {p0, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1444
    aget-byte v1, v4, v8

    aput-byte v1, v0, v8

    .line 1445
    aget-byte v1, v4, v3

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    .line 1446
    aget-byte v2, p0, v8

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 1447
    aget-byte p0, p0, v3

    aput-byte p0, v0, v1

    return-object v0

    nop

    :array_5a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final getCurrentClockData()[B
    .registers 8

    .line 686
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 688
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 689
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    .line 691
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 692
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p0, :cond_3c

    new-array p0, v5, [Ljava/lang/Object;

    .line 697
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    .line 698
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    const-string v0, "%02d%02d"

    .line 697
    invoke-static {v6, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_55

    .line 700
    :cond_3c
    rem-int/2addr v0, v1

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    move v1, v0

    :goto_41
    new-array p0, v5, [Ljava/lang/Object;

    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    .line 707
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    const-string v0, "%2d%02d"

    .line 706
    invoke-static {v6, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 713
    :goto_55
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final getLenByteValue([B)I
    .registers 2

    if-eqz p1, :cond_6

    .line 1136
    array-length p0, p1

    add-int/lit8 p0, p0, 0x5

    goto :goto_7

    :cond_6
    const/4 p0, 0x6

    :goto_7
    return p0
.end method

.method public final getListenerTypeForCommand(I[B)I
    .registers 7

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2e

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1b

    const/16 p0, 0xe0

    if-eq p1, p0, :cond_e

    goto :goto_2c

    :cond_e
    if-eqz p2, :cond_2c

    .line 1535
    array-length p0, p2

    if-lez p0, :cond_2c

    .line 1536
    aget-byte p0, p2, v0

    if-eq p0, v3, :cond_1a

    if-eq p0, v2, :cond_1a

    goto :goto_2c

    :cond_1a
    return v0

    :cond_1b
    if-eqz p2, :cond_2c

    .line 1544
    array-length p1, p2

    if-lez p1, :cond_2c

    .line 1545
    aget-byte p1, p2, v0

    if-eq p1, v3, :cond_2b

    if-eq p1, p0, :cond_2a

    if-eq p1, v2, :cond_29

    goto :goto_2c

    :cond_29
    return v2

    :cond_2a
    return p0

    :cond_2b
    return v3

    :cond_2c
    :goto_2c
    const/4 p0, -0x1

    return p0

    :cond_2e
    return v0
.end method

.method public final handleAddLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 565
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 567
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x2

    .line 568
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 571
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

.method public final handleClearOngoingEvent(I)V
    .registers 3

    const v0, 0xfffe

    if-ne p1, v0, :cond_6

    const/4 p1, 0x3

    :cond_6
    if-eqz p1, :cond_10

    .line 1280
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_13

    iget v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_13

    .line 1281
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearOngoingEvent()V

    :cond_13
    return-void
.end method

.method public final handleCoverDetachedLocked()V
    .registers 3

    .line 271
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 275
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 277
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 285
    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 286
    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    .line 287
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 288
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 289
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_42

    .line 292
    :cond_3c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_42
    move-exception v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    throw v0
.end method

.method public final handleEventResponse(II)V
    .registers 6

    .line 1286
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

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

    if-ne p2, v1, :cond_48

    const-string p2, "Event touch: accept"

    .line 1289
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1291
    :try_start_29
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1292
    iget v2, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_2f

    .line 1293
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_2f

    .line 1296
    :cond_43
    monitor-exit v1

    goto :goto_86

    :catchall_45
    move-exception p0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_45

    throw p0

    :cond_48
    const/4 v1, 0x2

    if-ne p2, v1, :cond_72

    const-string p2, "Event touch: reject"

    .line 1298
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1300
    :try_start_53
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_59
    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1301
    iget v2, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_59

    .line 1302
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_59

    .line 1305
    :cond_6d
    monitor-exit v1

    goto :goto_86

    :catchall_6f
    move-exception p0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_6f

    throw p0

    .line 1307
    :cond_72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_86
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public final handleInvalidCommand(I[B[B)V
    .registers 11

    .line 1011
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v0, 0x12

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_af

    if-eq p1, v0, :cond_af

    .line 1013
    array-length v3, p3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_af

    .line 1017
    aget-byte v3, p3, v2

    const/16 v5, -0x20

    if-eq v3, v5, :cond_3c

    if-eq v3, v4, :cond_3c

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3c

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3c

    const/4 v5, 0x6

    if-eq v3, v5, :cond_3c

    packed-switch v3, :pswitch_data_e0

    .line 1029
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transceive error - unknown error value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_3d

    :cond_3c
    :pswitch_3c
    move v3, v4

    :goto_3d
    if-nez v3, :cond_57

    .line 1035
    array-length v5, p3

    if-le v5, v1, :cond_57

    aget-byte v5, p3, v1

    const/16 v6, -0x30

    if-ne v5, v6, :cond_57

    .line 1040
    array-length v3, p3

    new-array v3, v3, [B

    .line 1041
    array-length v5, p3

    invoke-static {p3, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p3, -0x2f

    .line 1042
    aput-byte p3, v3, v1

    .line 1046
    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v3

    :cond_57
    if-eqz v3, :cond_a4

    .line 1049
    iget p3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v3, 0xd

    if-ge p3, v3, :cond_a4

    .line 1050
    sget-object p3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeat command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1057
    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p3}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    .line 1061
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x4

    .line 1062
    iput v0, p3, Landroid/os/Message;->what:I

    .line 1063
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 1064
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1065
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 1067
    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    .line 1070
    :cond_a4
    iput v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1071
    sget-object p2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p3, "Could not transceive command to cover so turn off led cover"

    invoke-static {p2, p3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 1076
    :cond_af
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p3, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1078
    sget-object p2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p3, "Sent done intent, fail transceive"

    invoke-static {p2, p3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v1, :cond_c9

    if-eq p1, v0, :cond_c9

    goto :goto_cf

    .line 1083
    :cond_c9
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz p1, :cond_cf

    .line 1084
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1088
    :cond_cf
    :goto_cf
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    .line 1090
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1091
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1092
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    nop

    :pswitch_data_e0
    .packed-switch -0x50
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public final handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "lcd_off_disabled_by_cover"

    .line 589
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 591
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v1, v0, :cond_18

    .line 592
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_18

    .line 594
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x12

    const/4 v1, 0x0

    .line 595
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 599
    :cond_18
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 600
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 601
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_21

    .line 602
    invoke-virtual {v1, v3, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_21

    .line 605
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final handlePollEventTouch(I)V
    .registers 12

    .line 1150
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v0, :cond_a

    .line 1154
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    .line 1158
    :cond_a
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/4 v1, 0x1

    if-lez v0, :cond_14

    .line 1159
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    :cond_14
    new-array v0, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    const/16 v3, 0x11

    .line 1163
    invoke-virtual {p0, v3, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v0

    const/4 v4, 0x0

    .line 1166
    :try_start_20
    iget v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-nez v5, :cond_33

    .line 1167
    iget-object v5, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5, v0}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception v0

    .line 1170
    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v6, "Error sending data to NFC"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    :cond_33
    :goto_33
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-lez v0, :cond_76

    iget v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    const/16 v9, 0x13

    if-le v8, v9, :cond_76

    const/4 v4, 0x5

    new-array v4, v4, [B

    aput-byte v2, v4, v1

    aput-byte v2, v4, v2

    const/16 v8, -0x2f

    aput-byte v8, v4, v7

    aput-byte v3, v4, v5

    if-ne v0, v7, :cond_52

    aput-byte v1, v4, v6

    goto :goto_76

    :cond_52
    if-ne v0, v1, :cond_57

    aput-byte v7, v4, v6

    goto :goto_76

    .line 1184
    :cond_57
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown test value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reject by default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v7, v4, v6

    .line 1190
    :cond_76
    :goto_76
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1195
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1197
    iput v5, v0, Landroid/os/Message;->what:I

    .line 1199
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1201
    aget-byte p1, v4, v6

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1202
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1203
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1204
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_b0

    .line 1207
    :cond_9a
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "No touch event from LED cover, keep listening"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1209
    iput v7, v0, Landroid/os/Message;->what:I

    .line 1210
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1211
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_b0
    return-void
.end method

.method public final handleRemoveLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 577
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 578
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 579
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x3

    .line 580
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 583
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

.method public final handleSendDataToNfcLedCover(I[B)V
    .registers 11

    .line 760
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v0, 0x12

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3d

    .line 767
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    if-eqz p2, :cond_3d

    .line 771
    array-length v4, p2

    if-lez v4, :cond_3d

    aget-byte v4, p2, v3

    if-nez v4, :cond_3d

    .line 773
    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne p1, v1, :cond_31

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 774
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 777
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p2, "CMD_LED_CALL_END was already processed so return"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_3a

    .line 938
    :goto_2b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 780
    :cond_31
    :try_start_31
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {p1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    goto :goto_3d

    :catchall_3a
    move-exception p1

    goto/16 :goto_1b7

    :cond_3d
    :goto_3d
    const v4, 0xfffe

    if-ne p1, v4, :cond_48

    .line 789
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    const/4 p1, 0x3

    goto/16 :goto_132

    :cond_48
    if-ne p1, v0, :cond_5d

    .line 791
    iget-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v4, :cond_5d

    .line 795
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 796
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p2, "Led cover already off"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_2b

    .line 800
    :cond_5d
    sget-object v4, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v5, "Ensuring NFC LED Cover started"

    invoke-static {v4, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v5
    :try_end_68
    .catchall {:try_start_31 .. :try_end_68} :catchall_3a

    const-string v6, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    if-nez v5, :cond_c9

    .line 807
    :try_start_6c
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v5, 0xd

    if-ge v0, v5, :cond_aa

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 811
    iput v1, v0, Landroid/os/Message;->what:I

    .line 812
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 813
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 814
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 816
    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 822
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    goto :goto_2b

    :cond_aa
    const-string p1, "Could not start NFC LED Cover"

    .line 827
    invoke-static {v4, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 829
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    iget-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p1, "Sent done intent, fail start"

    .line 831
    invoke-static {v4, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    .line 837
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    goto/16 :goto_2b

    .line 841
    :cond_c9
    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 844
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v1
    :try_end_cf
    .catchall {:try_start_6c .. :try_end_cf} :catchall_3a

    const/4 v4, 0x0

    .line 847
    :try_start_d0
    iget-object v5, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5, v1}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v4
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d6} :catch_d7
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_3a

    goto :goto_df

    :catch_d7
    move-exception v1

    .line 852
    :try_start_d8
    sget-object v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v7, "Error in trancieve command"

    invoke-static {v5, v7, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    :goto_df
    invoke-virtual {p0, p1, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v1

    if-nez v1, :cond_118

    .line 856
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing response for command "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 856
    invoke-static {v1, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 861
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 862
    iget v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-nez v4, :cond_113

    goto/16 :goto_2b

    :cond_113
    const-string v4, "TEST mode enabled, ignore NFC Led Cover response"

    .line 865
    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_118
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 871
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    iget-object v4, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 873
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v4, "Sent done intent, sucess"

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    .line 880
    :goto_132
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 881
    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    .line 884
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->setOngoingEventIfValid(I[B)V

    const/4 v4, 0x2

    if-eq p1, v4, :cond_15f

    const/4 v5, 0x6

    if-eq p1, v5, :cond_161

    const/16 v5, 0xa

    if-eq p1, v5, :cond_150

    if-eq p1, v0, :cond_14a

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_161

    goto :goto_152

    .line 923
    :cond_14a
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover()V

    .line 924
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    .line 929
    :cond_150
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 932
    :goto_152
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 933
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 934
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_1b1

    .line 891
    :cond_15f
    iput-boolean v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 895
    :cond_161
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-lez v0, :cond_167

    .line 896
    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    .line 900
    :cond_167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 901
    iput v4, v0, Landroid/os/Message;->what:I

    .line 902
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result p2

    if-gez p2, :cond_190

    .line 904
    sget-object p2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong listener type requested for command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; return"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 907
    :cond_190
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 909
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 912
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz p1, :cond_1a8

    .line 913
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p2, "Already polling for touch events"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1aa

    .line 916
    :cond_1a8
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 918
    :goto_1aa
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b1
    .catchall {:try_start_d8 .. :try_end_1b1} :catchall_3a

    .line 938
    :goto_1b1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1b7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 939
    throw p1
.end method

.method public final handleSendPowerKeyToCover()V
    .registers 5

    .line 625
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->notifyPowerButtonPressListeners()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 630
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_18

    .line 635
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/16 v0, 0x12

    .line 636
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_4e

    .line 644
    :cond_18
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 647
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz v1, :cond_46

    .line 650
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_40

    .line 651
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    if-nez v1, :cond_2f

    goto :goto_32

    .line 656
    :cond_2f
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_49

    .line 652
    :cond_32
    :goto_32
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 654
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    goto :goto_49

    .line 659
    :cond_40
    iget-object v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v2, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_49

    .line 662
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_4f

    .line 665
    :goto_49
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_4e
    return-void

    :catchall_4f
    move-exception v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    throw v0
.end method

.method public final isFinishedTouchReply([B)Z
    .registers 5

    const/4 p0, 0x1

    if-eqz p1, :cond_1d

    .line 1265
    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1d

    const/4 v0, 0x2

    aget-byte v1, p1, v0

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    if-eq p1, p0, :cond_1e

    if-ne p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :cond_1e
    :goto_1e
    return p0
.end method

.method public final isSingleMissedEvent([B)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1f

    .line 465
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_8

    goto :goto_1f

    :cond_8
    const/4 v0, 0x1

    .line 468
    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-ne v1, v2, :cond_14

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-eq v1, v2, :cond_1e

    :cond_14
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x4

    aget-byte p1, p1, v1

    if-ne p1, v2, :cond_1f

    :cond_1e
    move p0, v0

    :cond_1f
    :goto_1f
    return p0
.end method

.method public final isValidCoverStartData([B)Z
    .registers 2

    const/4 p0, 0x1

    if-eqz p1, :cond_7

    .line 992
    array-length p1, p1

    if-le p1, p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isValidResponse(I[B)Z
    .registers 9

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 1228
    :cond_4
    array-length v0, p2

    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v2, v1

    if-ge v0, v2, :cond_b

    return p0

    :cond_b
    const/4 v0, 0x3

    int-to-byte p1, p1

    .line 1232
    aput-byte p1, v1, v0

    .line 1237
    array-length p1, p2

    move v0, p0

    move v1, v0

    :goto_12
    if-ge v0, p1, :cond_2d

    aget-byte v2, p2, v0

    .line 1239
    sget-object v3, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v4, v3, v1

    const/4 v5, 0x1

    if-eq v2, v4, :cond_24

    if-ne v1, v5, :cond_20

    goto :goto_24

    :cond_20
    if-nez v1, :cond_23

    goto :goto_2a

    :cond_23
    return p0

    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    .line 1241
    array-length v2, v3

    if-ne v1, v2, :cond_2a

    return v5

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2d
    return p0
.end method

.method public final notifyLedOffListeners(I)V
    .registers 6

    .line 1486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "led_off_command"

    .line 1487
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1489
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 1490
    :try_start_d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1491
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    const/4 v2, 0x0

    .line 1492
    invoke-virtual {v1, v2, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_13

    .line 1495
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

.method public final notifyPowerButtonPressListeners()V
    .registers 5

    .line 1507
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1508
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1509
    iget v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1510
    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 1513
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-ltz p1, :cond_4f

    const/4 v0, 0x5

    if-le p1, v0, :cond_6

    goto :goto_4f

    .line 486
    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 487
    :try_start_9
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_f

    .line 489
    iget-object v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 490
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    monitor-exit v0

    return-void

    .line 497
    :cond_2f
    new-instance v8, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 p1, 0x0

    .line 499
    invoke-interface {p2, v8, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 500
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_4c

    throw p0

    .line 481
    :cond_4f
    :goto_4f
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported touch listener type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 4

    .line 534
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 536
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleLedOffTimeout(I[B)V
    .registers 7

    .line 392
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleLedOffTimerout, command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a8

    const/16 v2, 0x12

    if-eq p1, v2, :cond_a8

    const/16 v2, 0x14

    if-eq p1, v2, :cond_a8

    const/16 v2, 0xe0

    if-eq p1, v2, :cond_a8

    .line 411
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_4e

    const/16 v2, 0xf

    if-eq p1, v2, :cond_34

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4e

    :cond_34
    iget v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v3, p1, :cond_4e

    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 412
    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    if-ne p1, v2, :cond_48

    const-string p0, "Time update"

    .line 414
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_48
    const-string p0, "Call InProgress duration time update"

    .line 416
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-void

    .line 422
    :cond_4e
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 424
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 425
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    :cond_60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 429
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 430
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq p1, v1, :cond_9f

    const/16 v1, 0x9

    const-wide/16 v2, 0xe74

    if-eq p1, v1, :cond_8b

    packed-switch p1, :pswitch_data_bc

    .line 452
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a7

    .line 446
    :pswitch_7b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 p1, 0x2328

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a7

    .line 433
    :pswitch_83
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 p1, 0x11f8

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a7

    .line 438
    :cond_8b
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 439
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a7

    .line 441
    :cond_97
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 p1, 0x13ec

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a7

    .line 449
    :cond_9f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 p1, 0xea60

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_a7
    return-void

    .line 400
    :cond_a8
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 401
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    :cond_b5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0xc
        :pswitch_83
        :pswitch_7b
        :pswitch_7b
    .end packed-switch
.end method

.method public final sendCurrentClockCommand()V
    .registers 3

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 675
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 10

    .line 298
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_17

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_17

    .line 300
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 303
    :cond_17
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 305
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : Nfc Service not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    const v0, 0xffff

    const/16 v1, 0xf

    if-ne p1, v0, :cond_43

    .line 316
    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne p1, v1, :cond_3b

    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz p1, :cond_3b

    move p1, v1

    goto :goto_43

    .line 319
    :cond_3b
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "Time tick: clock not displayed, ignore"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    :goto_43
    if-ne p1, v1, :cond_49

    .line 326
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    :cond_49
    const/16 v0, 0xc

    if-ne p1, v0, :cond_5b

    .line 332
    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5b

    .line 333
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "Ignore battery chargin, battery low already shown"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_5b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 340
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 341
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v1, 0xfff0

    const/4 v2, 0x0

    if-ne p1, v1, :cond_83

    if-eqz p2, :cond_d6

    .line 344
    array-length p1, p2

    if-lez p1, :cond_d6

    const/4 p1, 0x5

    .line 345
    iput p1, v0, Landroid/os/Message;->what:I

    .line 346
    aget-byte p1, p2, v2

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    .line 347
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d6

    :cond_83
    const/16 p2, 0x13

    const/4 v1, 0x4

    if-ne p1, p2, :cond_97

    .line 351
    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 p1, 0x96

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d6

    .line 356
    :cond_97
    iput v2, v0, Landroid/os/Message;->what:I

    .line 365
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_ce

    .line 366
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p1, 0x1f4

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    sub-long/2addr v1, v5

    sub-long/2addr p1, v1

    cmp-long v1, p1, v3

    if-gez v1, :cond_b7

    goto :goto_b8

    :cond_b7
    move-wide v3, p1

    .line 373
    :goto_b8
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_ce
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 381
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d6
    :goto_d6
    return-void
.end method

.method public final sendNfcFailIntentForFactoryMode([B)V
    .registers 6

    .line 1459
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_13

    return-void

    .line 1463
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    if-eqz v0, :cond_18

    return-void

    :cond_18
    if-eqz p1, :cond_40

    .line 1470
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_40

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_40

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    const/16 v3, -0x7b

    if-ne v2, v3, :cond_40

    aget-byte p1, p1, v1

    if-nez p1, :cond_40

    .line 1472
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 1473
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_40
    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 2

    .line 610
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_c

    .line 611
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 617
    :cond_c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_12
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "event_type"

    .line 541
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_39

    .line 555
    :cond_c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 556
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_39

    :cond_1c
    const-string v0, "lcd_touch_listener_type"

    const/4 v1, -0x1

    .line 544
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "lcd_touch_listener_respone"

    .line 545
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 546
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    .line 547
    iput v2, v1, Landroid/os/Message;->what:I

    .line 549
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 551
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 552
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_39
    return-void
.end method

.method public final setOngoingEventIfValid(I[B)V
    .registers 6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/16 v1, 0xd

    if-eq p1, v1, :cond_13

    const/16 v0, 0xe

    if-eq p1, v0, :cond_22

    const/16 v0, 0x14

    if-eq p1, v0, :cond_22

    return-void

    :cond_13
    if-eqz p2, :cond_21

    .line 954
    array-length v1, p2

    if-lez v1, :cond_21

    const/4 v1, 0x0

    aget-byte v1, p2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    if-ne v1, v0, :cond_21

    goto :goto_22

    :cond_21
    return-void

    .line 970
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_2e

    .line 971
    new-instance v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    goto :goto_32

    .line 973
    :cond_2e
    iput p1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    .line 974
    iput-object p2, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    :goto_32
    return-void
.end method

.method public final startCallInProgressDisplayTimer([B)V
    .registers 10

    const-string v0, "CallStartTime incorrect"

    const/16 v1, 0x40

    .line 1321
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1323
    :try_start_8
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1324
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1325
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_14
    .catch Ljava/nio/BufferUnderflowException; {:try_start_8 .. :try_end_14} :catch_6a
    .catch Ljava/nio/BufferOverflowException; {:try_start_8 .. :try_end_14} :catch_63

    .line 1333
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 1335
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1336
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1337
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :cond_38
    const/4 p1, 0x1

    .line 1339
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1340
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, p1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1341
    new-instance v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v3, p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask-IA;)V

    iput-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    .line 1343
    :try_start_49
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_52
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_62

    :catch_53
    move-exception p1

    .line 1345
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "Error while scheduling TimerTask"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 1346
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1347
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1348
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :goto_62
    return-void

    :catch_63
    move-exception p0

    .line 1330
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_6a
    move-exception p0

    .line 1327
    sget-object p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final stopCallInProgressDisplayTimer()V
    .registers 3

    const/4 v0, 0x0

    .line 1359
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1360
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_10

    .line 1361
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1362
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1363
    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_17

    .line 1365
    :cond_10
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const-wide/16 v0, -0x1

    .line 1367
    iput-wide v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    return-void
.end method

.method public final stopLedCover()V
    .registers 2

    .line 1419
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    const/4 v0, 0x0

    .line 1423
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1428
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    return-void
.end method

.method public final tryStartLedCover()Z
    .registers 6

    .line 723
    sget-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 725
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    .line 727
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/4 v3, 0x0

    if-nez v1, :cond_2b

    .line 731
    iget-object v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v3}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 733
    :cond_2b
    iget-object v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v1

    .line 737
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v1, "Started NFC LED Cover"

    .line 738
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 740
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    goto :goto_4f

    :cond_41
    const-string v2, "Failed to start NFC LED Cover"

    .line 742
    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    return v3

    :cond_4a
    const-string p0, "NFC LED Cover already started"

    .line 749
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return v2
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 8

    .line 510
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_9

    .line 513
    iget-object v4, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 514
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 517
    monitor-exit v0

    return p0

    .line 521
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4d

    .line 522
    sget-object p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_4d
    move-exception p0

    .line 521
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public updateNfcLedCoverAttachStateLocked(ZI)V
    .registers 6

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    if-eq p2, v0, :cond_a

    const/16 v2, 0xe

    if-ne p2, v2, :cond_c

    :cond_a
    const/4 p2, 0x1

    goto :goto_d

    :cond_c
    move p2, v1

    .line 246
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, p2, :cond_29

    .line 247
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez p2, :cond_29

    .line 253
    sget-object p2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {p2, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 255
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 256
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 261
    :cond_29
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "nfc_led_cover_test"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    return-void
.end method
