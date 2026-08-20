.class public final Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MultiControlManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/multicontrol/MultiControlManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public mService:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    if-eqz p0, :cond_7

    .line 102
    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monBootPhase(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 95
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/multicontrol/MultiControlManagerService;-><init>(Landroid/content/Context;Lcom/android/server/multicontrol/MultiControlManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    const-string/jumbo v1, "multicontrol"

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserStarting(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserStopped(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserStopping(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 118
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserSwitching(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$Lifecycle;->mService:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->-$$Nest$monUserUnlocking(Lcom/android/server/multicontrol/MultiControlManagerService;I)V

    return-void
.end method
