.class public abstract Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_onAuthenticationFailed:I = 0x8

.field public static final TRANSACTION_onAuthenticationFrame:I = 0x3

.field public static final TRANSACTION_onAuthenticationSucceeded:I = 0x7

.field public static final TRANSACTION_onAuthenticatorIdInvalidated:I = 0x12

.field public static final TRANSACTION_onAuthenticatorIdRetrieved:I = 0x11

.field public static final TRANSACTION_onChallengeGenerated:I = 0x1

.field public static final TRANSACTION_onChallengeRevoked:I = 0x2

.field public static final TRANSACTION_onEnrollmentFrame:I = 0x4

.field public static final TRANSACTION_onEnrollmentProgress:I = 0x6

.field public static final TRANSACTION_onEnrollmentsEnumerated:I = 0xd

.field public static final TRANSACTION_onEnrollmentsRemoved:I = 0x10

.field public static final TRANSACTION_onError:I = 0x5

.field public static final TRANSACTION_onFeatureSet:I = 0xf

.field public static final TRANSACTION_onFeaturesRetrieved:I = 0xe

.field public static final TRANSACTION_onInteractionDetected:I = 0xc

.field public static final TRANSACTION_onLockoutCleared:I = 0xb

.field public static final TRANSACTION_onLockoutPermanent:I = 0xa

.field public static final TRANSACTION_onLockoutTimed:I = 0x9

.field public static final TRANSACTION_onSessionClosed:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 95
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISessionCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 107
    instance-of v1, v0, Landroid/hardware/biometrics/face/ISessionCallback;

    if-eqz v1, :cond_13

    .line 108
    check-cast v0, Landroid/hardware/biometrics/face/ISessionCallback;

    return-object v0

    .line 110
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 118
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_13e

    packed-switch p1, :pswitch_data_14c

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 126
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 131
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 137
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 302
    :pswitch_32
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 294
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 285
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 276
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 267
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 258
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 249
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 242
    :pswitch_94
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onInteractionDetected()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 236
    :pswitch_9c
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 230
    :pswitch_a4
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutPermanent()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 222
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutTimed(J)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 215
    :pswitch_bb
    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFailed()V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_13c

    .line 205
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 207
    sget-object p4, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    .line 194
    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentProgress(II)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    .line 183
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    .line 174
    :pswitch_fd
    sget-object p1, Landroid/hardware/biometrics/face/EnrollmentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    .line 165
    :pswitch_10f
    sget-object p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    .line 156
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_13c

    .line 147
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_13c
    return v1

    nop

    :sswitch_data_13e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_121
        :pswitch_10f
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_c3
        :pswitch_bb
        :pswitch_ac
        :pswitch_a4
        :pswitch_9c
        :pswitch_94
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method
