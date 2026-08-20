.class public Lcom/android/server/enterprise/device/DeviceInfo$4;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1000
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1002
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$mupdateDataStatisticsUsage(Lcom/android/server/enterprise/device/DeviceInfo;)J

    .line 1004
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageTimerActivated(Lcom/android/server/enterprise/device/DeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1005
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageEventsHandler(Lcom/android/server/enterprise/device/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/device/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fgetmDataUsageTimer(Lcom/android/server/enterprise/device/DeviceInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method
