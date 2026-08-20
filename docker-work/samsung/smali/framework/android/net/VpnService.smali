.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Builder;,
        Landroid/net/VpnService$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist FAST_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.fast"

.field private static final blacklist KNOXGUARD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final whitelist SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"

.field private static final blacklist SYSTEM_VPN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VpnService"

.field private static blacklist mIsKGClientPackageInstalled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmIsKGClientPackageInstalled()Z
    .registers 1

    sget-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheck(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckNonPrefixBytes(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->checkNonPrefixBytes(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/net/IVpnManager;
    .registers 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 209
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/VpnService;->DBG:Z

    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static greylist-max-o check(Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 585
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_32

    .line 588
    instance-of v0, p0, Ljava/net/Inet4Address;

    const-string v1, "Bad prefixLength"

    if-eqz v0, :cond_19

    .line 589
    if-ltz p1, :cond_13

    const/16 v0, 0x20

    if-gt p1, v0, :cond_13

    goto :goto_23

    .line 590
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_19
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2a

    .line 593
    if-ltz p1, :cond_24

    const/16 v0, 0x80

    if-gt p1, v0, :cond_24

    .line 599
    :goto_23
    return-void

    .line 594
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkNonPrefixBytes(Ljava/net/InetAddress;I)V
    .registers 5
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "prefixLength"    # I

    .line 602
    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0, p1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 603
    .local v0, "prefix":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 606
    return-void

    .line 604
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getService()Landroid/net/IVpnManager;
    .registers 1

    .line 205
    nop

    .line 206
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isKGClientPackageInstalled(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 242
    const-string v0, "com.samsung.android.kgclient"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 244
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    :try_start_7
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 245
    const-string v3, "android"

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_10} :catch_14

    if-nez v0, :cond_13

    .line 246
    return v2

    .line 250
    :cond_13
    goto :goto_1c

    .line 248
    :catch_14
    move-exception v0

    .line 249
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VpnService"

    const-string v3, "Exception occured while calling packageManager.getPackageInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isSecureWifiPackage(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.fast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    .line 163
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_1a
    const-string v1, "VpnService"

    const-string v2, "Secure Wi-Fi signature mismatched"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist prepare(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 280
    invoke-static {p0}, Landroid/net/VpnService;->isKGClientPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/VpnService;->mIsKGClientPackageInstalled:Z

    .line 307
    :cond_9
    invoke-static {p0}, Landroid/net/VpnService;->isSecureWifiPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 308
    invoke-static {}, Landroid/net/VpnService;->prepareAndAuthorizeVpnForFast()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 312
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_29

    if-eqz v0, :cond_28

    .line 313
    return-object v3

    .line 317
    :cond_28
    goto :goto_2a

    .line 315
    :catch_29
    move-exception v0

    .line 318
    :goto_2a
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist prepareAndAuthorize(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 338
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    .line 339
    .local v0, "vm":Landroid/net/IVpnManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "packageName":Ljava/lang/String;
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 343
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 344
    invoke-interface {v0, v3, v1, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 346
    :cond_16
    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 349
    .end local v2    # "userId":I
    goto :goto_1c

    .line 347
    :catch_1b
    move-exception v2

    .line 350
    :goto_1c
    return-void
.end method

.method private static blacklist prepareAndAuthorizeVpnForFast()Landroid/content/Intent;
    .registers 5

    .line 225
    const-string v0, "com.samsung.android.fast"

    :try_start_2
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v1

    .line 227
    .local v1, "vm":Landroid/net/IVpnManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 228
    .local v2, "userId":I
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 229
    invoke-interface {v1, v3, v0, v2}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 231
    :cond_14
    const/4 v4, 0x1

    invoke-interface {v1, v0, v2, v4}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    .line 232
    return-object v3

    .line 233
    .end local v1    # "vm":Landroid/net/IVpnManager;
    .end local v2    # "userId":I
    :catch_19
    move-exception v0

    .line 236
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addAddress(Ljava/net/InetAddress;I)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 429
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 431
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IVpnManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 432
    :catch_10
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist isAlwaysOn()Z
    .registers 3

    .line 515
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 516
    :catch_9
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist isLockdownEnabled()Z
    .registers 3

    .line 530
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 531
    :catch_9
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 546
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.VpnService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 547
    new-instance v1, Landroid/net/VpnService$Callback;

    invoke-direct {v1, p0, v0}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService$Callback-IA;)V

    return-object v1

    .line 549
    :cond_15
    return-object v0
.end method

.method public whitelist onRevoke()V
    .registers 1

    .line 564
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 565
    return-void
.end method

.method public whitelist protect(I)Z
    .registers 4
    .param p1, "socket"    # I

    .line 379
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 382
    :catch_5
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist protect(Ljava/net/DatagramSocket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .line 406
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public whitelist protect(Ljava/net/Socket;)Z
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .line 395
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/VpnService;->protect(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o removeAddress(Ljava/net/InetAddress;I)Z
    .registers 5
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 459
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 461
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/IVpnManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 462
    :catch_10
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 4
    .param p1, "networks"    # [Landroid/net/Network;

    .line 501
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 502
    :catch_9
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
