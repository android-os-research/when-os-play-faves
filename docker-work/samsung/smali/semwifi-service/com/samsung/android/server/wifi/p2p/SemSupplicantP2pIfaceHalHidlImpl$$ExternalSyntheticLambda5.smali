.class public final synthetic Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda5;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$$ExternalSyntheticLambda5;->f$0:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->$r8$lambda$xA5PoHWLhCWqwc6HC6t6MTZgw7Q(Ljava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method
