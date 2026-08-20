.class public interface abstract Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
.super Ljava/lang/Object;
.source "ISehBiometricsFaceClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;,
        Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 22
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 24
    instance-of v3, v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v3, :cond_14

    .line 25
    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    return-object v2

    .line 28
    :cond_14
    new-instance v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;

    invoke-direct {v2, p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 31
    :try_start_19
    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_31} :catch_34

    if-eqz v3, :cond_21

    return-object v2

    :catch_34
    :cond_34
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    .line 46
    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method public static getService()Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "default"

    .line 88
    invoke-static {v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 78
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFaceClientCallback"

    .line 61
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    .line 68
    invoke-static {v0, p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

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

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
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

.method public abstract sehOnAuthenticated(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sehOnPreviewFrame(Landroid/os/HidlMemory;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sehOnPreviewUpdated(Ljava/util/ArrayList;IIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;IIII)V"
        }
    .end annotation

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
