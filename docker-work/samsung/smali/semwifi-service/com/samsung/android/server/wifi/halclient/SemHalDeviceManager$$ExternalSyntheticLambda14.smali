.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

.field public final synthetic f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda14;->f$1:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->$r8$lambda$ws4YTXOiatWEa_Eyt4_3tI1jgNA(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V

    return-void
.end method
