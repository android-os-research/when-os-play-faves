.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEnterpriseDeviceManagerInstance()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxFirewallHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;
    .registers 1

    .line 313
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxVpnApiValidationInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxVpnServiceInstance(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;
    .registers 2

    .line 305
    invoke-static {p1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxVpnStorageProviderInstance()Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object p0

    return-object p0
.end method

.method public getVpnInfoPolicyInstance()Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;
    .registers 1

    const-string/jumbo p0, "vpn_policy"

    .line 321
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IVpnInfoPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getVpnManagerServiceInstance()Landroid/net/IVpnManager;
    .registers 1

    const-string/jumbo p0, "vpn_management"

    .line 317
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object p0

    return-object p0
.end method

.method public getVpnProfileConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 1

    .line 297
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p0

    return-object p0
.end method
