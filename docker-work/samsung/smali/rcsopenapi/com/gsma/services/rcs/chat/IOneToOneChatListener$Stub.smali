.class public abstract Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;
.super Landroid/os/Binder;
.source "IOneToOneChatListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToOneChatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onComposingEvent:I = 0x2

.field static final TRANSACTION_onMessageStatusChanged:I = 0x1

.field static final TRANSACTION_onMessagesDeleted:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChatListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChatListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 54
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.gsma.services.rcs.chat.IOneToOneChatListener"

    .line 55
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 56
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_13
    packed-switch v7, :pswitch_data_8a

    .line 66
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_90

    .line 109
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 62
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v10

    .line 99
    :pswitch_26
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 101
    .local v0, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {v6, v0, v1}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->onMessagesDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    goto :goto_88

    .line 88
    .end local v0    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3c
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    .line 90
    .restart local v0    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 91
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {v6, v0, v1}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->onComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    goto :goto_88

    .line 71
    .end local v0    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v1    # "_arg1":Z
    :pswitch_52
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/gsma/services/rcs/contact/ContactId;

    .line 73
    .local v12, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "_arg2":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;

    .line 79
    .local v15, "_arg3":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;

    .line 80
    .local v16, "_arg4":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->onMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    nop

    .line 112
    .end local v12    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;
    .end local v16    # "_arg4":Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;
    :goto_88
    return v10

    nop

    :pswitch_data_8a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_52
        :pswitch_3c
        :pswitch_26
    .end packed-switch
.end method
