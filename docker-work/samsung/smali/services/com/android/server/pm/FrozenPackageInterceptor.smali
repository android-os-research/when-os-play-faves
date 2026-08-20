.class public final Lcom/android/server/pm/FrozenPackageInterceptor;
.super Ljava/lang/Object;
.source "FrozenPackageInterceptor.java"


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final mContext:Landroid/content/Context;

.field public final mPMInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPMInternal(Lcom/android/server/pm/FrozenPackageInterceptor;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mPMInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misPackageBeingInstalled(Lcom/android/server/pm/FrozenPackageInterceptor;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/FrozenPackageInterceptor;->isPackageBeingInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/server/pm/FrozenPackageInterceptor$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/FrozenPackageInterceptor$1;-><init>(Lcom/android/server/pm/FrozenPackageInterceptor;)V

    iput-object v0, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 43
    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mContext:Landroid/content/Context;

    .line 44
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mPMInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method


# virtual methods
.method public final isPackageBeingInstalled(Ljava/lang/String;)Z
    .registers 4

    .line 75
    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 78
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 79
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public registerListeners()V
    .registers 3

    .line 69
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    const/4 v1, 0x5

    .line 70
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    return-void
.end method
