.class public abstract Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;
.super Landroid/os/Binder;
.source "IGroupChatListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IGroupChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IGroupChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onComposingEvent:I = 0x3

.field static final TRANSACTION_onDeleted:I = 0x6

.field static final TRANSACTION_onMessageGroupDeliveryInfoChanged:I = 0x4

.field static final TRANSACTION_onMessageStatusChanged:I = 0x2

.field static final TRANSACTION_onMessagesDeleted:I = 0x7

.field static final TRANSACTION_onParticipantStatusChanged:I = 0x5

.field static final TRANSACTION_onStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "com.gsma.services.rcs.chat.IGroupChatListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IGroupChatListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IGroupChatListener;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "com.gsma.services.rcs.chat.IGroupChatListener"

    .line 101
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_13

    const v0, 0xffffff

    if-gt v8, v0, :cond_13

    .line 102
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_13
    packed-switch v8, :pswitch_data_f0

    .line 112
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_f6

    .line 211
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 108
    :pswitch_20
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v11

    .line 201
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 204
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v7, v0, v1}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onMessagesDeleted(Ljava/lang/String;Ljava/util/List;)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto/16 :goto_ef

    .line 192
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v7, v0}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onDeleted(Ljava/util/List;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto/16 :goto_ef

    .line 179
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 183
    .local v1, "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    .line 184
    .local v2, "_arg2":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {v7, v0, v1, v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onParticipantStatusChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto/16 :goto_ef

    .line 160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v2    # "_arg2":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, "_arg0":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/gsma/services/rcs/contact/ContactId;

    .line 164
    .local v14, "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 170
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 171
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onMessageGroupDeliveryInfoChanged(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;II)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    goto :goto_ef

    .line 147
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 151
    .restart local v1    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 152
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v7, v0, v1, v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onComposingEvent(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Z)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_ef

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v2    # "_arg2":Z
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 138
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 139
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onMessageStatusChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_ef

    .line 117
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {v7, v0, v1, v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->onStateChanged(Ljava/lang/String;II)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    nop

    .line 214
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :goto_ef
    return v11

    :pswitch_data_f0
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_b3
        :pswitch_99
        :pswitch_67
        :pswitch_48
        :pswitch_39
        :pswitch_26
    .end packed-switch
.end method
