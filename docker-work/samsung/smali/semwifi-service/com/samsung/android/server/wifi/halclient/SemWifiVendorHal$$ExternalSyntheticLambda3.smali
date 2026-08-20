.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->$r8$lambda$qSBUZTG7U8t4MuanC8P01cy4XiI(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$1AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V

    return-void
.end method
