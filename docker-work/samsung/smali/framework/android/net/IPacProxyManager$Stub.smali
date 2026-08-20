.class public abstract Landroid/net/IPacProxyManager$Stub;
.super Landroid/os/Binder;
.source "IPacProxyManager.java"

# interfaces
.implements Landroid/net/IPacProxyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IPacProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IPacProxyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addListener:I = 0x1

.field static final blacklist TRANSACTION_removeListener:I = 0x2

.field static final blacklist TRANSACTION_setCurrentProxyScriptUrl:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.net.IPacProxyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IPacProxyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/IPacProxyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "android.net.IPacProxyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IPacProxyManager;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/net/IPacProxyManager;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Landroid/net/IPacProxyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IPacProxyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_e

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :pswitch_5
    const-string v0, "setCurrentProxyScriptUrl"

    return-object v0

    .line 63
    :pswitch_8
    const-string v0, "removeListener"

    return-object v0

    .line 59
    :pswitch_b
    const-string v0, "addListener"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 197
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 78
    invoke-static {p1}, Landroid/net/IPacProxyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-string v0, "android.net.IPacProxyManager"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_d
    packed-switch p1, :pswitch_data_54

    .line 94
    packed-switch p1, :pswitch_data_5a

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 117
    :pswitch_1c
    sget-object v2, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ProxyInfo;

    .line 118
    .local v2, "_arg0":Landroid/net/ProxyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/net/IPacProxyManager$Stub;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_52

    .line 108
    .end local v2    # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IPacProxyInstalledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IPacProxyInstalledListener;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Landroid/net/IPacProxyInstalledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Landroid/net/IPacProxyManager$Stub;->removeListener(Landroid/net/IPacProxyInstalledListener;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_52

    .line 99
    .end local v2    # "_arg0":Landroid/net/IPacProxyInstalledListener;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IPacProxyInstalledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IPacProxyInstalledListener;

    move-result-object v2

    .line 100
    .restart local v2    # "_arg0":Landroid/net/IPacProxyInstalledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Landroid/net/IPacProxyManager$Stub;->addListener(Landroid/net/IPacProxyInstalledListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    nop

    .line 128
    .end local v2    # "_arg0":Landroid/net/IPacProxyInstalledListener;
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
