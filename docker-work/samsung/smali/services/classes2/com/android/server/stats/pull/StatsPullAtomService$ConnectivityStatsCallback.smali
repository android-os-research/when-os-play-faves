.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectivityStatsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4795
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 4800
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    const/16 p1, 0x62

    const/4 v0, 0x1

    .line 4799
    invoke-static {p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 4807
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p0

    const/16 p1, 0x62

    const/4 v0, 0x2

    .line 4806
    invoke-static {p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method
