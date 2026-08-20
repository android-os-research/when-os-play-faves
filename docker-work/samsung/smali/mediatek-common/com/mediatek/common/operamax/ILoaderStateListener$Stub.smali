.class public abstract Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;
.super Landroid/os/Binder;
.source "ILoaderStateListener.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSavingState:I = 0x2

.field static final blacklist TRANSACTION_onTunnelState:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/operamax/ILoaderStateListener;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/operamax/ILoaderStateListener;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
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

    .line 65
    const-string v0, "com.mediatek.common.operamax.ILoaderStateListener"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_d
    packed-switch p1, :pswitch_data_34

    .line 77
    packed-switch p1, :pswitch_data_3a

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 90
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->onSavingState(I)V

    .line 93
    goto :goto_32

    .line 82
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->onTunnelState(I)V

    .line 85
    nop

    .line 100
    .end local v2    # "_arg0":I
    :goto_32
    return v1

    nop

    :pswitch_data_34
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
