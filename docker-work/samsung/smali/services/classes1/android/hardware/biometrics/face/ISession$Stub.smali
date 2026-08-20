.class public abstract Landroid/hardware/biometrics/face/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_authenticate:I = 0x5

.field public static final TRANSACTION_authenticateWithContext:I = 0xf

.field public static final TRANSACTION_close:I = 0xe

.field public static final TRANSACTION_detectInteraction:I = 0x6

.field public static final TRANSACTION_detectInteractionWithContext:I = 0x11

.field public static final TRANSACTION_enroll:I = 0x4

.field public static final TRANSACTION_enrollWithContext:I = 0x10

.field public static final TRANSACTION_enumerateEnrollments:I = 0x7

.field public static final TRANSACTION_generateChallenge:I = 0x1

.field public static final TRANSACTION_getAuthenticatorId:I = 0xb

.field public static final TRANSACTION_getEnrollmentConfig:I = 0x3

.field public static final TRANSACTION_getFeatures:I = 0x9

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_invalidateAuthenticatorId:I = 0xc

.field public static final TRANSACTION_onContextChanged:I = 0x12

.field public static final TRANSACTION_removeEnrollments:I = 0x8

.field public static final TRANSACTION_resetLockout:I = 0xd

.field public static final TRANSACTION_revokeChallenge:I = 0x2

.field public static final TRANSACTION_setFeature:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 99
    sget-object v0, Landroid/hardware/biometrics/face/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISession;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/face/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 111
    instance-of v1, v0, Landroid/hardware/biometrics/face/ISession;

    if-eqz v1, :cond_13

    .line 112
    check-cast v0, Landroid/hardware/biometrics/face/ISession;

    return-object v0

    .line 114
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/face/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    sget-object v0, Landroid/hardware/biometrics/face/ISession;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_178

    packed-switch p1, :pswitch_data_186

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 130
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 135
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 141
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 310
    :pswitch_32
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 300
    :pswitch_45
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_176

    .line 282
    :pswitch_5c
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 288
    sget-object p1, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/common/NativeHandle;

    .line 290
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/hardware/biometrics/common/OperationContext;

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 292
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/face/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_176

    .line 270
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 272
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-interface {p0, v2, v3, p1}, Landroid/hardware/biometrics/face/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_176

    .line 263
    :pswitch_aa
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->close()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 255
    :pswitch_b2
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 248
    :pswitch_c5
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->invalidateAuthenticatorId()V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 242
    :pswitch_cd
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getAuthenticatorId()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 230
    :pswitch_d5
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-interface {p0, p1, p4, v0}, Landroid/hardware/biometrics/face/ISession;->setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 223
    :pswitch_f0
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->getFeatures()V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_176

    .line 215
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->removeEnrollments([I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_176

    .line 208
    :pswitch_106
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->enumerateEnrollments()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_176

    .line 201
    :pswitch_10d
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_176

    .line 192
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_176

    .line 176
    :pswitch_12a
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 182
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, p1, p4, v0, v2}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_176

    .line 166
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    move-result-object p0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_176

    .line 157
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISession;->revokeChallenge(J)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_176

    .line 150
    :pswitch_170
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISession;->generateChallenge()V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_176
    return v1

    nop

    :sswitch_data_178
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_170
        :pswitch_162
        :pswitch_150
        :pswitch_12a
        :pswitch_118
        :pswitch_10d
        :pswitch_106
        :pswitch_f8
        :pswitch_f0
        :pswitch_d5
        :pswitch_cd
        :pswitch_c5
        :pswitch_b2
        :pswitch_aa
        :pswitch_8f
        :pswitch_5c
        :pswitch_45
        :pswitch_32
    .end packed-switch
.end method
