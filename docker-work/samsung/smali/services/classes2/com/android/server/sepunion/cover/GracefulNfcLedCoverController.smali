.class public final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field public static final CMD_LED_FACTORY_MODE:I = 0x70

.field public static final INTENT_RETURN_VALUE_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

.field public static final INTENT_RETURN_VALUE_EXTRA_COMMAND_DATA:Ljava/lang/String; = "command_data"

.field public static final INTENT_RETURN_VALUE_EXTRA_START_RESULT:Ljava/lang/String; = "start_result"

.field public static final INTENT_RETURN_VALUE_EXTRA_START_SUCCESS:Ljava/lang/String; = "start_success"

.field public static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_RESULT:Ljava/lang/String; = "transceive_result"

.field public static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_SUCCESS:Ljava/lang/String; = "transceive_success"

.field public static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field public static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field public static final MSG_COVER_ATTACH_STATE:I = 0x7

.field public static final MSG_COVER_VERSION_CHECK:I = 0xa

.field public static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xb

.field public static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field public static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field public static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field public static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field public static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field public static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field public static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field public static final SETTING_SECURE_FIRMWARE_VERSION:Ljava/lang/String; = "led_cover_firmware_version"

.field public static final TAG:Ljava/lang/String;

.field public static TEST:I = 0x0

.field public static final VERSION_CHECK_COMMAND:[B

.field public static final WC_CONTROL_RESET_INTERVAL:J = 0x7530L


# instance fields
.field public mCallTimerLock:Ljava/lang/Object;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field public mIsLedOn:Z

.field public mLastWcControlResetTime:J

.field public mLedCoverStartRetryCount:I

.field public mLedCoverTransceiveRetryCount:I

.field public mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPollingTouchEvents:Z

.field public mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field public testCount:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendLedDataWakeLock(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearRetryCountDelayedMsg(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAddLedNotification(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCoverDetachedLocked(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleCoverVersionCheck(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleCoverVersionCheck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleLcdOffDisabledByCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePollEventTouch(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveLedNotification(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 85
    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    return-void

    nop

    :array_24
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x7t
        0x7t
        0x71t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 6

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 78
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 96
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 97
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 117
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "send leddata"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 120
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "pollTouch ledcover"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "touchResponse ledcover"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "version check ledcover"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "nfc_led_cover_test"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 4

    .line 323
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 325
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final buildNfcCoverLedData(I[B)[B
    .registers 14

    const/4 v0, 0x2

    if-nez p2, :cond_8

    new-array p2, v0, [B

    .line 686
    fill-array-data p2, :array_88

    .line 690
    :cond_8
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_16

    new-array v1, v0, [B

    aput-byte v3, v1, v3

    .line 691
    aget-byte p2, p2, v3

    aput-byte p2, v1, v2

    move-object p2, v1

    .line 696
    :cond_16
    array-length v1, p2

    const/4 v4, 0x3

    if-le v1, v4, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    .line 700
    :goto_1d
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->getLenByteValue([B)I

    move-result p0

    if-eqz v1, :cond_27

    .line 702
    aget-byte p0, p2, v3

    and-int/lit16 p0, p0, 0xff

    :cond_27
    const/4 v5, 0x5

    add-int v6, v5, p0

    .line 705
    new-array v7, v6, [B

    .line 707
    array-length v8, p2

    const/4 v9, 0x7

    if-eqz v1, :cond_32

    move v10, v5

    goto :goto_33

    :cond_32
    move v10, v9

    :goto_33
    add-int/2addr v8, v10

    if-ge v6, v8, :cond_5f

    .line 708
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildNfcCoverLedData : Invalid genData length data.length="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    .line 710
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " genData.length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 708
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 716
    :cond_5f
    aput-byte v3, v7, v3

    const/16 v8, -0x5e

    .line 717
    aput-byte v8, v7, v2

    .line 718
    aput-byte v3, v7, v0

    .line 719
    aput-byte v3, v7, v4

    const/4 v2, 0x4

    int-to-byte p0, p0

    .line 721
    aput-byte p0, v7, v2

    if-eqz v1, :cond_74

    .line 724
    array-length p0, p2

    invoke-static {p2, v3, v7, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_86

    .line 727
    :cond_74
    aput-byte p0, v7, v5

    const/4 p0, 0x6

    int-to-byte p1, p1

    .line 728
    aput-byte p1, v7, p0

    .line 731
    array-length p0, p2

    invoke-static {p2, v3, v7, v9, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, v6, -0x1

    sub-int/2addr v6, v0

    const/4 p1, -0x1

    .line 732
    aput-byte p1, v7, v6

    aput-byte p1, v7, p0

    :goto_86
    return-object v7

    nop

    :array_88
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public final clearRetryCountDelayedMsg()V
    .registers 3

    const/4 v0, 0x0

    .line 908
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 910
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 912
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 913
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " Current NfcLedCoverController state:"

    .line 1158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsLEDCoverAttached="

    .line 1159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  TEST="

    .line 1161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    sget p1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  "

    .line 1163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " Current NFC Callback state:"

    .line 1165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    .line 1168
    :try_start_26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Live callbacks ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4b
    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz p3, :cond_4b

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    :cond_93
    const-string p0, "  "

    .line 1175
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    monitor-exit p1

    return-void

    :catchall_9a
    move-exception p0

    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_26 .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method public final getLenByteValue([B)I
    .registers 2

    if-eqz p1, :cond_6

    .line 746
    array-length p0, p1

    add-int/lit8 p0, p0, 0x4

    goto :goto_7

    :cond_6
    const/4 p0, 0x6

    :goto_7
    return p0
.end method

.method public final getListenerTypeForCommand(I[B)I
    .registers 8

    const/4 p0, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2f

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq p1, v1, :cond_1d

    const/16 v0, 0x70

    if-eq p1, v0, :cond_10

    goto :goto_2e

    :cond_10
    if-eqz p2, :cond_2e

    .line 1046
    array-length p1, p2

    if-le p1, v4, :cond_2e

    .line 1047
    aget-byte p1, p2, v4

    if-eq p1, v3, :cond_1c

    if-eq p1, v2, :cond_1c

    goto :goto_2e

    :cond_1c
    return p0

    :cond_1d
    if-eqz p2, :cond_2e

    .line 1055
    array-length p0, p2

    if-le p0, v4, :cond_2e

    .line 1056
    aget-byte p0, p2, v4

    if-eq p0, v3, :cond_2d

    if-eq p0, v0, :cond_2c

    if-eq p0, v2, :cond_2b

    goto :goto_2e

    :cond_2b
    return v2

    :cond_2c
    return v0

    :cond_2d
    return v3

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    :cond_2f
    return p0
.end method

.method public final handleAddLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 361
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 363
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x2

    .line 364
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 367
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
    .registers 4

    .line 217
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_a
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 230
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 232
    :cond_2e
    iput-object v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 233
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final handleCoverVersionCheck()V
    .registers 6

    .line 964
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 965
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firmware version already retrieved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    .line 970
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_33

    .line 971
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Led is on, try checking version later"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    .line 976
    :cond_33
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-nez v0, :cond_59

    .line 981
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    .line 983
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 984
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 986
    :cond_53
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    .line 991
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->transceiveVersionCheck()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 992
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firmware version retrieved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    const-string v4, "led_cover_firmware_version"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 995
    :cond_84
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    .line 997
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_96

    .line 998
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 1001
    :cond_96
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public final handleEventResponse(II)V
    .registers 6

    .line 877
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

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

    .line 880
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 882
    :try_start_29
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 883
    iget v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_2f

    .line 884
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_2f

    .line 887
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

    .line 889
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 891
    :try_start_53
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_59
    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 892
    iget v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_59

    .line 893
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_59

    .line 896
    :cond_6d
    monitor-exit v1

    goto :goto_86

    :catchall_6f
    move-exception p0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_6f

    throw p0

    .line 898
    :cond_72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event action: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :goto_86
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public final handleInvalidCommand(I[B[B)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p3, :cond_86

    const/16 v1, 0x12

    if-eq p1, v1, :cond_86

    .line 626
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_86

    .line 627
    aget-byte v1, p3, v0

    const/16 v3, -0x20

    if-eq v1, v3, :cond_38

    if-eq v1, v2, :cond_38

    const/4 v3, 0x3

    if-eq v1, v3, :cond_38

    const/4 v3, 0x5

    if-eq v1, v3, :cond_38

    const/4 v3, 0x6

    if-eq v1, v3, :cond_38

    packed-switch v1, :pswitch_data_9e

    .line 664
    sget-object p1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transceive error - unknown error value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 638
    :cond_38
    :pswitch_38
    iget p3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v1, 0xd

    if-ge p3, v1, :cond_7d

    .line 639
    sget-object p3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repeat command "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 647
    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p3}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    .line 651
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    const/4 v0, 0x4

    .line 652
    iput v0, p3, Landroid/os/Message;->what:I

    .line 653
    iput p1, p3, Landroid/os/Message;->arg1:I

    .line 654
    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 656
    iget p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    .line 659
    :cond_7d
    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 660
    sget-object p1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p2, "Could not transceive command to cover so turn off led cover"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_86
    :goto_86
    sget-object p1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p2, "Sent done intent, fail transceive"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 673
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 674
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_data_9e
    .packed-switch -0x50
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public final handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .registers 6

    .line 385
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 387
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 388
    invoke-virtual {v1, v3, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 391
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

.method public final handlePollEventTouch(I)V
    .registers 11

    .line 760
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v0, :cond_a

    .line 764
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    .line 768
    :cond_a
    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    const/4 v1, 0x1

    if-lez v0, :cond_14

    .line 769
    iget v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    :cond_14
    const/4 v0, 0x2

    new-array v2, v0, [B

    .line 773
    fill-array-data v2, :array_c2

    const/16 v3, 0x11

    invoke-virtual {p0, v3, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    if-nez v2, :cond_2a

    .line 775
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "Invalid data"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    const/4 v4, 0x0

    .line 780
    :try_start_2b
    sget v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v5, :cond_41

    .line 781
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    .line 782
    iget-object v5, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception v2

    .line 785
    sget-object v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v6, "Error sending data to NFC"

    invoke-static {v5, v6, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    :cond_41
    :goto_41
    sget v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-lez v2, :cond_87

    iget v7, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    const/16 v8, 0x13

    if-le v7, v8, :cond_87

    const/4 v4, 0x6

    new-array v7, v4, [B

    aput-byte v4, v7, v5

    aput-byte v3, v7, v1

    aput-byte v5, v7, v0

    if-ne v2, v0, :cond_5b

    aput-byte v1, v7, v6

    goto :goto_7f

    :cond_5b
    if-ne v2, v1, :cond_60

    aput-byte v0, v7, v6

    goto :goto_7f

    .line 799
    :cond_60
    sget-object v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown test value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reject by default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v0, v7, v6

    :goto_7f
    const/4 v1, 0x4

    const/4 v2, -0x1

    aput-byte v2, v7, v1

    const/4 v1, 0x5

    aput-byte v2, v7, v1

    move-object v4, v7

    .line 807
    :cond_87
    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 812
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 813
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 814
    iput v6, v0, Landroid/os/Message;->what:I

    .line 816
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 818
    aget-byte p1, v4, v6

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 819
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 820
    iput-boolean v5, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 821
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_c1

    .line 824
    :cond_ab
    sget-object v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "No touch event from LED cover, keep listening"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 826
    iput v0, v1, Landroid/os/Message;->what:I

    .line 827
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 828
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_c1
    return-void

    :array_c2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public final handleRemoveLedNotification(Landroid/os/Bundle;)V
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 374
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 375
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x3

    .line 376
    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 379
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
    .registers 13

    .line 453
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    if-nez v2, :cond_19

    .line 463
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "Invalid data"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-exit v0

    return-void

    :cond_19
    const/16 v3, 0x12

    const/4 v4, 0x1

    if-ne p1, v3, :cond_30

    .line 467
    iget-boolean v5, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v5, :cond_30

    .line 471
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 472
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "Led cover already off"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    monitor-exit v0

    return-void

    .line 475
    :cond_30
    sget-object v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v6, "Ensuring NFC LED Cover started"

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->tryStartLedCover(Landroid/content/Intent;)Z

    move-result v6

    const-string v7, "command_data"

    .line 480
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v7, "start_success"

    .line 481
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v7, 0x0

    if-nez v6, :cond_95

    .line 484
    iget v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_82

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x4

    .line 488
    iput v3, v2, Landroid/os/Message;->what:I

    .line 489
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 490
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 492
    iget p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 498
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    goto :goto_8c

    :cond_82
    const-string p1, "Could not start NFC LED Cover"

    .line 503
    invoke-static {v5, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput v7, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 506
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 509
    :goto_8c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 510
    monitor-exit v0

    return-void

    .line 512
    :cond_95
    iput v7, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_185

    const/4 v5, 0x0

    .line 517
    :try_start_98
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    .line 518
    iget-object v6, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v5
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_a2
    .catchall {:try_start_98 .. :try_end_a1} :catchall_185

    goto :goto_aa

    :catch_a2
    move-exception v6

    .line 523
    :try_start_a3
    sget-object v8, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v9, "Error in trancieve command"

    invoke-static {v8, v9, v6}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_aa
    const-string/jumbo v6, "transceive_result"

    .line 525
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v2, v5}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->isValidResponse([B[B)Z

    move-result v6

    if-nez v6, :cond_f4

    .line 528
    sget-object v6, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing response for command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-static {v6, v8}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    const-string/jumbo p2, "transceive_success"

    .line 531
    invoke-virtual {v1, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    iget-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 533
    sget p2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez p2, :cond_ee

    .line 534
    monitor-exit v0

    return-void

    :cond_ee
    const-string p2, "TEST mode enabled, ignore NFC Led Cover response"

    .line 536
    invoke-static {v6, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    :cond_f4
    const-string/jumbo p2, "transceive_success"

    .line 539
    invoke-virtual {v1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    iget-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 543
    :goto_101
    sget-object p2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Done, sucess"

    invoke-static {p2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iput v7, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v1, 0x70

    const/4 v5, 0x2

    if-eq p1, v5, :cond_117

    const/4 v6, 0x6

    if-eq p1, v6, :cond_117

    if-eq p1, v3, :cond_159

    if-eq p1, v1, :cond_117

    goto :goto_15c

    .line 554
    :cond_117
    sget v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v3, :cond_11d

    .line 555
    iput v7, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    .line 559
    :cond_11d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 560
    iput v5, v3, Landroid/os/Message;->what:I

    .line 561
    invoke-virtual {p0, p1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v6

    if-ltz v6, :cond_149

    .line 563
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 564
    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 567
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz p1, :cond_13f

    const-string p1, "Already polling for touch events"

    .line 568
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_141

    .line 571
    :cond_13f
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 573
    :goto_141
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_168

    :cond_149
    if-ne p1, v1, :cond_16a

    .line 578
    array-length v1, v2

    const/16 v3, 0x8

    if-le v1, v3, :cond_16a

    aget-byte v1, v2, v3

    if-ne v1, v5, :cond_16a

    const-string p1, "Factory Mode Full LED off was sent, so turn off LedCover"

    .line 580
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_159
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 592
    :goto_15c
    iput-boolean v7, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 593
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 597
    :goto_168
    monitor-exit v0

    return-void

    .line 582
    :cond_16a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong listener type requested for command:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    monitor-exit v0

    return-void

    :catchall_185
    move-exception p0

    .line 597
    monitor-exit v0
    :try_end_187
    .catchall {:try_start_a3 .. :try_end_187} :catchall_185

    throw p0
.end method

.method public final handleSendPowerKeyToCover()V
    .registers 1

    .line 405
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->notifyPowerButtonPressListeners()V

    return-void
.end method

.method public final isFinishedTouchReply([B)Z
    .registers 4

    const/4 p0, 0x1

    if-eqz p1, :cond_16

    .line 871
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_16

    aget-byte v0, p1, p0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_16

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    if-eq p1, p0, :cond_17

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :cond_17
    :goto_17
    return p0
.end method

.method public final isValidCoverStartData([B)Z
    .registers 2

    const/4 p0, 0x1

    if-eqz p1, :cond_7

    .line 610
    array-length p1, p1

    if-le p1, p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isValidResponse([B[B)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    .line 846
    :cond_4
    array-length v0, p2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_b

    return p0

    :cond_b
    move v0, p0

    .line 854
    :goto_c
    array-length v1, p1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_1d

    .line 855
    aget-byte v1, p2, v0

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_1a

    return p0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyPowerButtonPressListeners()V
    .registers 5

    .line 949
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 951
    iget v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 952
    invoke-virtual {v1, v3, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    .line 955
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

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 283
    :try_start_9
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_f

    .line 285
    iget-object v2, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 286
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    monitor-exit v0

    return-void

    .line 293
    :cond_2f
    new-instance v8, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    const/4 p1, 0x0

    .line 295
    invoke-interface {p2, v8, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 296
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_4c

    throw p0

    .line 278
    :cond_4f
    :goto_4f
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

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

    .line 330
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 332
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final resetWcControlTimer()V
    .registers 7

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1077
    iget-wide v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    .line 1078
    iget-object v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 1079
    iput-wide v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    :cond_16
    return-void
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 4

    .line 238
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_13

    .line 240
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 243
    :cond_13
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_26

    .line 245
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDataToLedCover : Nfc Service not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_26
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 256
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 257
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 258
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 260
    iput p1, v0, Landroid/os/Message;->what:I

    .line 264
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 265
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "event_type"

    .line 337
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_39

    .line 351
    :cond_c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 352
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_39

    :cond_1c
    const-string v0, "lcd_touch_listener_type"

    const/4 v1, -0x1

    .line 340
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "lcd_touch_listener_respone"

    .line 341
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 342
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    .line 343
    iput v2, v1, Landroid/os/Message;->what:I

    .line 345
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 347
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 348
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_39
    return-void
.end method

.method public final stopLedCover()V
    .registers 4

    .line 922
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 931
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 934
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 935
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 936
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v0, 0xa

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    return-void
.end method

.method public final transceiveVersionCheck()Z
    .registers 10

    .line 1011
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v0

    .line 1012
    sget-object v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verison check response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_53

    .line 1014
    array-length v5, v0

    array-length v6, v1

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_53

    aget-byte v5, v0, v4

    aget-byte v6, v1, v7

    if-ne v5, v6, :cond_53

    aget-byte v5, v0, v3

    const/4 v6, 0x6

    aget-byte v8, v1, v6

    if-ne v5, v8, :cond_53

    aget-byte v5, v0, v2

    const/4 v8, 0x7

    aget-byte v8, v1, v8

    if-ne v5, v8, :cond_53

    aget-byte v5, v0, v7

    const/16 v7, 0xa

    aget-byte v7, v1, v7

    if-ne v5, v7, :cond_53

    aget-byte v5, v0, v6

    const/16 v6, 0xb

    aget-byte v1, v1, v6

    if-ne v5, v1, :cond_53

    move v1, v3

    goto :goto_54

    :cond_53
    move v1, v4

    :goto_54
    if-eqz v1, :cond_72

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x3

    .line 1021
    aget-byte v5, v0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    aget-byte v0, v0, v4

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%02X %02X"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    :cond_72
    return v1
.end method

.method public final tryStartLedCover(Landroid/content/Intent;)Z
    .registers 8

    .line 416
    sget-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 418
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    const/4 v2, 0x1

    if-nez v1, :cond_53

    .line 421
    iget v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/4 v3, 0x0

    if-nez v1, :cond_31

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 426
    iget-object v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v3}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 428
    :cond_31
    iget-object v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v1

    const-string/jumbo v4, "start_result"

    .line 432
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result p1

    if-eqz p1, :cond_4d

    const-string p1, "Started NFC LED Cover"

    .line 434
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 436
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    goto :goto_58

    :cond_4d
    const-string p0, "Failed to start NFC LED Cover"

    .line 438
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_53
    const-string p0, "NFC LED Cover already started"

    .line 442
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return v2
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 8

    .line 306
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v2, :cond_9

    .line 309
    iget-object v4, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 310
    sget-object v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    .line 313
    monitor-exit v0

    return p0

    .line 317
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4d

    .line 318
    sget-object p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_4d
    move-exception p0

    .line 317
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

    if-eqz p1, :cond_8

    if-ne p2, v0, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    move p2, v1

    .line 187
    :goto_9
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, p2, :cond_3e

    .line 188
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez p2, :cond_26

    .line 194
    sget-object p2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {p2, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 196
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 197
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_3e

    .line 198
    :cond_26
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 201
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 202
    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    :cond_3e
    :goto_3e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "nfc_led_cover_test"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    return-void
.end method
