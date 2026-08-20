.class public Lcom/android/server/slice/SliceManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mService:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 675
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-static {p0}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$msystemReady(Lcom/android/server/slice/SliceManagerService;)V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 668
    new-instance v0, Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    const-string/jumbo v1, "slice"

    .line 669
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 686
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$monStopUser(Lcom/android/server/slice/SliceManagerService;I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 681
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$monUnlockUser(Lcom/android/server/slice/SliceManagerService;I)V

    return-void
.end method
