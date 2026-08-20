.class public Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;
.super Ljava/lang/Object;
.source "PrintManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 3

    .line 1015
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1018
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1021
    :cond_f
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1022
    :try_start_16
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iget p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 1025
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_28

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    return-void

    :catchall_28
    move-exception p0

    .line 1025
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method
