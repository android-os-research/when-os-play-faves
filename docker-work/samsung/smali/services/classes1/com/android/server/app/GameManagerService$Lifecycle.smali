.class public Lcom/android/server/app/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mService:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 758
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 773
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService;->onBootCompleted()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 763
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 764
    new-instance v1, Lcom/android/server/app/GameManagerService;

    invoke-direct {v1, v0}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    const-string v0, "game"

    .line 765
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterDeviceConfigListener(Lcom/android/server/app/GameManagerService;)V

    .line 767
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mregisterPackageReceiver(Lcom/android/server/app/GameManagerService;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 779
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 794
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 784
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
