.class Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;
.super Ljava/lang/Object;
.source "SemWifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->getWifiLinkLayerStats_1_3_Internal(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

.field public value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$2AnswerBox;->value:Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/StaLinkLayerStats;

    return-void
.end method
