.class public abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UsbHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
    }
.end annotation


# static fields
.field public static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"


# instance fields
.field public mAccessoryConnectionStartTime:J

.field public mAdbNotificationShown:Z

.field public mAudioAccessoryConnected:Z

.field public mAudioAccessorySupported:Z

.field public mAudioSourceEnabled:Z

.field public mBootCompleted:Z

.field public mBroadcastedIntent:Landroid/content/Intent;

.field public mConfigured:Z

.field public mConnected:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field public mCurrentFunctions:J

.field public mCurrentFunctionsApplied:Z

.field public mCurrentGadgetHalVersion:I

.field public mCurrentUsbFunctionsReceived:Z

.field public mCurrentUser:I

.field public mHideUsbNotiForSecUsbSmartEP:Z

.field public mHideUsbNotification:Z

.field public mHostConnected:Z

.field public mMidiCard:I

.field public mMidiDevice:I

.field public mMidiEnabled:Z

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPendingBootAccessoryHandshakeBroadcast:Z

.field public mPendingBootBroadcast:Z

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public mScreenLocked:Z

.field public mScreenUnlockedFunctions:J

.field public mSecCurrentFunctions:J

.field public mSendStringCount:I

.field public mSettings:Landroid/content/SharedPreferences;

.field public mSinkPower:Z

.field public mSourcePower:Z

.field public mStartAccessory:Z

.field public mSupportsAllCombinations:Z

.field public mSystemReady:Z

.field public mUsbAccessoryConnected:Z

.field public final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public mUsbCharging:Z

.field public final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mUsbNotificationId:I

.field public mUsbSpeed:I

.field public mUseUsbNotification:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 8

    .line 690
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 656
    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const/4 p1, 0x0

    .line 657
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 658
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 691
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 692
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 693
    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 694
    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 695
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 697
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/4 p3, 0x1

    .line 698
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 700
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-nez p4, :cond_35

    .line 702
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Couldn\'t load shared preferences"

    invoke-static {p4, p5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 704
    :cond_35
    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, p3, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 706
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    invoke-static {p5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    .line 705
    invoke-interface {p4, p5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 704
    invoke-static {p4}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 712
    :goto_54
    invoke-static {p2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p4

    if-eqz p4, :cond_5f

    .line 714
    invoke-virtual {p4}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object p4

    goto :goto_60

    :cond_5f
    const/4 p4, 0x0

    :goto_60
    if-eqz p4, :cond_6a

    .line 716
    invoke-virtual {p4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result p4

    if-eqz p4, :cond_6a

    move p4, p3

    goto :goto_6b

    :cond_6a
    move p4, p1

    :goto_6b
    if-nez p4, :cond_7b

    .line 717
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x11101ec

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_7b

    move p1, p3

    :cond_7b
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    return-void
.end method


# virtual methods
.method public final broadcastUsbAccessoryHandshake()V
    .registers 5

    .line 931
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_HANDSHAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    .line 932
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const-string v3, "android.hardware.usb.extra.ACCESSORY_UEVENT_TIME"

    .line 934
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    const-string v2, "android.hardware.usb.extra.ACCESSORY_STRING_COUNT"

    .line 936
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    const-string v2, "android.hardware.usb.extra.ACCESSORY_START"

    .line 938
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "android.hardware.usb.extra.ACCESSORY_HANDSHAKE_END"

    .line 940
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 944
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcasting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " extras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 948
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->resetUsbAccessoryHandshakeDebuggingInfo()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 15

    .line 1751
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1753
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-string v2, "current_functions"

    const-wide v3, 0x20e00000001L

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1755
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-string v0, "current_functions_applied"

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1757
    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v5, "screen_unlocked_functions"

    const-wide v6, 0x20e00000003L

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 1759
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-string/jumbo v0, "screen_locked"

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1760
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v0, "connected"

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1761
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v0, "configured"

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1762
    iget-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz p4, :cond_60

    const-wide v0, 0x10b00000007L

    const-string v2, "current_accessory"

    .line 1763
    invoke-static {p1, v2, v0, v1, p4}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    :cond_60
    const-wide v0, 0x10800000008L

    .line 1766
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v2, "host_connected"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v0, 0x10800000009L

    .line 1767
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    const-string/jumbo v2, "source_power"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v0, 0x1080000000aL

    .line 1768
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    const-string/jumbo v2, "sink_power"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v0, 0x1080000000bL

    .line 1769
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    const-string/jumbo v2, "usb_charging"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1770
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v0, "hide_usb_notification"

    const-wide v1, 0x1080000000cL

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1773
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v0, 0x1080000000dL

    .line 1776
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const-string p4, "audio_accessory_connected"

    invoke-virtual {p1, p4, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const/4 p0, 0x0

    const/4 p4, 0x0

    :try_start_b2
    const-string v0, "kernel_state"

    const-wide v1, 0x1090000000fL

    .line 1780
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1781
    invoke-static {v3, p4, p0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1780
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_cb
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_cb} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_cb} :catch_cc

    goto :goto_e0

    :catch_cc
    move-exception v0

    .line 1786
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not read kernel state"

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e0

    .line 1783
    :catch_d7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore missing legacy kernel path in bugreport dump: kernel state:/sys/class/android_usb/android0/state"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e0
    :try_start_e0
    const-string v0, "kernel_function_list"

    const-wide v1, 0x10900000010L

    .line 1790
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/functions"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1792
    invoke-static {v3, p4, p0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1790
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_f9
    .catch Ljava/io/FileNotFoundException; {:try_start_e0 .. :try_end_f9} :catch_105
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f9} :catch_fa

    goto :goto_10e

    :catch_fa
    move-exception p0

    .line 1797
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p4

    const-string v0, "Could not read kernel function list"

    invoke-static {p4, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10e

    .line 1794
    :catch_105
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p4, "Ignore missing legacy kernel path in bugreport dump: kernel function list:/sys/class/android_usb/android0/functions"

    invoke-static {p0, p4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :goto_10e
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .registers 15

    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0x3f

    if-ge p0, v0, :cond_28

    const-wide/16 v0, 0x1

    shl-long v6, v0, p0

    and-long v0, p5, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 1741
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1742
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    goto :goto_25

    .line 1744
    :cond_1e
    invoke-static {v6, v7}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :cond_25
    :goto_25
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method public finishBoot()V
    .registers 7

    .line 1392
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishBoot"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v0, :cond_7c

    .line 1394
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1395
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 1396
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1398
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_53

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_53

    .line 1400
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishBoot mScreenUnlockedFunctions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_5a

    .line 1403
    :cond_53
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1405
    :goto_5a
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_6d

    .line 1406
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1407
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_74

    .line 1408
    :cond_6d
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    if-eqz v0, :cond_74

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    .line 1412
    :cond_74
    :goto_74
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    .line 1413
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    :cond_7c
    return-void
.end method

.method public getAppliedFunctions(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getChargingFunctions()J

    move-result-wide p0

    return-wide p0

    .line 1054
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const-wide/16 v0, 0x1

    or-long p0, p1, v0

    return-wide p0

    :cond_16
    return-wide p1
.end method

.method public getChargingFunctions()J
    .registers 3

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 1

    .line 1425
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object p0
.end method

.method public getEnabledFunctions()J
    .registers 3

    .line 1709
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    return-wide v0
.end method

.method public getGadgetHalVersion()I
    .registers 1

    .line 1729
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    return p0
.end method

.method public getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 5

    .line 901
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    .line 902
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "UsbDeviceManagerPrefs.xml"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 904
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 1715
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adb"

    .line 1716
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1719
    :cond_13
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    return-wide v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1701
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsbSpeed()I
    .registers 1

    .line 1725
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 1062
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-eq v0, v1, :cond_528

    const/16 v1, 0x15

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4ff

    const/16 v1, 0x65

    if-eq v0, v1, :cond_504

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x2

    const/4 v8, 0x4

    const-wide/16 v9, 0x0

    packed-switch v0, :pswitch_data_546

    goto/16 :goto_544

    .line 1272
    :pswitch_1f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v3

    :goto_26
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v0, v1, :cond_2c

    goto/16 :goto_544

    .line 1275
    :cond_2c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage -> MSG_UPDATE_SCREEN_LOCK: mScreenLocked="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_40

    move v6, v2

    goto :goto_41

    :cond_40
    move v6, v3

    :goto_41
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    :goto_51
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1277
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez p1, :cond_59

    goto/16 :goto_544

    :cond_59
    if-eqz v2, :cond_68

    .line 1281
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_544

    .line 1282
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_544

    .line 1285
    :cond_68
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v9

    if-eqz p1, :cond_544

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v4

    cmp-long p1, v0, v9

    if-eqz p1, :cond_544

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_544

    .line 1226
    :pswitch_7a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1227
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage -> MSG_SET_SCREEN_UNLOCKED_FUNCTIONS: mScreenUnlockedFunctions="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1228
    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide/32 v11, 0x40000

    and-long/2addr v6, v11

    cmp-long p1, v6, v9

    const-string/jumbo v0, "persist.sys.usb.config"

    if-eqz p1, :cond_c6

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 1233
    iput-wide v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string p1, "adb"

    .line 1235
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Set persist.sys.usb.config to adb"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 1246
    :cond_c6
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p1

    if-eqz p1, :cond_ce

    const-wide/16 v4, 0x5

    .line 1250
    :cond_ce
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object p1

    .line 1251
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set persist.sys.usb.config to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :goto_ed
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_111

    .line 1256
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1257
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1257
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1259
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1260
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1264
    :cond_111
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_120

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v9

    if-eqz p1, :cond_120

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto/16 :goto_544

    .line 1268
    :cond_120
    invoke-virtual {p0, v9, v10, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_544

    .line 1325
    :pswitch_125
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage -> MSG_LOCALE_CHANGED"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_544

    .line 1177
    :pswitch_133
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_UPDATE_HOST_STATE: connected="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_147

    move v4, v2

    goto :goto_148

    :cond_147
    move v4, v3

    :goto_148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    .line 1179
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_15c

    move p1, v2

    goto :goto_15d

    :cond_15c
    move p1, v3

    :goto_15d
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 1182
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOST_STATE connected:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 1186
    :cond_17b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1ee

    .line 1187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1189
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 1192
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v1

    sub-int/2addr v1, v2

    :cond_1b5
    :goto_1b5
    if-ltz v1, :cond_17b

    .line 1194
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    add-int/lit8 v1, v1, -0x1

    .line 1196
    invoke-virtual {v4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v5

    sub-int/2addr v5, v2

    :cond_1c2
    if-ltz v5, :cond_1b5

    .line 1198
    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    add-int/lit8 v5, v5, -0x1

    .line 1200
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsDenyInterfaces()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c2

    .line 1203
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v6

    if-ne v6, v2, :cond_1c2

    .line 1204
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Clear notification: USB Audio connected"

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    goto :goto_1b5

    .line 1214
    :cond_1ee
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz p1, :cond_544

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_544

    .line 1168
    :pswitch_1f7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1fc

    goto :goto_1fd

    :cond_1fc
    move v2, v3

    .line 1169
    :goto_1fd
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eq p1, v2, :cond_544

    .line 1170
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage -> MSG_UPDATE_CHARGING_STATE"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 1172
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto/16 :goto_544

    .line 1355
    :pswitch_211
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage -> MSG_ACCESSORY_MODE_ENTER_TIMEOUT"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accessory mode enter timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz p1, :cond_23f

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v9

    if-nez p1, :cond_544

    .line 1360
    :cond_23f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto/16 :goto_544

    .line 1110
    :pswitch_244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1111
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1112
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 1113
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/usb/UsbPortStatus;

    if-eqz v4, :cond_29f

    .line 1116
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    if-ne v5, v2, :cond_25c

    move v5, v2

    goto :goto_25d

    :cond_25c
    move v5, v3

    :goto_25d
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1117
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    if-ne v5, v2, :cond_267

    move v5, v2

    goto :goto_268

    :cond_267
    move v5, v3

    :goto_268
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 1118
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_273

    move v5, v2

    goto :goto_274

    :cond_273
    move v5, v3

    :goto_274
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 1119
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    if-ne v5, v8, :cond_27e

    move v5, v2

    goto :goto_27f

    :cond_27e
    move v5, v3

    :goto_27f
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 1124
    invoke-virtual {v4, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 1126
    invoke-virtual {v4, v6, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 1127
    invoke-virtual {v4, v2, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v5

    if-eqz v5, :cond_29b

    .line 1129
    invoke-virtual {v4, v6, v6}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_29b

    move v4, v2

    goto :goto_29c

    :cond_29b
    move v4, v3

    :goto_29c
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    goto :goto_2a9

    .line 1131
    :cond_29f
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1132
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 1133
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 1134
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 1135
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 1138
    :goto_2a9
    invoke-virtual {v1, v8}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 1140
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage -> MSG_UPDATE_PORT_STATE: mSupportsAllCombinations="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mAudioAccessorySupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mAudioAccessoryConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1148
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetUsbSecurityCheckNodeValue()Ljava/lang/String;

    move-result-object p1

    .line 1150
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    const-string v1, "04E8:B007"

    .line 1151
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f9

    .line 1152
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Clear notification: SAMSUNG USB Smart Earphone connected"

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    .line 1157
    :cond_2f9
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1158
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_311

    .line 1159
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez p1, :cond_306

    if-eqz v0, :cond_544

    .line 1160
    :cond_306
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    goto/16 :goto_544

    .line 1163
    :cond_311
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    goto/16 :goto_544

    .line 1293
    :pswitch_315
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage -> MSG_UPDATE_USER_RESTRICTIONS mCurrentFunctions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1294
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isUsbTransferAllowed()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result p1

    if-nez p1, :cond_34f

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result p1

    if-eqz p1, :cond_544

    .line 1298
    :cond_34f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result p1

    if-nez p1, :cond_544

    .line 1299
    invoke-virtual {p0, v9, v10, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_544

    .line 1337
    :pswitch_35a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v4, "handleMessage -> MSG_USER_SWITCHED"

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_544

    .line 1340
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current user switched to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1343
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1344
    iput-wide v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1345
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3a9

    .line 1346
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 1348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 1347
    invoke-static {v4, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1346
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1350
    :cond_3a9
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_544

    .line 1332
    :pswitch_3b0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage -> MSG_BOOT_COMPLETED"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1334
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    goto/16 :goto_544

    .line 1303
    :pswitch_3c0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage -> MSG_SYSTEM_READY"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 1305
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1307
    const-class p1, Landroid/debug/AdbManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/debug/AdbManagerInternal;

    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 1308
    invoke-virtual {p1, v0}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isTv()Z

    move-result p1

    if-eqz p1, :cond_401

    .line 1313
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v3, 0x104018b

    .line 1315
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "usbdevicemanager.adb.tv"

    invoke-direct {v0, v3, v1, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1313
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1320
    :cond_401
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    goto/16 :goto_544

    .line 1221
    :pswitch_408
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage -> MSG_SET_CURRENT_FUNCTION"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1223
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto/16 :goto_544

    .line 1218
    :pswitch_41e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_423

    goto :goto_424

    :cond_423
    move v2, v3

    :goto_424
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto/16 :goto_544

    .line 1064
    :pswitch_429
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_UPDATE_STATE: connected="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configured="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentFunctions="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1066
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_461

    move v0, v2

    goto :goto_462

    :cond_461
    move v0, v3

    :goto_462
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1068
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_46a

    move p1, v2

    goto :goto_46b

    :cond_46a
    move p1, v3

    :goto_46b
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1070
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1072
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_47d

    .line 1073
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 1075
    :cond_47d
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v9

    if-eqz p1, :cond_487

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 1078
    :cond_487
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_4f9

    .line 1079
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_4b5

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4b5

    const/16 p1, 0x11

    .line 1080
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4b5

    .line 1082
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_4ad

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v9

    if-eqz p1, :cond_4ad

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions()V

    goto :goto_4f5

    .line 1086
    :cond_4ad
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    goto :goto_4f5

    .line 1089
    :cond_4b5
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-ne p1, v2, :cond_4df

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmSupportDualRole()Z

    move-result p1

    if-ne p1, v2, :cond_4df

    .line 1090
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmSetNextUsbModeToDefault()Z

    move-result p1

    if-ne p1, v2, :cond_4f5

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v0, v9

    if-nez p1, :cond_4f5

    .line 1092
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mSetNextUsbModeToDefault: Set default functions!"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 1094
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfputmSetNextUsbModeToDefault(Z)V

    goto :goto_4f5

    .line 1098
    :cond_4df
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_4f5

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmEnableUsbHiddenMenu()Z

    move-result p1

    if-eqz p1, :cond_4f5

    .line 1099
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfputmEnableUsbHiddenMenu(Z)V

    .line 1100
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disable USB Hidden Menu"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_4f5
    :goto_4f5
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_4fb

    .line 1105
    :cond_4f9
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1107
    :goto_4fb
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbSpeed()V

    goto :goto_544

    .line 1378
    :cond_4ff
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 1382
    :cond_504
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage -> MSG_USB_NOTI_UPDATE: isForce="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_523

    goto :goto_524

    :cond_523
    move v2, v3

    .line 1384
    :goto_524
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    goto :goto_544

    .line 1366
    :cond_528
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Accessory handshake timeout"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_539

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_544

    .line 1371
    :cond_539
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Pending broadcasting intent as not boot completed yet."

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    :cond_544
    :goto_544
    return-void

    nop

    :pswitch_data_546
    .packed-switch 0x0
        :pswitch_429
        :pswitch_41e
        :pswitch_408
        :pswitch_3c0
        :pswitch_3b0
        :pswitch_35a
        :pswitch_315
        :pswitch_244
        :pswitch_211
        :pswitch_1f7
        :pswitch_133
        :pswitch_125
        :pswitch_7a
        :pswitch_1f
    .end packed-switch
.end method

.method public isAdbEnabled()Z
    .registers 2

    .line 1654
    const-class p0, Landroid/debug/AdbManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/debug/AdbManagerInternal;

    const/4 v0, 0x0

    .line 1655
    invoke-virtual {p0, v0}, Landroid/debug/AdbManagerInternal;->isAdbEnabled(B)Z

    move-result p0

    return p0
.end method

.method public final isTv()Z
    .registers 2

    .line 1683
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUsbDataTransferActive(J)Z
    .registers 7

    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_14

    const-wide/16 v0, 0x10

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public final isUsbStateChanged(Landroid/content/Intent;)Z
    .registers 8

    .line 908
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 909
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    .line 910
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 911
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    return v2

    .line 916
    :cond_25
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    .line 919
    :cond_34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 920
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 921
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v4, v1, :cond_38

    return v2

    :cond_51
    return v3
.end method

.method public isUsbTransferAllowed()Z
    .registers 2

    .line 841
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    .line 842
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final notifyAccessoryModeExit()V
    .registers 4

    .line 889
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    .line 892
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_21

    .line 893
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_1e

    .line 894
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbPermissionManager;->usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V

    :cond_1e
    const/4 v0, 0x0

    .line 896
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    :cond_21
    return-void
.end method

.method public putGlobalSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4

    .line 1705
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public resetUsbAccessoryHandshakeDebuggingInfo()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1817
    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const/4 v0, 0x0

    .line 1818
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 1819
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 3

    .line 729
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 731
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .registers 4

    .line 736
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 738
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 739
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 740
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZ)V
    .registers 3

    .line 722
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 723
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 724
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 725
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZZ)V
    .registers 4

    .line 744
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 746
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 747
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 748
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(IZJ)V
    .registers 5

    .line 752
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 754
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 755
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 5

    .line 990
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 991
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsEventLogger()Lcom/android/server/usb/UsbDeviceLogger;

    move-result-object p0

    new-instance v0, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbDeviceLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceLogger;->log(Lcom/android/server/usb/UsbDeviceLogger$Event;)V

    return-void
.end method

.method public setAccessoryUEventTime(J)V
    .registers 3

    .line 1809
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    return-void
.end method

.method public final setAdbEnabled(Z)V
    .registers 11

    .line 803
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdbEnabled: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.usb.config"

    const-string v1, "none"

    .line 805
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const-wide/32 v3, 0x40000

    .line 818
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "adb"

    if-eqz p1, :cond_39

    .line 810
    iget-wide v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v3, v7, v3

    if-nez v3, :cond_43

    .line 811
    invoke-virtual {p0, v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 816
    :cond_39
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 817
    invoke-virtual {p0, v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_43
    if-eqz p1, :cond_4a

    .line 824
    invoke-static {v1, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->-$$Nest$smaddFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4e

    .line 827
    :cond_4a
    invoke-static {v1, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->-$$Nest$smremoveFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 831
    :goto_4e
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set persist.sys.usb.config to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    return-void
.end method

.method public abstract setEnabledFunctions(JZ)V
.end method

.method public final setScreenUnlockedFunctions()V
    .registers 5

    .line 1024
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenUnlockedFunctions: mScreenUnlockedFunctions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1025
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZ)V

    return-void
.end method

.method public setStartAccessoryTrue()V
    .registers 2

    const/4 v0, 0x1

    .line 1813
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1697
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAdbNotification(Z)V
    .registers 7

    .line 1659
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_5

    return-void

    .line 1662
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_49

    const-string/jumbo v0, "persist.adb.notify"

    const-string v4, ""

    .line 1663
    invoke-virtual {p0, v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    :cond_25
    if-eqz p1, :cond_34

    .line 1665
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz p1, :cond_34

    .line 1666
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1667
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1670
    :cond_34
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-nez p1, :cond_56

    .line 1671
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Landroid/debug/AdbNotifications;->createNotification(Landroid/content/Context;B)Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x1

    .line 1673
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1674
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_56

    .line 1676
    :cond_49
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz p1, :cond_56

    .line 1677
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1678
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public final updateCurrentAccessory()V
    .registers 11

    const/16 v0, 0x8

    .line 848
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 850
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_77

    if-eqz v0, :cond_77

    .line 852
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 854
    new-instance v8, Lcom/android/server/usb/UsbSerialReader;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-direct {v8, v1, v2, v3}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    .line 857
    new-instance v9, Landroid/hardware/usb/UsbAccessory;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    move-object v1, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    iput-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 865
    invoke-virtual {v8, v9}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 867
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering USB accessory mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_86

    .line 870
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    const/16 v0, 0x14

    .line 871
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_86

    .line 875
    :cond_6d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nativeGetAccessoryStrings failed"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_77
    if-nez v0, :cond_7d

    .line 879
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit()V

    goto :goto_86

    .line 881
    :cond_7d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Debouncing accessory mode exit"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .registers 6

    .line 789
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHostState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 793
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 794
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 796
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 799
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final updateMidiFunction()V
    .registers 8

    .line 999
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 1000
    :goto_10
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eq v0, v3, :cond_54

    if-eqz v0, :cond_52

    const/4 v3, 0x0

    .line 1004
    :try_start_17
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_23} :catch_3b
    .catchall {:try_start_17 .. :try_end_23} :catchall_39

    .line 1005
    :try_start_23
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 1006
    invoke-virtual {v4}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2f} :catch_36
    .catchall {:try_start_23 .. :try_end_2f} :catchall_33

    .line 1012
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_52

    :catchall_33
    move-exception p0

    move-object v3, v4

    goto :goto_4c

    :catch_36
    move-exception v0

    move-object v3, v4

    goto :goto_3c

    :catchall_39
    move-exception p0

    goto :goto_4c

    :catch_3b
    move-exception v0

    .line 1008
    :goto_3c
    :try_start_3c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "could not open MIDI file"

    invoke-static {v4, v5, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_39

    if-eqz v3, :cond_4a

    .line 1012
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_4a
    move v0, v2

    goto :goto_52

    :goto_4c
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 1014
    :cond_51
    throw p0

    .line 1016
    :cond_52
    :goto_52
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 1018
    :cond_54
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    return-void
.end method

.method public updateState(Ljava/lang/String;)V
    .registers 6

    const-string v0, "DISCONNECTED"

    .line 761
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "sys.usb.configured"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    const-string p1, "none"

    .line 764
    invoke-virtual {p0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    :goto_13
    move v0, p1

    goto :goto_2f

    :cond_15
    const-string v0, "CONNECTED"

    .line 765
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    move p1, v3

    goto :goto_2f

    :cond_20
    const-string v0, "CONFIGURED"

    .line 768
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p1, "configured"

    .line 771
    invoke-virtual {p0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    goto :goto_13

    :goto_2f
    if-nez p1, :cond_34

    .line 776
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_34
    if-ne v0, v2, :cond_3b

    const/16 v1, 0x11

    .line 777
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    :cond_3b
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 779
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 780
    iput p1, v1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_50

    .line 783
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz p1, :cond_4c

    const/16 p1, 0x3e8

    goto :goto_4e

    :cond_4c
    const/16 p1, 0xbb8

    :goto_4e
    int-to-long v2, p1

    goto :goto_52

    :cond_50
    const-wide/16 v2, 0x0

    .line 782
    :goto_52
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 773
    :cond_56
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateUsbFunctions()V
    .registers 1

    .line 995
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    return-void
.end method

.method public updateUsbGadgetHalVersion()V
    .registers 3

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 1429
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateUsbNotification(Z)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1449
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsbNotification("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): mConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHostConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSourcePower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSinkPower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mUsbCharging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2f8

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v2, :cond_2f8

    const-string/jumbo v2, "persist.charging.notify"

    const-string v3, ""

    .line 1455
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto/16 :goto_2f8

    .line 1461
    :cond_6a
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_8b

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v2, :cond_8b

    .line 1462
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_8a

    .line 1463
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1465
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1466
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear notification"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    return-void

    .line 1472
    :cond_8b
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    if-eqz v2, :cond_a6

    .line 1473
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_a5

    .line 1474
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1476
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1477
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear notification by SEC USB SmartEP"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return-void

    .line 1485
    :cond_a6
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1040e91

    .line 1486
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1489
    iget-wide v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_c2

    const-wide/16 v10, -0x2

    and-long/2addr v6, v10

    const-wide/32 v10, -0x400001

    and-long/2addr v6, v10

    .line 1495
    :cond_c2
    iget-boolean v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const v11, 0x1040e92

    const v12, 0x1040ea2

    const/16 v13, 0x20

    const v14, 0x1040ead

    const/16 v15, 0x1f

    if-eqz v10, :cond_dc

    iget-boolean v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v10, :cond_dc

    const/16 v6, 0x29

    move v11, v14

    goto/16 :goto_16b

    .line 1498
    :cond_dc
    iget-boolean v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v10, :cond_150

    const-wide/16 v16, 0x4

    cmp-long v10, v6, v16

    if-nez v10, :cond_ec

    const v6, 0x1040e8d

    const/16 v7, 0x1b

    goto :goto_13c

    :cond_ec
    const-wide/16 v16, 0x10

    cmp-long v10, v6, v16

    if-nez v10, :cond_f8

    const v6, 0x1040e94

    const/16 v7, 0x1c

    goto :goto_13c

    :cond_f8
    const-wide/16 v16, 0x8

    cmp-long v10, v6, v16

    if-nez v10, :cond_104

    const v6, 0x1040e84

    const/16 v7, 0x1d

    goto :goto_13c

    :cond_104
    const-wide/16 v16, 0x20

    cmp-long v10, v6, v16

    if-eqz v10, :cond_137

    const-wide/16 v16, 0x400

    cmp-long v10, v6, v16

    if-nez v10, :cond_111

    goto :goto_137

    :cond_111
    const-wide/16 v16, 0x2

    cmp-long v10, v6, v16

    if-nez v10, :cond_11d

    const v6, 0x1040e64

    const/16 v7, 0x1e

    goto :goto_13c

    :cond_11d
    const-wide/32 v16, 0x80000

    cmp-long v10, v6, v16

    if-nez v10, :cond_12a

    const v6, 0x1040e6d

    const/16 v7, 0x64

    goto :goto_13c

    :cond_12a
    cmp-long v6, v6, v8

    if-nez v6, :cond_134

    const v6, 0x1040e74

    const/16 v7, 0x6e

    goto :goto_13c

    :cond_134
    move v6, v4

    move v7, v6

    goto :goto_13c

    :cond_137
    :goto_137
    const v6, 0x1040ea3

    const/16 v7, 0x2f

    .line 1524
    :goto_13c
    iget-boolean v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v8, :cond_14a

    if-eqz v6, :cond_154

    const v5, 0x1040e93

    .line 1526
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_14d

    :cond_14a
    if-nez v6, :cond_14d

    goto :goto_167

    :cond_14d
    :goto_14d
    move v11, v6

    move v6, v7

    goto :goto_16b

    .line 1539
    :cond_150
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v6, :cond_157

    :cond_154
    move v11, v12

    move v6, v15

    goto :goto_16b

    .line 1542
    :cond_157
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v6, :cond_169

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v6, :cond_169

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-nez v6, :cond_167

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz v6, :cond_169

    :cond_167
    :goto_167
    move v6, v13

    goto :goto_16b

    :cond_169
    move v6, v4

    move v11, v6

    .line 1551
    :goto_16b
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmDexObserver()Landroid/util/sysfwutil/DexObserver;

    move-result-object v7

    if-eqz v7, :cond_18f

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmDexObserver()Landroid/util/sysfwutil/DexObserver;

    move-result-object v7

    .line 1552
    invoke-virtual {v7}, Landroid/util/sysfwutil/DexObserver;->isDexModeOn()Z

    move-result v7

    if-nez v7, :cond_185

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetmDexObserver()Landroid/util/sysfwutil/DexObserver;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/sysfwutil/DexObserver;->isSemiDexModeOn()Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 1553
    :cond_185
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Clear notification: Dex is on"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 1555
    :cond_18f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetusbDisableSettingVal()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ON_ALL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a6

    .line 1556
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Clear notification: ON_ALL"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a4
    move v6, v4

    goto :goto_1d6

    .line 1558
    :cond_1a6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetusbDisableSettingVal()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ON_HOST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1be

    if-ne v6, v15, :cond_1be

    .line 1560
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Clear notification: ON_HOST"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 1562
    :cond_1be
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetusbDisableSettingVal()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ON_DEVICE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d6

    if-eq v6, v15, :cond_1d6

    .line 1564
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Clear notification: ON_DEVICE"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a4

    .line 1569
    :cond_1d6
    :goto_1d6
    iget v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v6, v7, :cond_1dc

    if-eqz v1, :cond_2f8

    :cond_1dc
    if-eqz v7, :cond_201

    .line 1572
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1574
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancelAsUser: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1578
    :cond_201
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21d

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1580
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_222

    :cond_21d
    if-ne v6, v13, :cond_222

    .line 1583
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    return-void

    :cond_222
    if-eqz v6, :cond_2f8

    .line 1588
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v7, "com.android.settings"

    if-eq v11, v14, :cond_248

    .line 1595
    new-instance v2, Landroid/content/ComponentName;

    const-string v8, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v17

    .line 1599
    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v18, 0x4000000

    const/16 v19, 0x0

    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1601
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    goto :goto_27d

    .line 1603
    :cond_248
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.settings.HelpTrampoline"

    .line 1604
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.TEXT"

    const-string v8, "help_url_audio_accessory_not_supported"

    .line 1606
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_26e

    .line 1611
    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/high16 v8, 0x4000000

    invoke-static {v7, v4, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_26f

    :cond_26e
    move-object v5, v3

    .line 1617
    :goto_26f
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    const v8, 0x1040eac

    .line 1618
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v21, v5

    move-object v5, v2

    move-object/from16 v2, v21

    .line 1623
    :goto_27d
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x1080a85

    .line 1624
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 1625
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 1626
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1627
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1628
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v9, 0x106001c

    .line 1629
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1632
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1633
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1634
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1635
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    if-ne v11, v14, :cond_2c9

    .line 1640
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1641
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1640
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1643
    :cond_2c9
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1645
    iget-object v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v6, v2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1647
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAsUser: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iput v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_2f8
    :goto_2f8
    return-void
.end method

.method public updateUsbSpeed()V
    .registers 4

    .line 1433
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/4 v1, -0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_a

    .line 1434
    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void

    .line 1438
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_19

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 1439
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1b

    .line 1442
    :cond_19
    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    :goto_1b
    return-void
.end method

.method public updateUsbStateBroadcastIfNeeded(JZ)V
    .registers 9

    .line 952
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUsbStateBroadcastIfNeeded: functions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x31000000

    .line 957
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 960
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 961
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v2, "host_connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 962
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v2, "configured"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4f

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v1, v2

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    const-string/jumbo v3, "unlocked"

    .line 964
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "config_changed"

    .line 966
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_5b
    const-wide/16 v3, 0x0

    cmp-long p3, p1, v3

    if-eqz p3, :cond_72

    .line 972
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v3

    .line 971
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 973
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    goto :goto_5b

    .line 977
    :cond_72
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    move-result p1

    const-string p2, " extras: "

    if-nez p1, :cond_9e

    .line 979
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "skip broadcasting "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 984
    :cond_9e
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcasting "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 986
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    return-void
.end method
