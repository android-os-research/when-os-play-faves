.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableBoolean;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;->f$0:Landroid/util/MutableBoolean;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;->f$0:Landroid/util/MutableBoolean;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda6;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->$r8$lambda$N1RklTjOXY9JIvILBbz8wEnkOak(Landroid/util/MutableBoolean;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V

    return-void
.end method
