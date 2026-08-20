.class public abstract Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_authenticate:I = 0x4

.field public static final TRANSACTION_authenticateWithContext:I = 0xf

.field public static final TRANSACTION_close:I = 0xb

.field public static final TRANSACTION_detectInteraction:I = 0x5

.field public static final TRANSACTION_detectInteractionWithContext:I = 0x11

.field public static final TRANSACTION_enroll:I = 0x3

.field public static final TRANSACTION_enrollWithContext:I = 0x10

.field public static final TRANSACTION_enumerateEnrollments:I = 0x6

.field public static final TRANSACTION_generateChallenge:I = 0x1

.field public static final TRANSACTION_getAuthenticatorId:I = 0x8

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_invalidateAuthenticatorId:I = 0x9

.field public static final TRANSACTION_onContextChanged:I = 0x14

.field public static final TRANSACTION_onPointerDown:I = 0xc

.field public static final TRANSACTION_onPointerDownWithContext:I = 0x12

.field public static final TRANSACTION_onPointerUp:I = 0xd

.field public static final TRANSACTION_onPointerUpWithContext:I = 0x13

.field public static final TRANSACTION_onUiReady:I = 0xe

.field public static final TRANSACTION_removeEnrollments:I = 0x7

.field public static final TRANSACTION_resetLockout:I = 0xa

.field public static final TRANSACTION_revokeChallenge:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 104
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISession;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 116
    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISession;

    if-eqz v1, :cond_13

    .line 117
    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v0

    .line 119
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 127
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_178

    packed-switch p1, :pswitch_data_186

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 135
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 140
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 146
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 324
    :pswitch_32
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 315
    :pswitch_45
    sget-object p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 306
    :pswitch_58
    sget-object p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 296
    :pswitch_6b
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_177

    .line 284
    :pswitch_82
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 286
    sget-object p4, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/biometrics/common/OperationContext;

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/fingerprint/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_177

    .line 272
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 274
    sget-object p1, Landroid/hardware/biometrics/common/OperationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-interface {p0, v2, v3, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_177

    .line 265
    :pswitch_bc
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 257
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 240
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 250
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 233
    :pswitch_f3
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->close()V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_177

    .line 225
    :pswitch_fb
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_177

    .line 218
    :pswitch_10d
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->invalidateAuthenticatorId()V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_177

    .line 212
    :pswitch_114
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->getAuthenticatorId()V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_177

    .line 204
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->removeEnrollments([I)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_177

    .line 197
    :pswitch_129
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->enumerateEnrollments()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_177

    .line 190
    :pswitch_130
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_177

    .line 181
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_177

    .line 171
    :pswitch_14d
    sget-object p1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_177

    .line 162
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISession;->revokeChallenge(J)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_177

    .line 155
    :pswitch_171
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->generateChallenge()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_177
    return v1

    :sswitch_data_178
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_171
        :pswitch_163
        :pswitch_14d
        :pswitch_13b
        :pswitch_130
        :pswitch_129
        :pswitch_11b
        :pswitch_114
        :pswitch_10d
        :pswitch_fb
        :pswitch_f3
        :pswitch_d3
        :pswitch_c4
        :pswitch_bc
        :pswitch_a1
        :pswitch_82
        :pswitch_6b
        :pswitch_58
        :pswitch_45
        :pswitch_32
    .end packed-switch
.end method
