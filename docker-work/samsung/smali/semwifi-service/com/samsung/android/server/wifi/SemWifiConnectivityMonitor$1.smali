.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "SemWifiConnectivityMonitor.java"


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

    .line 315
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_39

    .line 321
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    .line 323
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 p3, 0x80

    .line 324
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 326
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUsageStatsUid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 327
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUsageStatsPackageName(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUsagePackageChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    :goto_39
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
