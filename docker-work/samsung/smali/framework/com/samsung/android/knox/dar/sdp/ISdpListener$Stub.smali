.class public abstract Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;
.super Landroid/os/Binder;
.source "ISdpListener.java"

# interfaces
.implements Lcom/samsung/android/knox/dar/sdp/ISdpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/sdp/ISdpListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onEngineRemoved:I = 0x2

.field static final blacklist TRANSACTION_onStateChange:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.samsung.android.knox.dar.sdp.ISdpListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/sdp/ISdpListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.samsung.android.knox.dar.sdp.ISdpListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_c

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 63
    :pswitch_5
    const-string v0, "onEngineRemoved"

    return-object v0

    .line 59
    :pswitch_8
    const-string v0, "onStateChange"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
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

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 74
    invoke-static {p1}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 78
    const-string v0, "com.samsung.android.knox.dar.sdp.ISdpListener"

    .line 79
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_d
    packed-switch p1, :pswitch_data_32

    .line 90
    packed-switch p1, :pswitch_data_38

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 86
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 103
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->onEngineRemoved()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_31

    .line 95
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener$Stub;->onStateChange(I)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    nop

    .line 112
    .end local v2    # "_arg0":I
    :goto_31
    return v1

    :pswitch_data_32
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
