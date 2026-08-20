.class public Lcom/android/server/StorageManagerService$15;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    .line 6484
    iput-object p1, p0, Lcom/android/server/StorageManagerService$15;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6494
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
