.class public final synthetic Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->$r8$lambda$D0WD46-clmcbMMKamAZdCtNXb-0(Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method
