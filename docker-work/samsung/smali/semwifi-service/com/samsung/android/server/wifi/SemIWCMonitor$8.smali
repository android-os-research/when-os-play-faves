.class Lcom/samsung/android/server/wifi/SemIWCMonitor$8;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkAdded(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 579
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->update(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
