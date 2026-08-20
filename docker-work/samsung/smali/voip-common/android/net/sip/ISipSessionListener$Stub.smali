.class public abstract Landroid/net/sip/ISipSessionListener$Stub;
.super Landroid/os/Binder;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipSessionListener"

.field static final greylist-max-o TRANSACTION_onCallBusy:I = 0x6

.field static final greylist-max-o TRANSACTION_onCallChangeFailed:I = 0x9

.field static final greylist-max-o TRANSACTION_onCallEnded:I = 0x5

.field static final greylist-max-o TRANSACTION_onCallEstablished:I = 0x4

.field static final greylist-max-o TRANSACTION_onCallTransferring:I = 0x7

.field static final greylist-max-o TRANSACTION_onCalling:I = 0x1

.field static final greylist-max-o TRANSACTION_onError:I = 0x8

.field static final greylist-max-o TRANSACTION_onRegistering:I = 0xa

.field static final greylist-max-o TRANSACTION_onRegistrationDone:I = 0xb

.field static final greylist-max-o TRANSACTION_onRegistrationFailed:I = 0xc

.field static final greylist-max-o TRANSACTION_onRegistrationTimeout:I = 0xd

.field static final greylist-max-o TRANSACTION_onRinging:I = 0x2

.field static final greylist-max-o TRANSACTION_onRingingBack:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "android.net.sip.ISipSessionListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "android.net.sip.ISipSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipSessionListener;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Landroid/net/sip/ISipSessionListener;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Landroid/net/sip/ISipSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const-string v0, "android.net.sip.ISipSessionListener"

    .line 165
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_d
    packed-switch p1, :pswitch_data_13e

    .line 176
    packed-switch p1, :pswitch_data_144

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 172
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    return v1

    .line 311
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 312
    .local v2, "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_13d

    .line 298
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 300
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_13d

    .line 287
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_13d

    .line 278
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_13d

    .line 265
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_13d

    .line 252
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 254
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_13d

    .line 241
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 243
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_13d

    .line 232
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 233
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCallBusy(Landroid/net/sip/ISipSession;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto :goto_13d

    .line 223
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 224
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEnded(Landroid/net/sip/ISipSession;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto :goto_13d

    .line 212
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 214
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipSessionListener$Stub;->onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_13d

    .line 203
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onRingingBack(Landroid/net/sip/ISipSession;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_13d

    .line 190
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 192
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    sget-object v3, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/sip/SipProfile;

    .line 194
    .local v3, "_arg1":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 195
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipSessionListener$Stub;->onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_13d

    .line 181
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    .end local v3    # "_arg1":Landroid/net/sip/SipProfile;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/ISipSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSession;

    move-result-object v2

    .line 182
    .restart local v2    # "_arg0":Landroid/net/sip/ISipSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipSessionListener$Stub;->onCalling(Landroid/net/sip/ISipSession;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    nop

    .line 322
    .end local v2    # "_arg0":Landroid/net/sip/ISipSession;
    :goto_13d
    return v1

    :pswitch_data_13e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_10d
        :pswitch_fb
        :pswitch_e5
        :pswitch_d3
        :pswitch_c1
        :pswitch_aa
        :pswitch_8f
        :pswitch_74
        :pswitch_61
        :pswitch_4a
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
