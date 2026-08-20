.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableBoolean;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

.field public final synthetic f$3:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$0:Landroid/util/MutableBoolean;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$2:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$3:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$0:Landroid/util/MutableBoolean;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$2:[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda9;->f$3:Landroid/util/MutableInt;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->$r8$lambda$Ik5aC-D06mzQ53tHkQGImXwnqxE(Landroid/util/MutableBoolean;Ljava/lang/String;[Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiIfaceInfo;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;)V

    return-void
.end method
