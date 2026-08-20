.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$7;
.super Landroid/database/ContentObserver;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForWatchdogToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/os/Handler;)V
    .registers 3

    .line 711
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 714
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21001

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    return-void
.end method
