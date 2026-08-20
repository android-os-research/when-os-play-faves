.class public Lcom/android/server/location/injector/SystemLocationPermissionsHelper;
.super Lcom/android/server/location/injector/LocationPermissionsHelper;
.source "SystemLocationPermissionsHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mInited:Z


# direct methods
.method public static synthetic $r8$lambda$LwFTRsaO4ioR_BnNZiZFYY0q6dU(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->lambda$onSystemReady$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$snAEYFdXwZADB6DZMv8JbB4hyvU(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->lambda$onSystemReady$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V
    .registers 3

    .line 37
    invoke-direct {p0, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;-><init>(Lcom/android/server/location/injector/AppOpsHelper;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onSystemReady$0(I)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_7

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper;->sendPermissionsChange(I)V

    .line 56
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->notifyLocationPermissionsChanged(I)V

    return-void
.end method

.method private synthetic lambda$onSystemReady$1(I)V
    .registers 4

    .line 50
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hasPermission(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
    .registers 6

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 66
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    .line 67
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    .line 66
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1b

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 69
    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 43
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    if-eqz v0, :cond_5

    return-void

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    return-void
.end method
