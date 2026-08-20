.class public abstract Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub;
.super Landroid/os/Binder;
.source "ISehSession.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/ISehSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/face/ISehSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_authenticateExtension:I = 0x1

.field public static final TRANSACTION_close:I = 0xc

.field public static final TRANSACTION_getFaceTag:I = 0x9

.field public static final TRANSACTION_getFaceTagList:I = 0x8

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getWrappedData:I = 0x2

.field public static final TRANSACTION_isTAUnloaded:I = 0x5

.field public static final TRANSACTION_loadTA:I = 0x3

.field public static final TRANSACTION_pause:I = 0x6

.field public static final TRANSACTION_resume:I = 0x7

.field public static final TRANSACTION_setFaceTag:I = 0xa

.field public static final TRANSACTION_setRotation:I = 0xb

.field public static final TRANSACTION_unloadTA:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 85
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/face/ISehSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 97
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;

    if-eqz v1, :cond_13

    .line 98
    check-cast v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;

    return-object v0

    .line 100
    :cond_13
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_de

    packed-switch p1, :pswitch_data_ec

    .line 237
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
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 127
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 231
    :pswitch_32
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->close()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_dc

    .line 222
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->setRotation(I)I

    move-result p0

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_dc

    .line 210
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-interface {p0, p1, p4}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->setFaceTag(I[B)I

    move-result p0

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_dc

    .line 200
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getFaceTag(I)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;

    move-result-object p0

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_dc

    .line 192
    :pswitch_76
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getFaceTagList()[I

    move-result-object p0

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_dc

    .line 185
    :pswitch_81
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->resume()I

    move-result p0

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dc

    .line 178
    :pswitch_8c
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->pause()I

    move-result p0

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dc

    .line 171
    :pswitch_97
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->isTAUnloaded()Z

    move-result p0

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_dc

    .line 164
    :pswitch_a2
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->unloadTA()I

    move-result p0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dc

    .line 157
    :pswitch_ad
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->loadTA()I

    move-result p0

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dc

    .line 150
    :pswitch_b8
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->getWrappedData()[B

    move-result-object p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_dc

    .line 137
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-interface {p0, v2, v3, p1, p4}, Lvendor/samsung/hardware/biometrics/face/ISehSession;->authenticateExtension(JI[B)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :goto_dc
    return v1

    nop

    :sswitch_data_de
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_b8
        :pswitch_ad
        :pswitch_a2
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_76
        :pswitch_64
        :pswitch_4d
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method
