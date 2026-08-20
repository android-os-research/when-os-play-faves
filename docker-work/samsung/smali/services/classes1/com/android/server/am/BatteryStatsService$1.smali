.class public Lcom/android/server/am/BatteryStatsService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(IZJI)V
    .registers 9

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    const/4 p2, 0x3

    goto :goto_6

    :cond_5
    move p2, v0

    :goto_6
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_10

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    :cond_10
    if-eqz p1, :cond_31

    if-eq p1, v0, :cond_2b

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received unexpected transport in interfaceClassDataActivityChanged unexpected type: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 210
    :cond_2b
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/BatteryStatsService;->noteWifiRadioPowerState(IJI)V

    goto :goto_36

    .line 207
    :cond_31
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/BatteryStatsService;->noteMobileRadioPowerState(IJI)V

    :goto_36
    return-void
.end method
