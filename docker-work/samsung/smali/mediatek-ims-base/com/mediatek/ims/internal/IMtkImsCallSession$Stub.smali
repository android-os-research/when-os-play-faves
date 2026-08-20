.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSession.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_approveEccRedial:I = 0xd

.field static final blacklist TRANSACTION_callTerminated:I = 0x9

.field static final blacklist TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_getCallId:I = 0x2

.field static final blacklist TRANSACTION_getCallProfile:I = 0x3

.field static final blacklist TRANSACTION_getHeaderCallId:I = 0xa

.field static final blacklist TRANSACTION_getIImsCallSession:I = 0x5

.field static final blacklist TRANSACTION_isIncomingCallMultiparty:I = 0x7

.field static final blacklist TRANSACTION_removeLastParticipant:I = 0xb

.field static final blacklist TRANSACTION_resume:I = 0x8

.field static final blacklist TRANSACTION_setIImsCallSession:I = 0x6

.field static final blacklist TRANSACTION_setImsCallMode:I = 0xc

.field static final blacklist TRANSACTION_setListener:I = 0x4

.field static final blacklist TRANSACTION_videoRingtoneOperation:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-eqz v1, :cond_14

    .line 105
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v1

    .line 107
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 111
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_d
    packed-switch p1, :pswitch_data_c6

    .line 127
    packed-switch p1, :pswitch_data_cc

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v1

    .line 227
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->videoRingtoneOperation(ILjava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_c5

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 219
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->approveEccRedial(Z)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto/16 :goto_c5

    .line 209
    .end local v2    # "_arg0":Z
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setImsCallMode(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto/16 :goto_c5

    .line 202
    .end local v2    # "_arg0":I
    :pswitch_4d
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->removeLastParticipant()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto/16 :goto_c5

    .line 195
    :pswitch_55
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getHeaderCallId()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    goto :goto_c5

    .line 189
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_60
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->callTerminated()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_c5

    .line 183
    :pswitch_67
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->resume()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_c5

    .line 176
    :pswitch_6e
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->isIncomingCallMultiparty()Z

    move-result v2

    .line 177
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_c5

    .line 168
    .end local v2    # "_result":Z
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 169
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_c5

    .line 160
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_8b
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 161
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 163
    goto :goto_c5

    .line 152
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v2

    .line 153
    .local v2, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_c5

    .line 144
    .end local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    :pswitch_a8
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 145
    .local v2, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    goto :goto_c5

    .line 137
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_b3
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    goto :goto_c5

    .line 131
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_be
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->close()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 240
    :goto_c5
    return v1

    :pswitch_data_c6
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_be
        :pswitch_b3
        :pswitch_a8
        :pswitch_96
        :pswitch_8b
        :pswitch_79
        :pswitch_6e
        :pswitch_67
        :pswitch_60
        :pswitch_55
        :pswitch_4d
        :pswitch_3e
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
