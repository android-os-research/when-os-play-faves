.class public abstract Lcom/mediatek/ims/internal/IMtkImsUt$Stub;
.super Landroid/os/Binder;
.source "IMtkImsUt.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getUtIMPUFromNetwork:I = 0x3

.field static final blacklist TRANSACTION_getUtInterface:I = 0x2

.field static final blacklist TRANSACTION_getXcapConflictErrorMessage:I = 0xa

.field static final blacklist TRANSACTION_isSupportCFT:I = 0x8

.field static final blacklist TRANSACTION_processECT:I = 0x7

.field static final blacklist TRANSACTION_queryCFForServiceClass:I = 0xb

.field static final blacklist TRANSACTION_queryCallForwardInTimeSlot:I = 0x4

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setupXcapUserAgentString:I = 0x9

.field static final blacklist TRANSACTION_updateCallBarringForServiceClass:I = 0x6

.field static final blacklist TRANSACTION_updateCallForwardInTimeSlot:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "com.mediatek.ims.internal.IMtkImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsUt;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsUt;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
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

    .line 99
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.mediatek.ims.internal.IMtkImsUt"

    .line 100
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 101
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_15
    packed-switch v7, :pswitch_data_118

    .line 111
    packed-switch v7, :pswitch_data_11e

    .line 235
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 107
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v11

    .line 222
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v3

    .line 229
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    goto/16 :goto_117

    .line 214
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getXcapConflictErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    goto/16 :goto_117

    .line 206
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->setupXcapUserAgentString(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_117

    .line 198
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->isSupportCFT()Z

    move-result v0

    .line 199
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto/16 :goto_117

    .line 188
    .end local v0    # "_result":Z
    :pswitch_66
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 190
    .local v0, "_arg0":Landroid/os/Message;
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 191
    .local v1, "_arg1":Landroid/os/Messenger;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->processECT(Landroid/os/Message;Landroid/os/Messenger;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto/16 :goto_117

    .line 170
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 174
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 176
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 179
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    goto/16 :goto_117

    .line 152
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 154
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 156
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 158
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 160
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v16

    .line 161
    .local v16, "_arg4":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I

    move-result v0

    .line 163
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    goto :goto_117

    .line 142
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[J
    :pswitch_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->queryCallForwardInTimeSlot(I)I

    move-result v1

    .line 145
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_117

    .line 134
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    goto :goto_117

    .line 125
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 128
    .local v1, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 130
    goto :goto_117

    .line 116
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUtListener;

    move-result-object v0

    .line 117
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsUtListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    nop

    .line 238
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsUtListener;
    :goto_117
    return v11

    :pswitch_data_118
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_105
        :pswitch_f3
        :pswitch_e8
        :pswitch_d6
        :pswitch_ac
        :pswitch_81
        :pswitch_66
        :pswitch_5a
        :pswitch_4b
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
