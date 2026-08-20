.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub;
.super Landroid/os/Binder;
.source "ISehSupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onBigDataLogging:I = 0x3

.field static final TRANSACTION_onGoPs:I = 0x4

.field static final TRANSACTION_onGroupStarted:I = 0x1

.field static final TRANSACTION_onP2pEventReceived:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub;->markVintfStability()V

    .line 50
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 62
    instance-of v1, v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;

    if-eqz v1, :cond_13

    .line 63
    check-cast v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;

    return-object v0

    .line 65
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    .line 73
    sget-object v3, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v10, 0x1

    if-lt v1, v10, :cond_12

    const v4, 0xffffff

    if-gt v1, v4, :cond_12

    move-object v4, p2

    .line 75
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_13

    :cond_12
    move-object v4, p2

    :goto_13
    sparse-switch v1, :sswitch_data_8c

    goto :goto_31

    .line 81
    :sswitch_17
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    .line 86
    :sswitch_1b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    .line 92
    :sswitch_26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :goto_31
    if-eq v1, v10, :cond_5d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_51

    const/4 v3, 0x3

    if-eq v1, v3, :cond_49

    const/4 v3, 0x4

    if-eq v1, v3, :cond_41

    .line 147
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 141
    :cond_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->onGoPs(Ljava/lang/String;)V

    goto :goto_8b

    .line 134
    :cond_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->onBigDataLogging(Ljava/lang/String;)V

    goto :goto_8b

    .line 125
    :cond_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->onP2pEventReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 102
    :cond_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    move-object v0, p0

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v11

    .line 119
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ[B)V

    :goto_8b
    return v10

    :sswitch_data_8c
    .sparse-switch
        0xfffffe -> :sswitch_26
        0xffffff -> :sswitch_1b
        0x5f4e5446 -> :sswitch_17
    .end sparse-switch
.end method
