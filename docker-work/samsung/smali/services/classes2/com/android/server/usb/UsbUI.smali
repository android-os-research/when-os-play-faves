.class public Lcom/android/server/usb/UsbUI;
.super Ljava/lang/Object;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbUI$NotificationWrapper;,
        Lcom/android/server/usb/UsbUI$UsbUIHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final INSTANT_DELAY:I = 0xbb8

.field public static final MSG_CANCEL_NOTI:I = 0x4

.field public static final MSG_ENQUEUE_NOTI:I = 0x2

.field public static final MSG_MAKE_LONG_TOAST:I = 0x1

.field public static final MSG_MAKE_SHORT_TOAST:I = 0x0

.field public static final MSG_NOTIFY_NOTI:I = 0x3

.field public static final MSG_UPDATE_LOCALE:I = 0x5

.field public static final OP_ALERT_ONCE:J = 0x4L

.field public static final OP_CHANNEL_ALERTS:J = 0x8L

.field public static final OP_INSTANT:J = 0x1L

.field public static final OP_NONE:J = 0x0L

.field public static final OP_ONGOING:J = 0x2L

.field public static final OP_PRIORITY_HIGH:J = 0x40L

.field public static final OP_PRIORITY_LOW:J = 0x10L

.field public static final OP_PRIORITY_MAX:J = 0x80L

.field public static final OP_PRIORITY_MIN:J = 0x20L

.field public static final OP_USB_CHANNEL_IMPORTANCE_LOW:J = 0x100L

.field public static final SETTABLE_OPTIONS:J = 0x1ffL

.field public static final TAG:Ljava/lang/String; = "UsbUI"

.field public static final USB_CCIC_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field public static final USB_CCIC_WATER_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/water"

.field public static final USB_CONTROL_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_notify/usb_control"

.field public static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"

.field public static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field public static final USB_TYPEC_PORT_PATH:Ljava/lang/String; = "/sys/class/typec"

.field public static final WET_DETECT_LOG_PATH:Ljava/lang/String; = "/data/log/wet_detect.log"


# instance fields
.field public isSupportWirelessCharging:Z

.field public final mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

.field public mBootCompleted:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

.field public final mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

.field public final mHostInterfaceObserver:Landroid/os/UEventObserver;

.field public final mHostPathObserver:Landroid/os/UEventObserver;

.field public mIsEmergencyMode:Z

.field public mIsHiccupState:Z

.field public mIsHostConnected:Z

.field public mIsUsbPortWet:Z

.field public final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field public final mLoggingLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mPortReceiver:Landroid/content/BroadcastReceiver;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSourcePower:Z

.field public mSupportDualRole:Z

.field public mSystemReady:Z

.field public final mUsbCcicObserver:Landroid/os/UEventObserver;

.field public final mUsbControlObserver:Landroid/os/UEventObserver;

.field public final mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetisSupportWirelessCharging(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEmergencyMode(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsHiccupState(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsHostConnected(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportDualRole(Lcom/android/server/usb/UsbUI;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsEmergencyMode(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHiccupState(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHostConnected(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsUsbPortWet(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSourcePower(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAllHostNotification(Lcom/android/server/usb/UsbUI;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->cancelAllHostNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/usb/UsbUI;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloggingUsbWetDetection(Lcom/android/server/usb/UsbUI;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->makeLongToast(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUsbInterface(Lcom/android/server/usb/UsbUI;Ljava/lang/String;III)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUsbWetDetection(Lcom/android/server/usb/UsbUI;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIIJ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/usb/UsbUI;->postNotification(IIIIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOnDisplay(Lcom/android/server/usb/UsbUI;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateChangedLocale(Lcom/android/server/usb/UsbUI;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->updateChangedLocale()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisIncludeOption(JJ)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 15

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    .line 181
    new-instance v1, Lcom/android/server/usb/UsbUI$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v2, Lcom/android/server/usb/UsbUI$2;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbUI$2;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbUI;->mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v3, Lcom/android/server/usb/UsbUI$3;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbUI$3;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbUI;->mPortReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v4, Lcom/android/server/usb/UsbUI$4;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbUI$4;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbUI;->mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    new-instance v5, Lcom/android/server/usb/UsbUI$5;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbUI$5;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbUI;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v6, Lcom/android/server/usb/UsbUI$6;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v6, p0, Lcom/android/server/usb/UsbUI;->mHostPathObserver:Landroid/os/UEventObserver;

    .line 353
    new-instance v7, Lcom/android/server/usb/UsbUI$7;

    invoke-direct {v7, p0}, Lcom/android/server/usb/UsbUI$7;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v7, p0, Lcom/android/server/usb/UsbUI;->mHostInterfaceObserver:Landroid/os/UEventObserver;

    .line 429
    new-instance v8, Lcom/android/server/usb/UsbUI$8;

    invoke-direct {v8, p0}, Lcom/android/server/usb/UsbUI$8;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v8, p0, Lcom/android/server/usb/UsbUI;->mUsbControlObserver:Landroid/os/UEventObserver;

    .line 460
    new-instance v9, Lcom/android/server/usb/UsbUI$9;

    invoke-direct {v9, p0}, Lcom/android/server/usb/UsbUI$9;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v9, p0, Lcom/android/server/usb/UsbUI;->mUsbCcicObserver:Landroid/os/UEventObserver;

    .line 571
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    .line 119
    new-instance v10, Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-direct {v10, p0, p2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;-><init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const-string/jumbo p2, "power"

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    const/4 v10, 0x1

    const-string v11, "UsbUI"

    .line 123
    invoke-virtual {p2, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 126
    new-instance p2, Ljava/io/File;

    const-string v0, "/sys/class/typec"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    const-string p0, "DEVPATH=/devices/virtual/host_notify"

    .line 129
    invoke-virtual {v6, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVTYPE=usb_interface"

    .line 130
    invoke-virtual {v7, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVPATH=/devices/virtual/sec/ccic"

    .line 131
    invoke-virtual {v9, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    .line 132
    invoke-virtual {v8, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 134
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static areSettableOptions(J)Z
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_10

    const-wide/16 v2, -0x200

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-nez p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static isIncludeOption(JJ)Z
    .registers 4

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method


# virtual methods
.method public bootCompleted()V
    .registers 9

    const-string v0, "UsbUI"

    const-string v1, "boot completed"

    .line 163
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 167
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 168
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 170
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_21

    .line 172
    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    .line 175
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    .line 176
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    const-string v7, "add"

    .line 173
    invoke-virtual {p0, v7, v5, v6, v4}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_4c
    return-void
.end method

.method public final cancelAllHostNotification()V
    .registers 2

    const/16 v0, 0x70

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const/16 v0, 0x71

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method public final cancelNotification(I)V
    .registers 3

    .line 663
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_e

    .line 664
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    :cond_e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 4

    const-string p1, "UsbUI:"

    .line 964
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSystemReady="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mBootCompleted="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSupportDualRole="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsEmergencyMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsHostConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSourcePower="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsHiccupState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsUsbPortWet="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isUsbWet()Z
    .registers 5

    const-string p0, "UsbUI"

    const/4 v0, 0x0

    .line 575
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/ccic/water"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    .line 577
    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsbWet: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    .line 579
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_37

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    return p0

    :catch_37
    move-exception v1

    const-string v2, "Can\'t read /sys/class/sec/ccic/water"

    .line 584
    invoke-static {p0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3d
    return v0
.end method

.method public final loggingUsbWetDetection(Ljava/lang/String;)V
    .registers 8

    .line 590
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    .line 594
    :try_start_4
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd/HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 598
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/wet_detect.log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 599
    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 602
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_4c
    .catchall {:try_start_4 .. :try_end_29} :catchall_4a

    :try_start_29
    const-string v0, "%s %s%n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object p1, v2, v4

    .line 603
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_39} :catch_48
    .catchall {:try_start_29 .. :try_end_39} :catchall_45

    .line 609
    :try_start_39
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_6e

    goto :goto_5e

    :catch_3d
    :try_start_3d
    const-string p1, "UsbUI"

    const-string v0, "Can\'t close stream"

    .line 611
    :goto_41
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_6e

    goto :goto_5e

    :catchall_45
    move-exception p1

    move-object v0, v5

    goto :goto_60

    :catch_48
    move-object v0, v5

    goto :goto_4c

    :catchall_4a
    move-exception p1

    goto :goto_60

    :catch_4c
    :goto_4c
    :try_start_4c
    const-string p1, "UsbUI"

    const-string v1, "Can\'t write to /data/log/wet_detect.log"

    .line 605
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_4a

    if-eqz v0, :cond_5e

    .line 609
    :try_start_55
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_6e

    goto :goto_5e

    :catch_59
    :try_start_59
    const-string p1, "UsbUI"

    const-string v0, "Can\'t close stream"

    goto :goto_41

    .line 615
    :cond_5e
    :goto_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_6e

    return-void

    :goto_60
    if-eqz v0, :cond_6d

    .line 609
    :try_start_62
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66
    .catchall {:try_start_62 .. :try_end_65} :catchall_6e

    goto :goto_6d

    :catch_66
    :try_start_66
    const-string v0, "UsbUI"

    const-string v1, "Can\'t close stream"

    .line 611
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_6d
    :goto_6d
    throw p1

    :catchall_6e
    move-exception p1

    .line 615
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public final makeLongToast(I)V
    .registers 3

    .line 642
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_a

    .line 643
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    :cond_a
    return-void
.end method

.method public final makeShortToast(I)V
    .registers 3

    .line 636
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_a

    .line 637
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    :cond_a
    return-void
.end method

.method public final notifyIncreaseBatteryUsage(Z)V
    .registers 8

    if-eqz p1, :cond_15

    const p1, 0x1040e80

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->makeShortToast(I)V

    const/16 v1, 0x6b

    const/4 v2, 0x0

    const v3, 0x1040e80

    const-wide/16 v4, 0x8a

    move-object v0, p0

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_1a

    :cond_15
    const/16 p1, 0x6b

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    :goto_1a
    return-void
.end method

.method public final notifyUsbInterface(Ljava/lang/String;III)V
    .registers 14

    const-string v0, "add"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "remove"

    if-nez v1, :cond_12

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 505
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v3

    const/4 p3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, p3

    const-string p3, "notifyUsbInterface: [%d, %d, %d]"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "UsbUI"

    .line 504
    invoke-static {p4, p3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x6

    if-eq p2, p3, :cond_3d

    const/16 p4, 0x8

    if-eq p2, p4, :cond_3d

    goto :goto_40

    .line 510
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    .line 515
    :goto_40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_55

    if-ne p2, p3, :cond_6e

    const/16 v4, 0x7c

    const v5, 0x1040e6b

    const/4 v6, 0x0

    const-wide/16 v7, 0x2

    move-object v3, p0

    .line 517
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_6e

    .line 522
    :cond_55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    if-ne p2, p3, :cond_6e

    const/16 p1, 0x7c

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const/16 v1, 0x6f

    const v2, 0x1040e6c

    const/4 v3, 0x0

    const-wide/16 v4, 0x3

    move-object v0, p0

    .line 525
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final notifyUsbWetDetection(Z)V
    .registers 15

    if-eqz p1, :cond_3c

    .line 549
    iget-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const v0, 0x1040ec1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 550
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    .line 551
    invoke-static {v0, v4, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    const/16 v6, 0x66

    const v7, 0x1040ec2

    const v8, 0x1040ebf

    const v9, 0x1080a7d

    .line 556
    new-instance v10, Landroid/app/Notification$Action;

    invoke-direct {v10, v4, p1, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-wide/16 v11, 0xe

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usb/UsbUI;->postNotification(IIIILandroid/app/Notification$Action;J)V

    const-string p1, "WD"

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    goto :goto_46

    :cond_3c
    const/16 p1, 0x66

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const-string p1, "DD"

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method public final postNotification(IIIIJ)V
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    .line 654
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotification(IIIILandroid/app/Notification$Action;J)V
    .registers 8

    .line 659
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotification(IIIJ)V
    .registers 14

    const v4, 0x1080aa6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v6, p4

    .line 649
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotificationInternal(IIIILandroid/app/Notification$Action;J)V
    .registers 19

    move-object v8, p0

    move v9, p1

    .line 670
    invoke-static/range {p6 .. p7}, Lcom/android/server/usb/UsbUI;->areSettableOptions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 671
    new-instance v10, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbUI$NotificationWrapper;-><init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/Notification$Action;J)V

    .line 673
    iget-boolean v0, v8, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_40

    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_40

    .line 674
    invoke-static {v10}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetinstant(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {v10}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetongoing(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_39

    .line 678
    :cond_2c
    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_5d

    .line 675
    :cond_39
    :goto_39
    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v10}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(IILjava/lang/Object;)V

    goto :goto_5d

    .line 681
    :cond_40
    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    move v1, p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before system ready: title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-void
.end method

.method public systemReady()V
    .registers 6

    const-string v0, "UsbUI"

    const-string/jumbo v1, "system ready"

    .line 147
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->isUsbWet()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 154
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    .line 158
    :cond_22
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string v3, "emergency_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v4

    :goto_30
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return-void
.end method

.method public final turnOnDisplay()V
    .registers 6

    const-string v0, "UsbUI"

    const-string/jumbo v1, "turnOnDisplay()"

    .line 534
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_11

    const-wide/16 v2, 0x1770

    .line 536
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 538
    :cond_11
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_27

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 541
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_27
    return-void
.end method

.method public final updateChangedLocale()V
    .registers 2

    .line 687
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
