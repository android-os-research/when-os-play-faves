.class public Lcom/android/internal/app/IBatteryStatsCallback$Default;
.super Ljava/lang/Object;
.source "IBatteryStatsCallback.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStatsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyNetworkStatsUpdated(Landroid/net/NetworkStats;)V
    .registers 2
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
