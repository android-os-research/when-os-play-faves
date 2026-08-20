.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "SemWifiServiceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerUsageStatsWatcher()V
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

    .line 665
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5

    if-eqz p1, :cond_d

    .line 689
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object p0

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setUsageStatsPackage(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5

    if-eqz p1, :cond_34

    .line 672
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 673
    iget-object p2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_34

    .line 674
    iget-object p1, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 675
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getUsageStatsPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    .line 676
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setUsageStatsPackage(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 681
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_34
    :goto_34
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
