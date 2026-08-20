.class public Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;
.super Ljava/lang/Object;
.source "SemWifiApTimeOutImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;
    }
.end annotation


# static fields
.field public static final CMD_NO_ASSOCIATED_STATIONS_TIMEOUT:I = 0x1

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field public static final DEFAULT_TIMEOUT_MOBILEAP:I

.field public static final SOFT_AP_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String; = "SemWifiApTimeOutImpl Soft AP Send Message Timeout"

.field private static final TAG:Ljava/lang/String; = "SemWifiApTimeOutImpl"

.field private static final TURNOFF_HOTSPOT:I = 0x1040f4d

.field public static final TURNOFF_HOTSPOT_ACTION:Ljava/lang/String; = "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private NumOfClientsConnected:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mScheduled:Z

.field private mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

.field private final mSoftApReceiver:Landroid/content/BroadcastReceiver;

.field private final mSoftApReceiverFilter:Landroid/content/IntentFilter;

.field private mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

.field private mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mTimeoutvalue:I

.field private mUSBpuggedin:Z

.field private mWifiApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->cancelTimeoutMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConnectedDevicesNum(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->getConnectedDevicesNum()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->scheduleTimeoutMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigMobileApDefaultTimeOut"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->DEFAULT_TIMEOUT_MOBILEAP:I

    .line 72
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    const/16 v0, 0xb

    .line 60
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 67
    sget v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v3, v2, 0x3c

    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 69
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    .line 78
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    div-int/lit8 v0, v2, 0x3c

    const-string v1, "wifi_ap_timeout_setting"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x3c

    if-ltz p1, :cond_34

    if-le p1, v0, :cond_46

    :cond_34
    if-gez p1, :cond_39

    .line 82
    div-int/lit8 p1, v2, 0x3c

    goto :goto_3d

    :cond_39
    if-le p1, v0, :cond_3d

    .line 85
    div-int/lit8 p1, p1, 0x3c

    .line 87
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    :cond_46
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cancelTimeoutMessage()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    if-nez v1, :cond_9

    goto :goto_16

    :cond_9
    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const-string p0, "SemWifiApTimeOutImpl"

    const-string v0, "Timeout message canceled"

    .line 167
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return-void
.end method

.method private getConnectedDevicesNum()I
    .registers 3

    .line 172
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 175
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connected devices num from WifiApTetheredClientInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApTimeOutImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isPlugged(Landroid/content/Context;)Z
    .registers 3

    .line 304
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "plugged"

    const/4 v0, -0x1

    .line 305
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 309
    :cond_1e
    :goto_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPlugged:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiApTimeOutImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private scheduleTimeoutMessage()V
    .registers 7

    .line 143
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->cancelTimeoutMessage()V

    .line 147
    :cond_d
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    if-nez v0, :cond_17

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->getConnectedDevicesNum()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    .line 149
    :cond_17
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    if-eqz v0, :cond_9c

    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    if-gtz v0, :cond_9c

    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    const/16 v2, 0xd

    if-eq v0, v2, :cond_26

    goto :goto_9c

    :cond_26
    const/4 v0, -0x1

    const-string v2, "ro.product.first_api_level"

    .line 151
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device_first_api_level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApTimeOutImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_58

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v4, "ATT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_58

    return-void

    .line 155
    :cond_58
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "NEWCO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6a
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    if-nez v0, :cond_9c

    .line 156
    :cond_6e
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout message scheduled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "minutes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    const-string v0, "notification"

    .line 354
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 355
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    const p1, 0x1040f4d

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "====== SemWifiApTimeOutImpl dump ======= "

    .line 358
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mScheduled:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NumOfClientsConnected:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->NumOfClientsConnected:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUSBpuggedin:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mWifiApState:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiApState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mTimeoutvalue:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mTimeoutvalue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isTablet()Z
    .registers 2

    const-string p0, "ro.build.characteristics"

    .line 296
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mDeviceType:Ljava/lang/String;

    if-eqz p0, :cond_19

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_19

    .line 298
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mDeviceType:Ljava/lang/String;

    const-string v0, "tablet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public readSalesCode()Ljava/lang/String;
    .registers 3

    const-string p0, ""

    :try_start_2
    const-string v0, "ro.csc.sales_code"

    .line 317
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "ril.sales_code"

    .line 319
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string v0, "SemWifiApTimeOutImpl"

    const-string v1, "readSalesCode failed"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-object p0
.end method

.method public registerSoftApCallback()V
    .registers 6

    const-string v0, "SemWifiApTimeOutImpl"

    const-string v1, "registerSoftApCallback"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    .line 216
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->isPlugged(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    .line 218
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUSBpuggedin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mUSBpuggedin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 220
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_78

    const-string v1, "wifi"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 260
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    if-nez v0, :cond_5c

    .line 262
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 263
    :cond_5c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->register()V

    .line 264
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "SemWifiApTimeOutImpl Soft AP Send Message Timeout"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_78
    return-void
.end method

.method showTimeoutNotification(Landroid/content/Context;)V
    .registers 9

    const-string v0, "SemWifiApTimeOutImpl"

    const-string v1, "showing timeout notification for ATT"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f4d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_22

    const-string v2, "notification"

    .line 335
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 336
    :cond_22
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "wifiap_timeout_notification"

    invoke-direct {v2, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 337
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android"

    const-string v6, "com.samsung.android.server.wifi.ap.SemWifiApTimeOutImpl"

    .line 338
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    .line 339
    invoke-static {p1, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 341
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 342
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v2, :cond_4f

    .line 343
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 344
    :cond_4f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v2, 0x1

    .line 345
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 346
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const v0, 0x108008a

    .line 347
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 348
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public unRegisterSoftApCallback()V
    .registers 6

    const-string v0, "SemWifiApTimeOutImpl"

    const-string v1, "unregisterSoftApCallback"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 273
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mScheduled:Z

    .line 274
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    const-string v3, "Error : "

    if-eqz v2, :cond_36

    const-string v4, "wifi"

    .line 275
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 277
    :try_start_1d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApCallback:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApCallback;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_36

    :catch_23
    move-exception v2

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    if-eqz v2, :cond_3f

    .line 283
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;->unregister()V

    .line 284
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutEnabledSettingObserver:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$SoftApTimeoutEnabledSettingObserver;

    .line 286
    :cond_3f
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 287
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5e

    .line 289
    :try_start_45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_5e

    :catch_4b
    move-exception p0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    :goto_5e
    return-void
.end method
