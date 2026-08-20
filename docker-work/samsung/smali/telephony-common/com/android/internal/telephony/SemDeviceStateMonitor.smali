.class public Lcom/android/internal/telephony/SemDeviceStateMonitor;
.super Lcom/android/internal/telephony/DeviceStateMonitor;
.source "SemDeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;
    }
.end annotation


# static fields
.field protected static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mElevatorMonitor:Lcom/android/internal/telephony/SemElevatorMonitor;

.field private blacklist mFoldStateListener:Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsDirectMode:Z

.field private blacklist mIsMmwAlloc:Z

.field private blacklist mIsScreenOn:Z

.field private blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFoldStateListener(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mFoldStateListener:Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDirectMode(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsDirectMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDirectMode(Lcom/android/internal/telephony/SemDeviceStateMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsDirectMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckOtgVersion(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->checkOtgVersion()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckUsbVersion(Lcom/android/internal/telephony/SemDeviceStateMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->checkUsbVersion()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemDeviceStateMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 76
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsDirectMode:Z

    .line 123
    new-instance v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/SemElevatorMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SemElevatorMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mElevatorMonitor:Lcom/android/internal/telephony/SemElevatorMonitor;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    const-string v0, "ro.carrier"

    const-string v1, ""

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi-only"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 100
    iget-object v0, p1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForNrBearerAllocationChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;-><init>(Lcom/android/internal/telephony/SemDeviceStateMonitor;Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mFoldStateListener:Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;

    .line 102
    invoke-static {v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;->-$$Nest$minit(Lcom/android/internal/telephony/SemDeviceStateMonitor$FoldStateListener;)V

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.UsbOtgCableConnection"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.samsung.media.action.receiver_sar"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->IS_PHONE:Z

    if-nez v1, :cond_89

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    :cond_89
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_92
    return-void
.end method

.method private blacklist checkOtgVersion()Z
    .registers 5

    .line 241
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/usb_notify/usb_control/otg_speed"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const-string v0, "checkOtgVersion - OtgPath not exist"

    .line 244
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v2

    :cond_14
    const/4 v1, 0x0

    .line 249
    :try_start_15
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOtgVersion - OTG Speed is: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    const-string p0, "SUPER"

    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_37} :catch_3b

    if-eqz p0, :cond_52

    const/4 p0, 0x1

    return p0

    :catch_3b
    move-exception p0

    .line 255
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOtgVersion is fail. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return v2
.end method

.method private blacklist checkUsbVersion()Z
    .registers 6

    .line 212
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/usb_gadget/g1/bcdUSB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const-string v0, "checkUsbVersion - UsbPath not exist"

    .line 215
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v2

    :cond_14
    const/16 v1, 0x310

    const/4 v3, 0x0

    .line 222
    :try_start_17
    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUsbVersion - string from node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    const-string p0, "x"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_4a

    .line 227
    :cond_44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_48} :catch_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_48} :catch_4e

    const/16 v1, 0x136

    :goto_4a
    if-lt p0, v1, :cond_65

    const/4 p0, 0x1

    return p0

    :catch_4e
    move-exception p0

    .line 234
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUsbVersion is fail. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return v2
.end method

.method private blacklist isScreenOn()Z
    .registers 7

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 272
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 275
    array-length v2, v0

    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 278
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    const-string v0, "Screen on for display"

    .line 279
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    const-string v0, "Screens all off"

    .line 283
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v1

    :cond_32
    const-string v0, "No displays found"

    .line 287
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;Z)V
    .registers 4

    .line 346
    sget-object v0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_c

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private blacklist onReset()V
    .registers 4

    const-string v0, "onReset"

    .line 299
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    const-wide/32 v1, 0x10000000

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(JZ)V

    return-void
.end method

.method private blacklist sendBackoffRequest(JZ)V
    .registers 9

    const-string v0, "sendBackoffRequest close is fail. "

    .line 310
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0xd

    const/16 v4, 0x11

    .line 315
    :try_start_10
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x82

    .line 316
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 317
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 318
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 319
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_4c
    .catchall {:try_start_10 .. :try_end_2d} :catchall_4a

    .line 326
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 327
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_34

    goto :goto_73

    :catch_34
    move-exception p0

    .line 329
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :catchall_4a
    move-exception p0

    goto :goto_74

    :catch_4c
    move-exception p0

    .line 323
    :try_start_4d
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendBackoffRequest is fail. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_4a

    .line 326
    :try_start_63
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 327
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_6a

    goto :goto_73

    :catch_6a
    move-exception p0

    .line 329
    sget-object p1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3c

    :goto_73
    return-void

    .line 326
    :goto_74
    :try_start_74
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 327
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_7b

    goto :goto_90

    :catch_7b
    move-exception p1

    .line 329
    sget-object p2, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_90
    throw p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DeviceStateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemDeviceStateMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Local logs:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 422
    iget-object p2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 424
    iget-object p0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mElevatorMonitor:Lcom/android/internal/telephony/SemElevatorMonitor;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/SemElevatorMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 426
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_7f

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6c

    const/4 v4, 0x6

    if-eq v0, v4, :cond_7f

    packed-switch v0, :pswitch_data_86

    goto/16 :goto_82

    :pswitch_11
    const-wide/16 v0, 0x1000

    .line 405
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_18

    move v2, v3

    :cond_18
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(JZ)V

    return-void

    .line 392
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 393
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_53

    .line 394
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2f

    move v2, v3

    .line 396
    :cond_2f
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    if-eq p1, v2, :cond_53

    .line 397
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mmW Allocation State changed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    const-wide/32 v0, 0x2000000

    .line 399
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsMmwAlloc:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(JZ)V

    :cond_53
    return-void

    .line 387
    :pswitch_54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 388
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(JZ)V

    return-void

    .line 378
    :cond_6c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_71

    move v2, v3

    .line 379
    :cond_71
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    if-ne v0, v2, :cond_76

    goto :goto_82

    .line 382
    :cond_76
    iput-boolean v2, p0, Lcom/android/internal/telephony/SemDeviceStateMonitor;->mIsScreenOn:Z

    const-wide/32 v0, 0x10000000

    .line 383
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->sendBackoffRequest(JZ)V

    goto :goto_82

    .line 375
    :cond_7f
    invoke-direct {p0}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->onReset()V

    .line 411
    :goto_82
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_86
    .packed-switch 0x64
        :pswitch_54
        :pswitch_1c
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist setAlwaysReportSignalStrength(Z)V
    .registers 2

    const-string p1, "ignore setAlwaysReportSignalStrength"

    .line 367
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemDeviceStateMonitor;->log(Ljava/lang/String;)V

    return-void
.end method
