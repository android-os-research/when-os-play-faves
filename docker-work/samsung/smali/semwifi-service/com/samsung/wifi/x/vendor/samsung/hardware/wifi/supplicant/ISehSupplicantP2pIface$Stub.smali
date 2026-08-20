.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub;
.super Landroid/os/Binder;
.source "ISehSupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendCommand:I = 0x2

.field static final TRANSACTION_setNoa:I = 0x5

.field static final TRANSACTION_setNoaBandwidth:I = 0x6

.field static final TRANSACTION_startListenOffloading:I = 0x3

.field static final TRANSACTION_stopListenOffloading:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 68
    instance-of v1, v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_94

    packed-switch p1, :pswitch_data_a2

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 87
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 92
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 98
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 158
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 163
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->setNoaBandwidth(Ljava/lang/String;ZI)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_93

    .line 146
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 151
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->setNoa(Ljava/lang/String;ZI)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_93

    .line 139
    :pswitch_58
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->stopListenOffloading()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_93

    .line 126
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 133
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->startListenOffloading(IIII)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_93

    .line 116
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_93

    .line 108
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantP2pIfaceCallback;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_93
    return v1

    :sswitch_data_94
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_85
        :pswitch_76
        :pswitch_5f
        :pswitch_58
        :pswitch_45
        :pswitch_32
    .end packed-switch
.end method
