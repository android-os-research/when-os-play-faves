.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;
.super Landroid/os/Binder;
.source "ISupplicant.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addP2pInterface:I = 0x1

.field static final TRANSACTION_addStaInterface:I = 0x2

.field static final TRANSACTION_getDebugLevel:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getP2pInterface:I = 0x4

.field static final TRANSACTION_getStaInterface:I = 0x5

.field static final TRANSACTION_isDebugShowKeysEnabled:I = 0x6

.field static final TRANSACTION_isDebugShowTimestampEnabled:I = 0x7

.field static final TRANSACTION_listInterfaces:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x9

.field static final TRANSACTION_removeInterface:I = 0xa

.field static final TRANSACTION_setConcurrencyPriority:I = 0xb

.field static final TRANSACTION_setDebugParams:I = 0xc

.field static final TRANSACTION_terminate:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;->markVintfStability()V

    .line 85
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 97
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    if-eqz v1, :cond_13

    .line 98
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;

    return-object v0

    .line 100
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 108
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_de

    packed-switch p1, :pswitch_data_ec

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 116
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 121
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 127
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 236
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->terminate()V

    goto/16 :goto_dd

    .line 225
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    .line 230
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->setDebugParams(IZZ)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_dd

    .line 217
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->setConcurrencyPriority(I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_dd

    .line 209
    :pswitch_57
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;

    .line 210
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->removeInterface(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_dd

    .line 201
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback;

    move-result-object p1

    .line 202
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantCallback;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_dd

    .line 193
    :pswitch_76
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->listInterfaces()[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/IfaceInfo;

    move-result-object p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_dd

    .line 186
    :pswitch_81
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->isDebugShowTimestampEnabled()Z

    move-result p0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_dd

    .line 179
    :pswitch_8c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->isDebugShowKeysEnabled()Z

    move-result p0

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_dd

    .line 171
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object p0

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_dd

    .line 162
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    move-result-object p0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_dd

    .line 154
    :pswitch_b5
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->getDebugLevel()I

    move-result p0

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dd

    .line 146
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->addStaInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    move-result-object p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_dd

    .line 137
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicant;->addP2pInterface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIface;

    move-result-object p0

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :goto_dd
    return v1

    :sswitch_data_de
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_c0
        :pswitch_b5
        :pswitch_a6
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_76
        :pswitch_67
        :pswitch_57
        :pswitch_4b
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method
