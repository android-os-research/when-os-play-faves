.class public abstract Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "IVideoServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVideoServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVideoServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeCameraCapabilities:I = 0xa

.field static final TRANSACTION_getSession:I = 0x1

.field static final TRANSACTION_onCameraState:I = 0x2

.field static final TRANSACTION_onChangeCallDataUsage:I = 0xd

.field static final TRANSACTION_onChangePeerDimension:I = 0x8

.field static final TRANSACTION_onEmojiState:I = 0xc

.field static final TRANSACTION_onRecordState:I = 0xb

.field static final TRANSACTION_onVideoOrientChanged:I = 0x7

.field static final TRANSACTION_onVideoQualityChanged:I = 0x4

.field static final TRANSACTION_onVideoState:I = 0x3

.field static final TRANSACTION_receiveSessionModifyRequest:I = 0x5

.field static final TRANSACTION_receiveSessionModifyResponse:I = 0x6

.field static final TRANSACTION_setVideoPause:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "com.sec.ims.volte2.IVideoServiceEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
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

    .line 84
    const-string v0, "com.sec.ims.volte2.IVideoServiceEventListener"

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_d
    packed-switch p1, :pswitch_data_120

    .line 96
    packed-switch p1, :pswitch_data_126

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 92
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 235
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 238
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onChangeCallDataUsage(IJ)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_11e

    .line 224
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onEmojiState(II)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto/16 :goto_11e

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onRecordState(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto/16 :goto_11e

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->changeCameraCapabilities(III)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto/16 :goto_11e

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 192
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->setVideoPause(IZ)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto/16 :goto_11e

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onChangePeerDimension(III)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto/16 :goto_11e

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onVideoOrientChanged(I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto/16 :goto_11e

    .line 152
    .end local v2    # "_arg0":I
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg1":I
    sget-object v4, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/data/CallProfile;

    .line 158
    .local v4, "_arg2":Lcom/sec/ims/volte2/data/CallProfile;
    sget-object v5, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/data/CallProfile;

    .line 159
    .local v5, "_arg3":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_11e

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v5    # "_arg3":Lcom/sec/ims/volte2/data/CallProfile;
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/data/CallProfile;

    .line 144
    .local v3, "_arg1":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_11e

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/data/CallProfile;
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onVideoQualityChanged(II)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_11e

    .line 119
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onVideoState(II)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    goto :goto_11e

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->onCameraState(II)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_11e

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_113
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->getSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    .line 101
    .local v2, "_result":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 103
    nop

    .line 248
    .end local v2    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    :goto_11e
    return v1

    nop

    :pswitch_data_120
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_113
        :pswitch_101
        :pswitch_ef
        :pswitch_dd
        :pswitch_c7
        :pswitch_a5
        :pswitch_96
        :pswitch_7f
        :pswitch_6c
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
