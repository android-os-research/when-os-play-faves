.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final greylist-max-o TRANSACTION_addCall:I = 0x2

.field static final greylist-max-o TRANSACTION_bringToForeground:I = 0x7

.field static final greylist-max-o TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onCanAddCallChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_onConnectionEvent:I = 0xa

.field static final greylist-max-o TRANSACTION_onHandoverComplete:I = 0xe

.field static final greylist-max-o TRANSACTION_onHandoverFailed:I = 0xd

.field static final greylist-max-o TRANSACTION_onRttInitiationFailure:I = 0xc

.field static final greylist-max-o TRANSACTION_onRttUpgradeRequest:I = 0xb

.field static final greylist-max-o TRANSACTION_setInCallAdapter:I = 0x1

.field static final greylist-max-o TRANSACTION_setPostDial:I = 0x4

.field static final greylist-max-o TRANSACTION_setPostDialWait:I = 0x5

.field static final greylist-max-o TRANSACTION_silenceRinger:I = 0x9

.field static final greylist-max-o TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallService;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 94
    packed-switch p0, :pswitch_data_3c

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 150
    :pswitch_5
    const-string/jumbo v0, "onHandoverComplete"

    return-object v0

    .line 146
    :pswitch_9
    const-string/jumbo v0, "onHandoverFailed"

    return-object v0

    .line 142
    :pswitch_d
    const-string/jumbo v0, "onRttInitiationFailure"

    return-object v0

    .line 138
    :pswitch_11
    const-string/jumbo v0, "onRttUpgradeRequest"

    return-object v0

    .line 134
    :pswitch_15
    const-string/jumbo v0, "onConnectionEvent"

    return-object v0

    .line 130
    :pswitch_19
    const-string/jumbo v0, "silenceRinger"

    return-object v0

    .line 126
    :pswitch_1d
    const-string/jumbo v0, "onCanAddCallChanged"

    return-object v0

    .line 122
    :pswitch_21
    const-string v0, "bringToForeground"

    return-object v0

    .line 118
    :pswitch_24
    const-string/jumbo v0, "onCallAudioStateChanged"

    return-object v0

    .line 114
    :pswitch_28
    const-string/jumbo v0, "setPostDialWait"

    return-object v0

    .line 110
    :pswitch_2c
    const-string/jumbo v0, "setPostDial"

    return-object v0

    .line 106
    :pswitch_30
    const-string/jumbo v0, "updateCall"

    return-object v0

    .line 102
    :pswitch_34
    const-string v0, "addCall"

    return-object v0

    .line 98
    :pswitch_37
    const-string/jumbo v0, "setInCallAdapter"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 517
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 161
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 165
    const-string v0, "com.android.internal.telecom.IInCallService"

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_d
    packed-switch p1, :pswitch_data_e6

    .line 177
    packed-switch p1, :pswitch_data_ec

    .line 304
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 297
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverComplete(Ljava/lang/String;)V

    .line 300
    goto/16 :goto_e5

    .line 287
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onHandoverFailed(Ljava/lang/String;I)V

    .line 292
    goto/16 :goto_e5

    .line 277
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttInitiationFailure(Ljava/lang/String;I)V

    .line 282
    goto/16 :goto_e5

    .line 267
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttUpgradeRequest(Ljava/lang/String;I)V

    .line 272
    goto/16 :goto_e5

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 260
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 262
    goto/16 :goto_e5

    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_70
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    .line 250
    goto/16 :goto_e5

    .line 242
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 243
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    .line 245
    goto :goto_e5

    .line 234
    .end local v2    # "_arg0":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 235
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    .line 237
    goto :goto_e5

    .line 226
    .end local v2    # "_arg0":Z
    :pswitch_8b
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    .line 227
    .local v2, "_arg0":Landroid/telecom/CallAudioState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 229
    goto :goto_e5

    .line 216
    .end local v2    # "_arg0":Landroid/telecom/CallAudioState;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    goto :goto_e5

    .line 206
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    goto :goto_e5

    .line 198
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b8
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 199
    .local v2, "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    .line 201
    goto :goto_e5

    .line 190
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_c7
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    .line 191
    .restart local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    .line 193
    goto :goto_e5

    .line 182
    .end local v2    # "_arg0":Landroid/telecom/ParcelableCall;
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v2

    .line 183
    .local v2, "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    .line 185
    nop

    .line 307
    .end local v2    # "_arg0":Lcom/android/internal/telecom/IInCallAdapter;
    :goto_e5
    return v1

    :pswitch_data_e6
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_c7
        :pswitch_b8
        :pswitch_a9
        :pswitch_9a
        :pswitch_8b
        :pswitch_80
        :pswitch_75
        :pswitch_70
        :pswitch_58
        :pswitch_48
        :pswitch_38
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
