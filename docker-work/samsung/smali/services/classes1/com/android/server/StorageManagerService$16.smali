.class public Lcom/android/server/StorageManagerService$16;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 6509
    iput-object p1, p0, Lcom/android/server/StorageManagerService$16;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 6512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManagerService"

    const-string/jumbo v0, "mDiskDefragReceiver :: get Intent ACTION_RUN_DISK_DEFRAGMENTATION_SEC"

    .line 6513
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.RUN_DISK_DEFRAGMENTATION"

    .line 6514
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 6515
    iget-object p0, p0, Lcom/android/server/StorageManagerService$16;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    move-result-object p0

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    return-void
.end method
