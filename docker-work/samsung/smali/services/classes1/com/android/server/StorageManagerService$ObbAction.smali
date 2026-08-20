.class public abstract Lcom/android/server/StorageManagerService$ObbAction;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ObbAction"
.end annotation


# instance fields
.field public mObbState:Lcom/android/server/StorageManagerService$ObbState;

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 3

    .line 4931
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4932
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V
    .registers 2

    .line 4939
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbAction;->handleExecute()V
    :try_end_3
    .catch Lcom/android/server/StorageManagerService$ObbException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 4941
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    :goto_8
    return-void
.end method

.method public abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/StorageManagerService$ObbException;
        }
    .end annotation
.end method

.method public notifyObbStateChange(I)V
    .registers 4

    .line 4953
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    if-eqz p0, :cond_18

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v0, :cond_9

    goto :goto_18

    .line 4958
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v0, v1, p0, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    const-string p0, "StorageManagerService"

    const-string p1, "StorageEventListener went away while calling onObbStateChanged"

    .line 4960
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_18
    return-void
.end method

.method public notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V
    .registers 3

    const-string v0, "StorageManagerService"

    .line 4948
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4949
    iget p1, p1, Lcom/android/server/StorageManagerService$ObbException;->status:I

    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(I)V

    return-void
.end method
