.class Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;
.super Landroid/os/Handler;
.source "SemWifiLinkInfoCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkInfoCollectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Landroid/os/Looper;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_45

    .line 209
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 198
    :cond_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-ne p1, v1, :cond_36

    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fputmConnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V

    goto :goto_45

    .line 204
    :cond_36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->-$$Nest$fputmDisconnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V

    :goto_45
    return-void
.end method
