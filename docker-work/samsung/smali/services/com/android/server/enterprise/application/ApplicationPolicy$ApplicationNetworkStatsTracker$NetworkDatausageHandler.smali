.class public Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
.super Landroid/os/Handler;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkDatausageHandler"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/os/Looper;)V
    .registers 3

    .line 1847
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 1848
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1854
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1855
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 1856
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-static {p0, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$mupdateDataUsageMap(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V

    goto :goto_15

    .line 1858
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->-$$Nest$mupdateDataUsageMap(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V

    :goto_15
    return-void
.end method
