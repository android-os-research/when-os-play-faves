.class public abstract Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;
.super Landroid/os/Binder;
.source "ISehHdrSolution.java"

# interfaces
.implements Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_updateHdrLayerState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 58
    sget-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    :cond_d
    packed-switch p1, :pswitch_data_2c

    .line 70
    packed-switch p1, :pswitch_data_32

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 66
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 75
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 76
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 77
    invoke-virtual {p0, v2}, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;->updateHdrLayerState(Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    nop

    .line 86
    .end local v2    # "_arg0":Z
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
