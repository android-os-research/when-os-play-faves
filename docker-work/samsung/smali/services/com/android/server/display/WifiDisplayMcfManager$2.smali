.class public Lcom/android/server/display/WifiDisplayMcfManager$2;
.super Lcom/samsung/android/mcf/ble/BleAdapterCallback;
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

    .line 371
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleAdapterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMcfServiceStateChanged(II)V
    .registers 5

    .line 374
    invoke-static {}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMcfServiceStateChanged state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p2}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager$2;->this$0:Lcom/android/server/display/WifiDisplayMcfManager;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->-$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    move-result-object p0

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 377
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
