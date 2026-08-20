.class public interface abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
.super Ljava/lang/Object;
.source "ISehWifi.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_1/ISehWifi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Stub;,
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Proxy;,
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;,
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;,
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$TwtParams;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.samsung.hardware.wifi@2.2::ISehWifi"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    .line 25
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 27
    instance-of v3, v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    if-eqz v3, :cond_13

    .line 28
    check-cast v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    return-object v2

    .line 31
    :cond_13
    new-instance v2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Proxy;

    invoke-direct {v2, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 34
    :try_start_18
    invoke-interface {v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_30} :catch_33

    if-eqz v3, :cond_20

    return-object v2

    :catch_33
    :cond_33
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    .line 49
    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static getService()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "default"

    .line 91
    invoke-static {v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getService(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    .line 81
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.samsung.hardware.wifi@2.2::ISehWifi"

    .line 64
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 71
    invoke-static {v0, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;->getService(Ljava/lang/String;Z)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getChipsetVendorName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getChipsetVendorNameCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTwtParameters(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/V2_2/ISehWifi$getTwtParametersCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
