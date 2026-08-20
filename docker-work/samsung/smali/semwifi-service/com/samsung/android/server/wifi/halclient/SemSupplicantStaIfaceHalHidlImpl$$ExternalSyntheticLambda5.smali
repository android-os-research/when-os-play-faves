.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicant$addInterfaceCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->$r8$lambda$oEkB_rTwg1lStnnQ1r-fh48JTrI(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;)V

    return-void
.end method
