.class public interface abstract Landroid/hardware/radio/config/V1_3/IRadioConfig;
.super Ljava/lang/Object;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_1/IRadioConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/V1_3/IRadioConfig$Proxy;
    }
.end annotation


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/config/V1_3/IRadioConfig;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "android.hardware.radio.config@1.3::IRadioConfig"

    .line 18
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 20
    instance-of v3, v2, Landroid/hardware/radio/config/V1_3/IRadioConfig;

    if-eqz v3, :cond_13

    .line 21
    check-cast v2, Landroid/hardware/radio/config/V1_3/IRadioConfig;

    return-object v2

    .line 24
    :cond_13
    new-instance v2, Landroid/hardware/radio/config/V1_3/IRadioConfig$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/radio/config/V1_3/IRadioConfig$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    :try_start_18
    invoke-interface {v2}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->interfaceChain()Ljava/util/ArrayList;

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

    .line 28
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

.method public static blacklist getService(Ljava/lang/String;Z)Landroid/hardware/radio/config/V1_3/IRadioConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.radio.config@1.3::IRadioConfig"

    .line 57
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getService(Z)Landroid/hardware/radio/config/V1_3/IRadioConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 64
    invoke-static {v0, p0}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract blacklist getHalDeviceCapabilities(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceChain()Ljava/util/ArrayList;
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
