.class public abstract Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "IVolteServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVolteServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVolteServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCdpnInfo:I = 0x2

.field static final TRANSACTION_onDialogEvent:I = 0x4

.field static final TRANSACTION_onIncomingCall:I = 0x1

.field static final TRANSACTION_onPullingCall:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.sec.ims.volte2.IVolteServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteServiceEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.sec.ims.volte2.IVolteServiceEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IVolteServiceEventListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IVolteServiceEventListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "com.sec.ims.volte2.IVolteServiceEventListener"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_d
    packed-switch p1, :pswitch_data_5e

    .line 68
    packed-switch p1, :pswitch_data_64

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 102
    :pswitch_1c
    sget-object v2, Lcom/sec/ims/DialogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/DialogEvent;

    .line 103
    .local v2, "_arg0":Lcom/sec/ims/DialogEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    goto :goto_5c

    .line 93
    .end local v2    # "_arg0":Lcom/sec/ims/DialogEvent;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->onPullingCall(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    goto :goto_5c

    .line 82
    .end local v2    # "_arg0":I
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->onCdpnInfo(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    goto :goto_5c

    .line 73
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->onIncomingCall(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    nop

    .line 113
    .end local v2    # "_arg0":I
    :goto_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_3c
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
