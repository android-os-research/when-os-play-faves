.class public abstract Lcom/sec/ims/volte2/IImsCallEventListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCallEnded:I = 0xa

.field static final TRANSACTION_onCallEstablished:I = 0x7

.field static final TRANSACTION_onCallHeld:I = 0xb

.field static final TRANSACTION_onCallModified:I = 0x9

.field static final TRANSACTION_onCallModifyRequested:I = 0x8

.field static final TRANSACTION_onCallResumed:I = 0xc

.field static final TRANSACTION_onCallRinging:I = 0x5

.field static final TRANSACTION_onCallRingingBack:I = 0x6

.field static final TRANSACTION_onCallStarted:I = 0x3

.field static final TRANSACTION_onCallTrying:I = 0x4

.field static final TRANSACTION_onConferenceParticipantAdded:I = 0xd

.field static final TRANSACTION_onConferenceParticipantRemoved:I = 0xe

.field static final TRANSACTION_onDedicatedBearerEvent:I = 0x12

.field static final TRANSACTION_onIncomingCall:I = 0x2

.field static final TRANSACTION_onIncomingPreAlerting:I = 0x1

.field static final TRANSACTION_onRtpLossRateNoti:I = 0x13

.field static final TRANSACTION_onVideoAvailable:I = 0xf

.field static final TRANSACTION_onVideoHeld:I = 0x10

.field static final TRANSACTION_onVideoResumed:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "com.sec.ims.volte2.IImsCallEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_4
    const-string v0, "com.sec.ims.volte2.IImsCallEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsCallEventListener;

    if-eqz v1, :cond_14

    .line 91
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IImsCallEventListener;

    return-object v1

    .line 93
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsCallEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 97
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 101
    const-string v0, "com.sec.ims.volte2.IImsCallEventListener"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_d
    packed-switch p1, :pswitch_data_1b0

    .line 113
    packed-switch p1, :pswitch_data_1b6

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 300
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 304
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 306
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onRtpLossRateNoti(IFFI)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_1af

    .line 287
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":F
    .end local v5    # "_arg3":I
    :pswitch_37
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 289
    .local v2, "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    goto/16 :goto_1af

    .line 278
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_52
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 279
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onVideoResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_1af

    .line 269
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_65
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 270
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onVideoHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_1af

    .line 260
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_78
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 261
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onVideoAvailable(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_1af

    .line 249
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_8b
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 251
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_1af

    .line 238
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a2
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 240
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_1af

    .line 229
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b9
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 230
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_1af

    .line 216
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_cc
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 218
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 220
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 221
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;ZZ)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto/16 :goto_1af

    .line 205
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_e7
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 207
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto/16 :goto_1af

    .line 196
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":I
    :pswitch_fe
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 197
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto/16 :goto_1af

    .line 185
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_111
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 187
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto/16 :goto_1af

    .line 176
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":I
    :pswitch_128
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 177
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto/16 :goto_1af

    .line 167
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_13b
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 168
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallRingingBack(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_1af

    .line 158
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_14d
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 159
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallRinging(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_1af

    .line 149
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_15f
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 150
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallTrying(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_1af

    .line 140
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_171
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 141
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_1af

    .line 129
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_183
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 131
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_1af

    .line 118
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_199
    sget-object v2, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 120
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    nop

    .line 317
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/ImsCallInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_1af
    return v1

    :pswitch_data_1b0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_199
        :pswitch_183
        :pswitch_171
        :pswitch_15f
        :pswitch_14d
        :pswitch_13b
        :pswitch_128
        :pswitch_111
        :pswitch_fe
        :pswitch_e7
        :pswitch_cc
        :pswitch_b9
        :pswitch_a2
        :pswitch_8b
        :pswitch_78
        :pswitch_65
        :pswitch_52
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
