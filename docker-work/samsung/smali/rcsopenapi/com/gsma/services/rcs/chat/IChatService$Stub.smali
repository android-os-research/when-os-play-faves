.class public abstract Lcom/gsma/services/rcs/chat/IChatService$Stub;
.super Landroid/os/Binder;
.source "IChatService.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addGroupChatEventListener:I = 0x11

.field static final TRANSACTION_addOneToOneChatEventListener:I = 0x13

.field static final TRANSACTION_canInitiateGroupChat:I = 0x7

.field static final TRANSACTION_clearMessageDeliveryExpiration:I = 0x18

.field static final TRANSACTION_deleteGroupChat:I = 0xe

.field static final TRANSACTION_deleteGroupChats:I = 0xc

.field static final TRANSACTION_deleteMessage:I = 0xf

.field static final TRANSACTION_deleteOneToOneChat:I = 0xd

.field static final TRANSACTION_deleteOneToOneChats:I = 0xb

.field static final TRANSACTION_getChatMessage:I = 0x10

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getGroupChat:I = 0x9

.field static final TRANSACTION_getOneToOneChat:I = 0x5

.field static final TRANSACTION_getServiceVersion:I = 0x19

.field static final TRANSACTION_getUndeliveredMessages:I = 0x16

.field static final TRANSACTION_initiateGroupChat:I = 0x8

.field static final TRANSACTION_isAllowedToInitiateGroupChat:I = 0x6

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markMessageAsRead:I = 0xa

.field static final TRANSACTION_markUndeliveredMessagesAsProcessed:I = 0x17

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeGroupChatEventListener:I = 0x12

.field static final TRANSACTION_removeOneToOneChatEventListener:I = 0x14

.field static final TRANSACTION_setRespondToDisplayReports:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 107
    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 115
    if-nez p0, :cond_4

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v1, :cond_14

    .line 120
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IChatService;

    return-object v1

    .line 122
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 126
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 130
    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    packed-switch p1, :pswitch_data_1ba

    .line 142
    packed-switch p1, :pswitch_data_1c0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 358
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getServiceVersion()I

    move-result v2

    .line 359
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    goto/16 :goto_1b8

    .line 350
    .end local v2    # "_result":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 351
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->clearMessageDeliveryExpiration(Ljava/util/List;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_1b8

    .line 341
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->markUndeliveredMessagesAsProcessed(Ljava/util/List;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_1b8

    .line 331
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_46
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 332
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v3

    .line 334
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 336
    goto/16 :goto_1b8

    .line 322
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 323
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->setRespondToDisplayReports(Z)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_1b8

    .line 313
    .end local v2    # "_arg0":Z
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    move-result-object v2

    .line 314
    .local v2, "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_1b8

    .line 304
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    move-result-object v2

    .line 305
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    goto/16 :goto_1b8

    .line 295
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;

    move-result-object v2

    .line 296
    .local v2, "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_1b8

    .line 286
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;

    move-result-object v2

    .line 287
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_1b8

    .line 276
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/chat/IGroupChatListener;
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 279
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 281
    goto/16 :goto_1b8

    .line 267
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteMessage(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_1b8

    .line 258
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteGroupChat(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_1b8

    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_e9
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 250
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_1b8

    .line 242
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_fc
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteGroupChats()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_1b8

    .line 236
    :pswitch_104
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteOneToOneChats()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_1b8

    .line 228
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->markMessageAsRead(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_1b8

    .line 218
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v3

    .line 221
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 223
    goto/16 :goto_1b8

    .line 206
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    :pswitch_12e
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->initiateGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v4

    .line 211
    .local v4, "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 213
    goto/16 :goto_1b8

    .line 196
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/ContactId;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/gsma/services/rcs/chat/IGroupChat;
    :pswitch_147
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 197
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->canInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 199
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto :goto_1b8

    .line 188
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Z
    :pswitch_15d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->isAllowedToInitiateGroupChat()Z

    move-result v2

    .line 189
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto :goto_1b8

    .line 179
    .end local v2    # "_result":Z
    :pswitch_168
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 180
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object v3

    .line 182
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IOneToOneChat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 184
    goto :goto_1b8

    .line 171
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IOneToOneChat;
    :pswitch_17e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    move-result-object v2

    .line 172
    .local v2, "_result":Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 174
    goto :goto_1b8

    .line 163
    .end local v2    # "_result":Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 164
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_1b8

    .line 154
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 155
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    goto :goto_1b8

    .line 146
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_1ad
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 147
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    nop

    .line 368
    .end local v2    # "_result":Z
    :goto_1b8
    return v1

    nop

    :pswitch_data_1ba
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_1ad
        :pswitch_19b
        :pswitch_189
        :pswitch_17e
        :pswitch_168
        :pswitch_15d
        :pswitch_147
        :pswitch_12e
        :pswitch_11b
        :pswitch_10c
        :pswitch_104
        :pswitch_fc
        :pswitch_e9
        :pswitch_da
        :pswitch_cb
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_6c
        :pswitch_5d
        :pswitch_46
        :pswitch_37
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
