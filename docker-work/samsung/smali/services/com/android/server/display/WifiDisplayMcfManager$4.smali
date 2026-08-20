.class public Lcom/android/server/display/WifiDisplayMcfManager$4;
.super Lcom/samsung/android/mcf/ble/BleScanCallback;
.source "WifiDisplayMcfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayMcfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .registers 4

    .line 421
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScanFailed errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmIsBounded(Lcom/android/server/display/WifiDisplayMcfManager;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 411
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanResult result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_25
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$4;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 416
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 415
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
