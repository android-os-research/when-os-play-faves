.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    return-void
.end method


# virtual methods
.method public final onP2pConnectionStateChanged(ZILjava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->$r8$lambda$pMIApJuVWtZ0fyiVhnR1Ch7_P_Y(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;ZILjava/lang/String;)V

    return-void
.end method
