.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;
.super Ljava/lang/Object;
.source "SemWifiOptimizer.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


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

    .line 153
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 5

    .line 157
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmLlHandler(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
