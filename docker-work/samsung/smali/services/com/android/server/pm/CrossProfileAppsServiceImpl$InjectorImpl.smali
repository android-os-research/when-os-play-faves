.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
.super Ljava/lang/Object;
.source "CrossProfileAppsServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InjectorImpl"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .registers 5

    .line 901
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public clearCallingIdentity()J
    .registers 3

    .line 835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 875
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 880
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 870
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getCallingPid()I
    .registers 1

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public getCallingUid()I
    .registers 1

    .line 815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getCallingUserId()I
    .registers 1

    .line 825
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    return p0
.end method

.method public getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    .line 890
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 885
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 865
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 860
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 855
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public killUid(I)V
    .registers 3

    .line 907
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 908
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo v0, "permissions revoked"

    .line 906
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void
.end method

.method public restoreCallingIdentity(J)V
    .registers 3

    .line 840
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3

    .line 895
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 850
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 2

    .line 845
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
