.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;
.super Ljava/lang/Object;
.source "SemWifiOptimizer.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatedServiceStats([III)V
    .registers 6

    const/4 p2, 0x3

    .line 428
    aget p2, p1, p2

    const/16 p3, 0x9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1a

    const/4 p2, 0x4

    aget p1, p1, p2

    if-ne p1, v1, :cond_f

    goto :goto_1a

    .line 432
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object p0

    invoke-static {p0, p3, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    goto :goto_24

    .line 430
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object p0

    invoke-static {p0, p3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 434
    :goto_24
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
