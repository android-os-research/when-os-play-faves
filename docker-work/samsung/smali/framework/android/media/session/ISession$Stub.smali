.class public abstract Landroid/media/session/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/media/session/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISession"

.field static final blacklist TRANSACTION_destroySession:I = 0x8

.field static final blacklist TRANSACTION_getBinderForSetQueue:I = 0xc

.field static final greylist-max-o TRANSACTION_getController:I = 0x2

.field static final blacklist TRANSACTION_resetQueue:I = 0xb

.field static final greylist-max-o TRANSACTION_sendEvent:I = 0x1

.field static final greylist-max-o TRANSACTION_setActive:I = 0x4

.field static final greylist-max-o TRANSACTION_setCurrentVolume:I = 0x12

.field static final greylist-max-o TRANSACTION_setExtras:I = 0xe

.field static final greylist-max-o TRANSACTION_setFlags:I = 0x3

.field static final greylist-max-o TRANSACTION_setLaunchPendingIntent:I = 0x7

.field static final blacklist TRANSACTION_setMediaButtonBroadcastReceiver:I = 0x6

.field static final greylist-max-o TRANSACTION_setMediaButtonReceiver:I = 0x5

.field static final greylist-max-o TRANSACTION_setMetadata:I = 0x9

.field static final greylist-max-o TRANSACTION_setPlaybackState:I = 0xa

.field static final greylist-max-o TRANSACTION_setPlaybackToLocal:I = 0x10

.field static final greylist-max-o TRANSACTION_setPlaybackToRemote:I = 0x11

.field static final greylist-max-o TRANSACTION_setQueueTitle:I = 0xd

.field static final greylist-max-o TRANSACTION_setRatingType:I = 0xf


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "android.media.session.ISession"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_4
    const-string v0, "android.media.session.ISession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISession;

    if-eqz v1, :cond_14

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/media/session/ISession;

    return-object v1

    .line 98
    :cond_14
    new-instance v1, Landroid/media/session/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_40

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 179
    :pswitch_5
    const-string v0, "setCurrentVolume"

    return-object v0

    .line 175
    :pswitch_8
    const-string/jumbo v0, "setPlaybackToRemote"

    return-object v0

    .line 171
    :pswitch_c
    const-string/jumbo v0, "setPlaybackToLocal"

    return-object v0

    .line 167
    :pswitch_10
    const-string/jumbo v0, "setRatingType"

    return-object v0

    .line 163
    :pswitch_14
    const-string v0, "setExtras"

    return-object v0

    .line 159
    :pswitch_17
    const-string/jumbo v0, "setQueueTitle"

    return-object v0

    .line 155
    :pswitch_1b
    const-string v0, "getBinderForSetQueue"

    return-object v0

    .line 151
    :pswitch_1e
    const-string v0, "resetQueue"

    return-object v0

    .line 147
    :pswitch_21
    const-string/jumbo v0, "setPlaybackState"

    return-object v0

    .line 143
    :pswitch_25
    const-string v0, "setMetadata"

    return-object v0

    .line 139
    :pswitch_28
    const-string v0, "destroySession"

    return-object v0

    .line 135
    :pswitch_2b
    const-string v0, "setLaunchPendingIntent"

    return-object v0

    .line 131
    :pswitch_2e
    const-string v0, "setMediaButtonBroadcastReceiver"

    return-object v0

    .line 127
    :pswitch_31
    const-string v0, "setMediaButtonReceiver"

    return-object v0

    .line 123
    :pswitch_34
    const-string v0, "setActive"

    return-object v0

    .line 119
    :pswitch_37
    const-string v0, "setFlags"

    return-object v0

    .line 115
    :pswitch_3a
    const-string v0, "getController"

    return-object v0

    .line 111
    :pswitch_3d
    const-string v0, "sendEvent"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 700
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 190
    invoke-static {p1}, Landroid/media/session/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    const-string v0, "android.media.session.ISession"

    .line 195
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 196
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    :cond_d
    packed-switch p1, :pswitch_data_148

    .line 206
    packed-switch p1, :pswitch_data_14e

    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 202
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v1

    .line 364
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setCurrentVolume(I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_147

    .line 351
    .end local v2    # "_arg0":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/session/ISession$Stub;->setPlaybackToRemote(IILjava/lang/String;)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_147

    .line 342
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_42
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 343
    .local v2, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    goto/16 :goto_147

    .line 333
    .end local v2    # "_arg0":Landroid/media/AudioAttributes;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setRatingType(I)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_147

    .line 324
    .end local v2    # "_arg0":I
    :pswitch_64
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 325
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setExtras(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_147

    .line 315
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_77
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 316
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto/16 :goto_147

    .line 307
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_8a
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->getBinderForSetQueue()Landroid/os/IBinder;

    move-result-object v2

    .line 308
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 310
    goto/16 :goto_147

    .line 301
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_96
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->resetQueue()V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_147

    .line 293
    :pswitch_9e
    sget-object v2, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/PlaybackState;

    .line 294
    .local v2, "_arg0":Landroid/media/session/PlaybackState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_147

    .line 280
    .end local v2    # "_arg0":Landroid/media/session/PlaybackState;
    :pswitch_b1
    sget-object v2, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    .line 282
    .local v2, "_arg0":Landroid/media/MediaMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 284
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/session/ISession$Stub;->setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_147

    .line 273
    .end local v2    # "_arg0":Landroid/media/MediaMetadata;
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Ljava/lang/String;
    :pswitch_cc
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->destroySession()V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto/16 :goto_147

    .line 265
    :pswitch_d4
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 266
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto :goto_147

    .line 256
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_e6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 257
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_147

    .line 247
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_f8
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 248
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto :goto_147

    .line 238
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 239
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setActive(Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_147

    .line 229
    .end local v2    # "_arg0":Z
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/media/session/ISession$Stub;->setFlags(I)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_147

    .line 221
    .end local v2    # "_arg0":I
    :pswitch_126
    invoke-virtual {p0}, Landroid/media/session/ISession$Stub;->getController()Landroid/media/session/ISessionController;

    move-result-object v2

    .line 222
    .local v2, "_result":Landroid/media/session/ISessionController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 224
    goto :goto_147

    .line 211
    .end local v2    # "_result":Landroid/media/session/ISessionController;
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 214
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISession$Stub;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    nop

    .line 375
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_147
    return v1

    :pswitch_data_148
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_131
        :pswitch_126
        :pswitch_118
        :pswitch_10a
        :pswitch_f8
        :pswitch_e6
        :pswitch_d4
        :pswitch_cc
        :pswitch_b1
        :pswitch_9e
        :pswitch_96
        :pswitch_8a
        :pswitch_77
        :pswitch_64
        :pswitch_55
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
