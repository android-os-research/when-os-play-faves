.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callSessionBusy:I = 0x7

.field static final blacklist TRANSACTION_callSessionCalling:I = 0x8

.field static final blacklist TRANSACTION_callSessionMergeComplete:I = 0x4

.field static final blacklist TRANSACTION_callSessionMergeStarted:I = 0x3

.field static final blacklist TRANSACTION_callSessionNotificationRingtoneReceived:I = 0xa

.field static final blacklist TRANSACTION_callSessionRedialEcc:I = 0x5

.field static final blacklist TRANSACTION_callSessionRinging:I = 0x6

.field static final blacklist TRANSACTION_callSessionRttEventReceived:I = 0x2

.field static final blacklist TRANSACTION_callSessionTextCapabilityChanged:I = 0x1

.field static final blacklist TRANSACTION_callSessionVideoRingtoneEventReceived:I = 0x9


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    .line 75
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 76
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_13
    packed-switch v7, :pswitch_data_12a

    .line 86
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_130

    .line 206
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 82
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v10

    .line 194
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 196
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionNotificationRingtoneReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto/16 :goto_128

    .line 181
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 183
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto/16 :goto_128

    .line 172
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 173
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto/16 :goto_128

    .line 163
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto/16 :goto_128

    .line 152
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .line 155
    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto/16 :goto_128

    .line 141
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 144
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto/16 :goto_128

    .line 132
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Z
    :pswitch_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_128

    .line 119
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 123
    .local v1, "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 124
    .local v2, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_128

    .line 108
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 110
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_128

    .line 91
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v12

    .line 93
    .local v12, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 95
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 97
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 99
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 100
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    nop

    .line 209
    .end local v12    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_128
    return v10

    nop

    :pswitch_data_12a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_e8
        :pswitch_c6
        :pswitch_b4
        :pswitch_9d
        :pswitch_82
        :pswitch_6f
        :pswitch_5c
        :pswitch_41
        :pswitch_26
    .end packed-switch
.end method
