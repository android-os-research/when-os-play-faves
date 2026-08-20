.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$9;
.super Landroid/database/ContentObserver;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->registerForVPNChanges()V
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

    .line 769
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$9;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 772
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$9;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckVPNSetting(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-void
.end method
