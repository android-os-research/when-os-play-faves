.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$getBssCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;->$r8$lambda$ZHT_VGYZcWQW9rmReStnJxtyTd8(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaNetworkHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaNetwork$BssParam;)V

    return-void
.end method
