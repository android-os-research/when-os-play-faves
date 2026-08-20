.class public Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;
.super Ljava/lang/Object;
.source "SemWifiApDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;
    }
.end annotation


# static fields
.field private static final IT_POLICY_NOT_ALLOW_OPEN_WIFIAP:I = 0x1

.field private static final IT_POLICY_NOT_ALLOW_WIFIAP:I = 0x2

.field private static TAG:Ljava/lang/String; = "SemWifiApDevicePolicyManager"


# instance fields
.field private MHSDBG:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mDPMReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiOnly:I

.field private mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

.field private mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleSecurityPolicyMHS(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->handleSecurityPolicyMHS()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->MHSDBG:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    .line 199
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPMReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->registerReceiver()V

    .line 60
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mCm:Landroid/net/ConnectivityManager;

    .line 115
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_20

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 118
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_30

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    :cond_30
    return-void
.end method

.method private handleSecurityPolicyMHS()V
    .registers 5

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowInternetSharingDpm()Z

    move-result v0

    .line 171
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicyMHS()   allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_38

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_38

    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 176
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->sendEmptyMessage(I)Z

    :cond_38
    return-void
.end method

.method private isAllowInternetSharingDpm()Z
    .registers 5

    const-string v0, "Failed getting userId using ActivityManagerNative"

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->checkAndSetConnectivityInstance()V

    const/4 v1, 0x0

    .line 136
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_18
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_1f

    :catch_11
    move-exception v2

    .line 140
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_18
    move-exception v2

    .line 138
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    move v0, v1

    .line 143
    :goto_1f
    :try_start_1f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_2f

    .line 145
    :catch_27
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed getting Hotspot policy from DEVICE_POLICY_SERVICE"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_2f
    if-nez p0, :cond_48

    .line 148
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allow to use Hotspot (DPM) userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_48
    const/4 p0, 0x1

    return p0
.end method

.method private isAllowToUseHotspot3lm()Z
    .registers 3

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "tethering_blocked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method private registerReceiver()V
    .registers 7

    .line 193
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 194
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 195
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mDPMReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public isAllowToUseHotspot()Z
    .registers 3

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isWifiOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 156
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v0, "Do not accept turn on Wifi hotspot in Wifi model"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 159
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowInternetSharingDpm()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 160
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->sendEmptyMessage(I)Z

    return v1

    .line 163
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->isAllowToUseHotspot3lm()Z

    move-result p0

    if-nez p0, :cond_23

    return v1

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method public isOpenWifiApAllowed(I)Z
    .registers 4

    .line 182
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isNotAllowedOpenMobileHotspot(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mToastHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager$ToastHandler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return p0

    :cond_14
    return v1
.end method

.method public isWifiOnly()Z
    .registers 5

    .line 100
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1c

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    goto :goto_1e

    .line 105
    :cond_1c
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 108
    :cond_1e
    :goto_1e
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    if-ne p0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public isWifiOnlySystemProperty()Z
    .registers 8

    .line 84
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5f

    const-string v0, "ro.carrier"

    const-string v3, "Unknown"

    .line 85
    invoke-static {v0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ro.radio.noril"

    const-string v4, "no"

    .line 86
    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi-only"

    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_3a

    .line 91
    :cond_30
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 92
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "isWifiOnly = false"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 88
    :cond_3a
    :goto_3a
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", noRIL: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isWifiOnly = true"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    .line 95
    :cond_5f
    :goto_5f
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApDevicePolicyManager;->mIsWifiOnly:I

    if-ne p0, v2, :cond_64

    move v1, v2

    :cond_64
    return v1
.end method

.method public isWifiStateChangeAllowed(I)Z
    .registers 2

    .line 189
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isWifiStateChangeAllowed(I)Z

    move-result p0

    return p0
.end method
