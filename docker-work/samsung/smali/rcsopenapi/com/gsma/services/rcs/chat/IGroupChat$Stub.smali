.class public abstract Lcom/gsma/services/rcs/chat/IGroupChat$Stub;
.super Landroid/os/Binder;
.source "IGroupChat.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IGroupChat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IGroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IGroupChat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addParticipants:I = 0xf

.field static final TRANSACTION_canAddListParticipants:I = 0xe

.field static final TRANSACTION_canAddParticipants:I = 0xd

.field static final TRANSACTION_canSendMessage:I = 0x9

.field static final TRANSACTION_getChatId:I = 0x2

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getMaxParticipants:I = 0x10

.field static final TRANSACTION_getParticipants:I = 0x4

.field static final TRANSACTION_getReasonCode:I = 0x7

.field static final TRANSACTION_getRemoteContact:I = 0x12

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_getSubject:I = 0x3

.field static final TRANSACTION_getTimestamp:I = 0x1

.field static final TRANSACTION_isAllowedToLeave:I = 0x11

.field static final TRANSACTION_leave:I = 0x13

.field static final TRANSACTION_openChat:I = 0x8

.field static final TRANSACTION_sendGeoloc:I = 0xb

.field static final TRANSACTION_sendIsComposingEvent:I = 0xc

.field static final TRANSACTION_sendMessage:I = 0xa

.field static final TRANSACTION_setComposingStatus:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "com.gsma.services.rcs.chat.IGroupChat"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChat;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IGroupChat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IGroupChat;

    if-eqz v1, :cond_14

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IGroupChat;

    return-object v1

    .line 112
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IGroupChat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 116
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 120
    const-string v0, "com.gsma.services.rcs.chat.IGroupChat"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    packed-switch p1, :pswitch_data_122

    .line 132
    packed-switch p1, :pswitch_data_128

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 281
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 282
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->setComposingStatus(Z)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_120

    .line 274
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->leave()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_120

    .line 267
    :pswitch_33
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    goto/16 :goto_120

    .line 260
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->isAllowedToLeave()Z

    move-result v2

    .line 261
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    goto/16 :goto_120

    .line 253
    .end local v2    # "_result":Z
    :pswitch_4b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getMaxParticipants()I

    move-result v2

    .line 254
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto/16 :goto_120

    .line 245
    .end local v2    # "_result":I
    :pswitch_57
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->addParticipants(Ljava/util/List;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_120

    .line 235
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    :pswitch_68
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 236
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->canAddListParticipants(Ljava/util/List;)Z

    move-result v3

    .line 238
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 240
    goto/16 :goto_120

    .line 227
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    .end local v3    # "_result":Z
    :pswitch_7d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->canAddParticipants()Z

    move-result v2

    .line 228
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto/16 :goto_120

    .line 219
    .end local v2    # "_result":Z
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 220
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->sendIsComposingEvent(Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    goto/16 :goto_120

    .line 209
    .end local v2    # "_arg0":Z
    :pswitch_98
    sget-object v2, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/Geoloc;

    .line 210
    .local v2, "_arg0":Lcom/gsma/services/rcs/Geoloc;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 212
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 214
    goto/16 :goto_120

    .line 199
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/Geoloc;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 202
    .restart local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 204
    goto :goto_120

    .line 191
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_c1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->canSendMessage()Z

    move-result v2

    .line 192
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    goto :goto_120

    .line 185
    .end local v2    # "_result":Z
    :pswitch_cc
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->openChat()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_120

    .line 178
    :pswitch_d3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getReasonCode()Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;

    move-result-object v2

    .line 179
    .local v2, "_result":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 181
    goto :goto_120

    .line 171
    .end local v2    # "_result":Lcom/gsma/services/rcs/chat/GroupChat$ReasonCode;
    :pswitch_de
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getState()Lcom/gsma/services/rcs/chat/GroupChat$State;

    move-result-object v2

    .line 172
    .local v2, "_result":Lcom/gsma/services/rcs/chat/GroupChat$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 174
    goto :goto_120

    .line 164
    .end local v2    # "_result":Lcom/gsma/services/rcs/chat/GroupChat$State;
    :pswitch_e9
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getDirection()I

    move-result v2

    .line 165
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    goto :goto_120

    .line 157
    .end local v2    # "_result":I
    :pswitch_f4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getParticipants()Ljava/util/Map;

    move-result-object v2

    .line 158
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 160
    goto :goto_120

    .line 150
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_ff
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    goto :goto_120

    .line 143
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_10a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    goto :goto_120

    .line 136
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_115
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IGroupChat$Stub;->getTimestamp()J

    move-result-wide v2

    .line 137
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    nop

    .line 292
    .end local v2    # "_result":J
    :goto_120
    return v1

    nop

    :pswitch_data_122
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_115
        :pswitch_10a
        :pswitch_ff
        :pswitch_f4
        :pswitch_e9
        :pswitch_de
        :pswitch_d3
        :pswitch_cc
        :pswitch_c1
        :pswitch_af
        :pswitch_98
        :pswitch_89
        :pswitch_7d
        :pswitch_68
        :pswitch_57
        :pswitch_4b
        :pswitch_3f
        :pswitch_33
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
