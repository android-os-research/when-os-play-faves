.class public final Lcom/android/server/rollback/RollbackManagerService;
.super Lcom/android/server/SystemService;
.source "RollbackManagerService.java"


# instance fields
.field public mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_9

    .line 55
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onBootCompleted()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 42
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    const-string/jumbo v1, "rollback"

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    const-class v0, Lcom/android/server/rollback/RollbackManagerInternal;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onUnlockUser(I)V

    return-void
.end method
