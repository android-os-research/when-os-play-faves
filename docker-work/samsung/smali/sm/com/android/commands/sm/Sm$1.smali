.class Lcom/android/commands/sm/Sm$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "Sm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/sm/Sm;->runBenchmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/sm/Sm;

.field final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/commands/sm/Sm;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/commands/sm/Sm;

    .line 256
    iput-object p1, p0, Lcom/android/commands/sm/Sm$1;->this$0:Lcom/android/commands/sm/Sm;

    iput-object p2, p0, Lcom/android/commands/sm/Sm$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 265
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->size()I

    .line 266
    iget-object v0, p0, Lcom/android/commands/sm/Sm$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 260
    return-void
.end method
