.class public final synthetic Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableBoolean;

.field public final synthetic f$1:Landroid/util/MutableBoolean;

.field public final synthetic f$2:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/MutableBoolean;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;->f$1:Landroid/util/MutableBoolean;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;->f$2:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/MutableBoolean;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;->f$1:Landroid/util/MutableBoolean;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$$ExternalSyntheticLambda3;->f$2:Landroid/util/MutableInt;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->$r8$lambda$DBi9CuuwB6j-fn2eR5kAEX2jUzo(Landroid/util/MutableBoolean;Landroid/util/MutableBoolean;Landroid/util/MutableInt;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;I)V

    return-void
.end method
