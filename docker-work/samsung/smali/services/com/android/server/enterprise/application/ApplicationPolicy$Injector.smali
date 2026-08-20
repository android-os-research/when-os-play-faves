.class public Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
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

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationIconDb()Lcom/android/server/enterprise/application/ApplicationIconDb;
    .registers 2

    .line 720
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationIconDb;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getApplicationUsageInstance()Lcom/android/server/enterprise/application/ApplicationUsage;
    .registers 2

    .line 724
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 728
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
    .registers 2

    .line 712
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getIPackageManagerInstance()Landroid/content/pm/IPackageManager;
    .registers 1

    const-string/jumbo p0, "package"

    .line 696
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerAdapterInstance()Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 1

    .line 704
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInstance()Landroid/content/pm/PackageManager;
    .registers 1

    .line 700
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPersonaManagerAdapterInstance()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 708
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public getRuntimePermissionUtils()Lcom/android/server/enterprise/application/RuntimePermissionUtils;
    .registers 1

    .line 736
    new-instance p0, Lcom/android/server/enterprise/application/RuntimePermissionUtils;

    invoke-direct {p0}, Lcom/android/server/enterprise/application/RuntimePermissionUtils;-><init>()V

    return-object p0
.end method

.method public getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 716
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 732
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method
