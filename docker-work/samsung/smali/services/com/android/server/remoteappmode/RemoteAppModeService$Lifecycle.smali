.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "RemoteAppModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/RemoteAppModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public mService:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    if-eqz p0, :cond_7

    .line 189
    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monBootPhase(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 182
    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/remoteappmode/RemoteAppModeService;-><init>(Landroid/content/Context;Lcom/android/server/remoteappmode/RemoteAppModeService-IA;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    const-string/jumbo v1, "remoteappmode"

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monUserStarting(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monUserStopped(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monUserStopping(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 205
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monUserSwitching(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 200
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->-$$Nest$monUserUnlocking(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V

    return-void
.end method
