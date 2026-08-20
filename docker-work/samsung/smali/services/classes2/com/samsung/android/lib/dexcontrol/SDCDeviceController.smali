.class public Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;
.super Ljava/lang/Object;
.source "SDCDeviceController.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Model : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", DexControlLib Version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2.17.1221"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexControl_"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public requestChargingModeUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method

.method public requestConnectedPowerChargerInfoUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method

.method public setFastChargingEnable(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method

.method public updateDexBinaryDownloadingState(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method
