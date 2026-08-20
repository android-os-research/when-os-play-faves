.class public abstract Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;
.super Landroid/os/Binder;
.source "IOneToOneChat.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IOneToOneChat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IOneToOneChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_isAllowedToSendMessage:I = 0x7

.field static final TRANSACTION_openChat:I = 0x1

.field static final TRANSACTION_resendMessage:I = 0x6

.field static final TRANSACTION_sendGeoloc:I = 0x4

.field static final TRANSACTION_sendIsComposingEvent:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x3

.field static final TRANSACTION_setComposingStatus:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChat"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChat;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IOneToOneChat;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IOneToOneChat;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
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

    .line 73
    const-string v0, "com.gsma.services.rcs.chat.IOneToOneChat"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_d
    packed-switch p1, :pswitch_data_8c

    .line 85
    packed-switch p1, :pswitch_data_92

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 148
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 149
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->setComposingStatus(Z)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    goto :goto_8b

    .line 140
    .end local v2    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->isAllowedToSendMessage()Z

    move-result v2

    .line 141
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 143
    goto :goto_8b

    .line 132
    .end local v2    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->resendMessage(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_8b

    .line 123
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 124
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->sendIsComposingEvent(Z)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_8b

    .line 113
    .end local v2    # "_arg0":Z
    :pswitch_51
    sget-object v2, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/Geoloc;

    .line 114
    .local v2, "_arg0":Lcom/gsma/services/rcs/Geoloc;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 116
    .local v3, "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 118
    goto :goto_8b

    .line 103
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/Geoloc;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v3

    .line 106
    .restart local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 108
    goto :goto_8b

    .line 95
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/chat/IChatMessage;
    :pswitch_79
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 96
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 98
    goto :goto_8b

    .line 89
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_84
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;->openChat()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    nop

    .line 159
    :goto_8b
    return v1

    :pswitch_data_8c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_84
        :pswitch_79
        :pswitch_67
        :pswitch_51
        :pswitch_43
        :pswitch_35
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
