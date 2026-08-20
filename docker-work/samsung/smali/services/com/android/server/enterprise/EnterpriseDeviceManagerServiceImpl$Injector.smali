.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
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

    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2193
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public SecContentProviderNotifyPolicyChangesAsUser(Ljava/lang/String;I)V
    .registers 3

    .line 2302
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V
    .registers 3

    .line 2294
    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseService;->addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    return-void
.end method

.method public addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V
    .registers 3

    .line 2232
    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseService;->addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V

    return-void
.end method

.method public getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .line 2248
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getConstrainedState()Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 1

    .line 2298
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object p0

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 2278
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getDpmInstance()Landroid/app/admin/IDevicePolicyManager;
    .registers 1

    const-string p0, "device_policy"

    .line 2201
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public getEnterpriseLicenseManager()Lcom/samsung/android/knox/license/IEnterpriseLicense;
    .registers 1

    const-string p0, "enterprise_license_policy"

    .line 2205
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    return-object p0
.end method

.method public getEnterpriseLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 3

    .line 2244
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getPackageManagerInstance()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    return-object v0
.end method

.method public getHdmService()Lcom/android/server/enterprise/hdm/HdmService;
    .registers 2

    .line 2266
    new-instance v0, Lcom/android/server/enterprise/hdm/HdmService;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/hdm/HdmService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPackageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 1

    .line 2213
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInstance()Landroid/content/pm/IPackageManager;
    .registers 1

    const-string/jumbo p0, "package"

    .line 2197
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPasswordPolicy()Lcom/android/server/enterprise/security/PasswordPolicy;
    .registers 2

    .line 2270
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPersonaManagerAdapterInstance()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 2224
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneRestrictionPolicy()Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .registers 2

    .line 2256
    new-instance v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getRemoteInjectionService()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
    .registers 2

    .line 2259
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getRestrictionPolicy()Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .registers 2

    .line 2262
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStorageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .registers 1

    .line 2216
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 2240
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSystemUIAdapterInstance()Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .registers 1

    .line 2209
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 1

    .line 2290
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public getWifiPolicy()Lcom/android/server/enterprise/wifi/WifiPolicy;
    .registers 2

    .line 2252
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWindowManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    .registers 1

    .line 2220
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public hasDeviceOwner()Z
    .registers 1

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->semGetDeviceOwner()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public invokeSystemReadyIfNeeded()V
    .registers 1

    .line 2306
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded()V

    return-void
.end method

.method public invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    .registers 3

    .line 2312
    invoke-static {p1, p2}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    return-void
.end method

.method public isFirmwareChanged()Z
    .registers 1

    .line 2236
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$sfgetmInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$misFirmwareChanged(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)Z

    move-result p0

    return p0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 1

    .line 2286
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method

.method public serviceManagerAddService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 2228
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public userHandleGetCallingUserId()I
    .registers 1

    .line 2274
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    return p0
.end method
