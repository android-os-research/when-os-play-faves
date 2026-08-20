.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIface$getExtendedInfomationCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;->f$0:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->$r8$lambda$5OcqP9vO-C0lQs98T5IGQ3SJJNM(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;Ljava/lang/String;)V

    return-void
.end method
