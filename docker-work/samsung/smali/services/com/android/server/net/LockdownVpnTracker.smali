.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;,
        Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field public static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field public mAcceptedEgressIface:Ljava/lang/String;

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConfigIntent:Landroid/app/PendingIntent;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mProfile:Lcom/android/internal/net/VpnProfile;

.field public final mResetIntent:Landroid/app/PendingIntent;

.field public final mStateLock:Ljava/lang/Object;

.field public final mVpn:Lcom/android/server/connectivity/Vpn;

.field public final mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStateLock(Lcom/android/server/net/LockdownVpnTracker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleStateChangedLocked(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .registers 7

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;Lcom/android/server/net/LockdownVpnTracker$NetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    .line 72
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;-><init>(Lcom/android/server/net/LockdownVpnTracker;Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 136
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 137
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 139
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p4

    check-cast p2, Lcom/android/internal/net/VpnProfile;

    iput-object p4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 140
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 142
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.VPN_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    const/high16 p4, 0x4000000

    .line 143
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 146
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 147
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final handleStateChangedLocked()V
    .registers 11

    .line 157
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1e

    move v6, v4

    goto :goto_1f

    :cond_1e
    move v6, v5

    :goto_1f
    if-eqz v1, :cond_2f

    .line 165
    iget-object v7, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 166
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v5

    :cond_2f
    :goto_2f
    const/4 v5, 0x0

    if-nez v1, :cond_34

    move-object v7, v5

    goto :goto_38

    .line 169
    :cond_34
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    .line 170
    :goto_38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleStateChanged: egress="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LockdownVpnTracker"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_5d

    if-eqz v4, :cond_64

    .line 173
    :cond_5d
    iput-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    :cond_64
    if-eqz v6, :cond_6a

    .line 177
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    return-void

    .line 182
    :cond_6a
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_a8

    .line 183
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v2

    const v3, 0x1040eed

    const v4, 0x1080c14

    if-nez v2, :cond_87

    const-string v0, "Invalid VPN profile; requires IP-based server and DNS"

    .line 184
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    return-void

    :cond_87
    const-string v2, "Active network connected; starting VPN"

    .line 189
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x1040eeb

    .line 190
    invoke-virtual {p0, v2, v4}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 192
    iput-object v7, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 211
    :try_start_94
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/net/Network;Landroid/net/LinkProperties;)V
    :try_end_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_9b} :catch_9c

    goto :goto_dd

    :catch_9c
    move-exception v0

    .line 213
    iput-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    const-string v1, "Failed to start VPN"

    .line 214
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto :goto_dd

    .line 217
    :cond_a8
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_dd

    if-eqz v3, :cond_dd

    .line 218
    iget-object v0, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 219
    iget-object v1, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN connected using iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceAddr="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x1040eea

    const v1, 0x1080c13

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public final hideNotification()V
    .registers 3

    .line 304
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public init()V
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 230
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final initLocked()V
    .registers 4

    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "initLocked()"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 241
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 242
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 243
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 244
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public reset()V
    .registers 3

    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 282
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final showNotification(II)V
    .registers 6

    .line 286
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const-string v2, "VPN"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v0, 0x1040ee9

    .line 291
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 292
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 293
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v0, 0x1040b87

    .line 294
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    const v1, 0x1080519

    invoke-virtual {p1, v1, p2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v0, 0x106001c

    .line 296
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 299
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 300
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v0, 0x14

    .line 299
    invoke-virtual {p0, p2, v0, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 252
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final shutdownLocked()V
    .registers 3

    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "shutdownLocked()"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mDefaultNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpnNetworkCallback:Lcom/android/server/net/LockdownVpnTracker$VpnNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerPrivileged()V

    .line 264
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setLegacyLockdownVpnEnabled(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 268
    iget-object p0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    return-void
.end method
