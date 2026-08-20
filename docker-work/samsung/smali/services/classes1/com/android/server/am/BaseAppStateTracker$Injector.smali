.class public Lcom/android/server/am/BaseAppStateTracker$Injector;
.super Ljava/lang/Object;
.source "BaseAppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/am/BaseAppStatePolicy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

.field public mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPermissionManager:Landroid/permission/PermissionManager;

.field public mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 324
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method public getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    return-object p0
.end method

.method public getIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method public getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method public getNotificationManagerInternal()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 355
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPermissionManager()Landroid/permission/PermissionManager;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    return-object p0
.end method

.method public getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getPolicy()Lcom/android/server/am/BaseAppStatePolicy;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 336
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-object p0
.end method

.method public getRoleManager()Landroid/app/role/RoleManager;
    .registers 1

    .line 383
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public getServiceStartForegroundTimeout()J
    .registers 3

    .line 379
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getServiceStartForegroundTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 301
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 302
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 303
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 304
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mDeviceIdleInternal:Lcom/android/server/DeviceIdleInternal;

    .line 305
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 306
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 307
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 309
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 311
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 312
    const-class v1, Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 313
    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager;

    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 314
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mRoleManager:Landroid/app/role/RoleManager;

    .line 315
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    const-string v0, "appops"

    .line 318
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    return-void
.end method

.method public setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-void
.end method
