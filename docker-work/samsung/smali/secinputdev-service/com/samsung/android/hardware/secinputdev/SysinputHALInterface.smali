.class public interface abstract Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;
.super Ljava/lang/Object;
.source "SysinputHALInterface.java"


# static fields
.field public static final RESULT_STR_NG:Ljava/lang/String; = "NG"


# virtual methods
.method public clearHwParam(ILjava/lang/String;)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 41
    const-string v0, "SysinputHALInterface"

    const-string v1, "clearHwParam: not support in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, -0x5

    return v0
.end method

.method public abstract closeTaas()I
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15
    const-string v0, "SysinputHALInterface"

    const-string v1, "getDeviceList: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getDeviceList(Z)Ljava/util/ArrayList;
    .registers 4
    .param p1, "forceParse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20
    const-string v0, "SysinputHALInterface"

    const-string v1, "getDeviceList forceParse: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-interface {p0}, Lcom/samsung/android/hardware/secinputdev/SysinputHALInterface;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHwParam(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 46
    const-string v0, "SysinputHALInterface"

    const-string v1, "getProxPowerOff: not support "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "NG"

    return-object v0
.end method

.method public abstract getKeyCodePressed(I)Ljava/lang/String;
.end method

.method public getLpDump(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 36
    const-string v0, "SysinputHALInterface"

    const-string v1, "getProxPowerOff: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "NG"

    return-object v0
.end method

.method public getProxPowerOff(I)Ljava/lang/String;
    .registers 5
    .param p1, "devid"    # I

    .line 30
    const-string v0, "NG"

    .line 31
    .local v0, "result":Ljava/lang/String;
    const-string v1, "SysinputHALInterface"

    const-string v2, "getProxPowerOff: not support "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-object v0
.end method

.method public abstract getSpenCommandList()Ljava/lang/String;
.end method

.method public abstract getSpenPosition()Ljava/lang/String;
.end method

.method public abstract getSpenSupportFeature()I
.end method

.method public abstract getTspAodActiveArea(I)Ljava/lang/String;
.end method

.method public abstract getTspCommandList(I)Ljava/lang/String;
.end method

.method public abstract getTspFodInformation(I)Ljava/lang/String;
.end method

.method public abstract getTspFodPosition(I)Ljava/lang/String;
.end method

.method public abstract getTspRawdata(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTspScrubPosition(I)Ljava/lang/String;
.end method

.method public abstract getTspSupportFeature(I)I
.end method

.method public abstract getVersion()F
.end method

.method public abstract initTspRawData(II)I
.end method

.method public abstract openTaas()I
.end method

.method public abstract pollTspIrq(I)I
.end method

.method public abstract readTaas()Ljava/lang/String;
.end method

.method public registerCallback(Landroid/os/HwBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/HwBinder;

    .line 56
    const-string v0, "SysinputHALInterface"

    const-string v1, "registerCallback: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public abstract runSpenCmd(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runSpenCmdNoRead(Ljava/lang/String;)I
.end method

.method public abstract runTspCmd(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runTspCmdNoRead(ILjava/lang/String;)I
.end method

.method public sendRawdataTsp(ILjava/util/ArrayList;I)I
    .registers 6
    .param p1, "devid"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;I)I"
        }
    .end annotation

    .line 60
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const-string v0, "SysinputHALInterface"

    const-string v1, "sendRawdataTsp: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, -0x5

    return v0
.end method

.method public setKeyboardEnable(IZ)I
    .registers 5
    .param p1, "enable"    # I
    .param p2, "isBefore"    # Z

    .line 80
    const-string v0, "SysinputHALInterface"

    const-string v1, "setKeyboardEnable: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, -0x5

    return v0
.end method

.method public setProxPowerOff(ILjava/lang/String;)I
    .registers 5
    .param p1, "devid"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 25
    const-string v0, "SysinputHALInterface"

    const-string v1, "clearHwParam: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, -0x5

    return v0
.end method

.method public setSpenAodEnable(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 51
    const-string v0, "SysinputHALInterface"

    const-string v1, "clearHwParam: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, -0x5

    return v0
.end method

.method public setSpenBleChargingMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 65
    const-string v0, "SysinputHALInterface"

    const-string v1, "setSpenBleChargingMode: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, -0x5

    return v0
.end method

.method public abstract setSpenEnable(IZ)I
.end method

.method public setSpenSavingMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 75
    const-string v0, "SysinputHALInterface"

    const-string v1, "setSpenSavingMode: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, -0x5

    return v0
.end method

.method public setSpenScreenOffMemo(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 70
    const-string v0, "SysinputHALInterface"

    const-string v1, "setSpenScreenOffMemo: not support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, -0x5

    return v0
.end method

.method public abstract setTspEnable(IIZ)I
.end method

.method public abstract writeTaas(Ljava/lang/String;)I
.end method
