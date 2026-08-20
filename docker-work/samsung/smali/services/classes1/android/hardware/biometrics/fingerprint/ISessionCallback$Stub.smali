.class public abstract Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_onAcquired:I = 0x3

.field public static final TRANSACTION_onAuthenticationFailed:I = 0x7

.field public static final TRANSACTION_onAuthenticationSucceeded:I = 0x6

.field public static final TRANSACTION_onAuthenticatorIdInvalidated:I = 0xf

.field public static final TRANSACTION_onAuthenticatorIdRetrieved:I = 0xe

.field public static final TRANSACTION_onChallengeGenerated:I = 0x1

.field public static final TRANSACTION_onChallengeRevoked:I = 0x2

.field public static final TRANSACTION_onEnrollmentProgress:I = 0x5

.field public static final TRANSACTION_onEnrollmentsEnumerated:I = 0xc

.field public static final TRANSACTION_onEnrollmentsRemoved:I = 0xd

.field public static final TRANSACTION_onError:I = 0x4

.field public static final TRANSACTION_onInteractionDetected:I = 0xb

.field public static final TRANSACTION_onLockoutCleared:I = 0xa

.field public static final TRANSACTION_onLockoutPermanent:I = 0x9

.field public static final TRANSACTION_onLockoutTimed:I = 0x8

.field public static final TRANSACTION_onSessionClosed:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 86
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 98
    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    if-eqz v1, :cond_13

    .line 99
    check-cast v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-object v0

    .line 101
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 109
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_10c

    packed-switch p1, :pswitch_data_11a

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 117
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 122
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 128
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 268
    :pswitch_32
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onSessionClosed()V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 260
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 251
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 242
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 233
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 226
    :pswitch_76
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onInteractionDetected()V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 220
    :pswitch_7e
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutCleared()V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 214
    :pswitch_86
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutPermanent()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_10a

    .line 206
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onLockoutTimed(J)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 199
    :pswitch_9c
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticationFailed()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 189
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    sget-object p4, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 178
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onEnrollmentProgress(II)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 167
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 156
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, p1, p4}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onAcquired(BI)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 147
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_10a

    .line 138
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-interface {p0, v2, v3}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_10a
    return v1

    nop

    :sswitch_data_10c
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_ef
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a3
        :pswitch_9c
        :pswitch_8e
        :pswitch_86
        :pswitch_7e
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_32
    .end packed-switch
.end method
