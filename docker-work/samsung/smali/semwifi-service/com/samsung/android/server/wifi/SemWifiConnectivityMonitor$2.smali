.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$2;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 4

    .line 370
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x2101a

    .line 371
    iput v1, v0, Landroid/os/Message;->what:I

    .line 372
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
