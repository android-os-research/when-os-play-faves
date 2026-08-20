.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;
.super Ljava/lang/Object;
.source "SemWifiServiceDetector.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatedTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V
    .registers 3

    .line 273
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
