.class public Lcom/android/server/location/LocationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;
    }
.end annotation


# instance fields
.field public final mService:Lcom/android/server/location/LocationManagerService;

.field public final mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

.field public final mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    .line 236
    new-instance v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-direct {v1, p1, v0}, Lcom/android/server/location/LocationManagerService$SystemInjector;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/UserInfoHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 237
    new-instance v0, Lcom/android/server/location/LocationManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_f

    .line 254
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mSystemInjector:Lcom/android/server/location/LocationManagerService$SystemInjector;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$SystemInjector;->onSystemReady()V

    .line 255
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->onSystemReady()V

    goto :goto_18

    :cond_f
    const/16 v0, 0x258

    if-ne p1, v0, :cond_18

    .line 259
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->onSystemThirdPartyAppsCanStart()V

    :cond_18
    :goto_18
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mService:Lcom/android/server/location/LocationManagerService;

    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 245
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 247
    invoke-static {}, Landroid/location/LocationManager;->disableLocalLocationEnabledCaches()V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->onUserStarted(I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->onUserStopped(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 270
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle;->mUserInfoHelper:Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 271
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->onCurrentUserChanged(II)V

    return-void
.end method
