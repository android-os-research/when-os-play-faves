.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    return-void
.end method


# virtual methods
.method public final onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->$r8$lambda$Lj7zSffRb3fBDj2TgfYGgNVVPSo(Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method
