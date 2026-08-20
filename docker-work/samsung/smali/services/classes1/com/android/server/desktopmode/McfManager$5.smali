.class public Lcom/android/server/desktopmode/McfManager$5;
.super Lcom/samsung/android/mcf/ble/BleScanCallback;
.source "McfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/McfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .registers 4

    .line 228
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fputmLastBleScanFailedErrorCode(Lcom/android/server/desktopmode/McfManager;I)V

    .line 229
    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScanFailed errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fputmLastBleScanResult(Lcom/android/server/desktopmode/McfManager;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmBleAdvertiserServiceTimeout(Lcom/android/server/desktopmode/McfManager;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    .line 218
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_37
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    const/16 v0, 0x191

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$5;->this$0:Lcom/android/server/desktopmode/McfManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/McfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;

    move-result-object p0

    .line 223
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 222
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
