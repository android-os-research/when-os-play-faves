.class Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;
.super Ljava/lang/Object;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field appUid:I

.field backgroundBandwidth:I

.field computedBandwidth:I

.field isGameApp:Z

.field targetBandwidth:I

.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;IZ)V
    .registers 4

    .line 711
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->this$1:Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput p2, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    const/4 p1, 0x1

    .line 713
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 714
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->isGameApp:Z

    .line 715
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->computedBandwidth:I

    .line 716
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->targetBandwidth:I

    return-void
.end method
