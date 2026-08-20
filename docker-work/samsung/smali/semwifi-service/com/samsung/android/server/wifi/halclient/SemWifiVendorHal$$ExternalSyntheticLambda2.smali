.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->$r8$lambda$Mw7Ex7MPdxaVx9FbMxdvQ1oy0As(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;)V

    return-void
.end method
