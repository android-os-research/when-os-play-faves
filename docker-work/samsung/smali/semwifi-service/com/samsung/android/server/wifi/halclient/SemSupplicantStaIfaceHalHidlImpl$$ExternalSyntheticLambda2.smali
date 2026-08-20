.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->$r8$lambda$J0MZ1d6zFYz-HXVIa50WDCU3tUE(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method
