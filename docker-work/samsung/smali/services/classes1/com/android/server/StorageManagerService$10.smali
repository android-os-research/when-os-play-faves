.class public Lcom/android/server/StorageManagerService$10;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V
    .registers 3

    .line 3156
    iput-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 3164
    iget-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHeimdAllFs(Lcom/android/server/StorageManagerService;)Lcom/android/server/HeimdAllFsService;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3165
    iget-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHeimdAllFs(Lcom/android/server/StorageManagerService;)Lcom/android/server/HeimdAllFsService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/HeimdAllFsService;->waitForFinished()V

    .line 3166
    :cond_11
    iget-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmHeimdAllFs(Lcom/android/server/StorageManagerService;Lcom/android/server/HeimdAllFsService;)V

    .line 3168
    iget-object p1, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_24

    .line 3169
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3

    return-void
.end method
