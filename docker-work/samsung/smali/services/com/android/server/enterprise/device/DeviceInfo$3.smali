.class public Lcom/android/server/enterprise/device/DeviceInfo$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .line 984
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 986
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 988
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$mdataUsageValuesInit(Lcom/android/server/enterprise/device/DeviceInfo;)V

    .line 989
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_5c

    .line 990
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 991
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fputmDataStatsCounter(Lcom/android/server/enterprise/device/DeviceInfo;I)V

    .line 992
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p2}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataStatisticsUpdateRun(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 993
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageTimerActivated(Lcom/android/server/enterprise/device/DeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 994
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataStatisticsUpdateRun(Lcom/android/server/enterprise/device/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5c
    :goto_5c
    return-void
.end method
