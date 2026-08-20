.class public abstract Lcom/gsma/services/rcs/chat/IChatMessage$Stub;
.super Landroid/os/Binder;
.source "IChatMessage.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatMessage$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getChatId:I = 0xd

.field static final TRANSACTION_getContact:I = 0x1

.field static final TRANSACTION_getContent:I = 0x3

.field static final TRANSACTION_getDirection:I = 0x6

.field static final TRANSACTION_getId:I = 0x2

.field static final TRANSACTION_getMaapTrafficType:I = 0x5

.field static final TRANSACTION_getMimeType:I = 0x4

.field static final TRANSACTION_getReasonCode:I = 0xc

.field static final TRANSACTION_getStatus:I = 0xb

.field static final TRANSACTION_getTimestamp:I = 0x7

.field static final TRANSACTION_getTimestampDelivered:I = 0x9

.field static final TRANSACTION_getTimestampDisplayed:I = 0xa

.field static final TRANSACTION_getTimestampSent:I = 0x8

.field static final TRANSACTION_isExpiredDelivery:I = 0xf

.field static final TRANSACTION_isRead:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "com.gsma.services.rcs.chat.IChatMessage"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IChatMessage"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatMessage;

    if-eqz v1, :cond_14

    .line 95
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IChatMessage;

    return-object v1

    .line 97
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IChatMessage$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
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

    .line 105
    const-string v0, "com.gsma.services.rcs.chat.IChatMessage"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    packed-switch p1, :pswitch_data_c8

    .line 117
    packed-switch p1, :pswitch_data_ce

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 219
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->isExpiredDelivery()Z

    move-result v2

    .line 220
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto/16 :goto_c6

    .line 212
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->isRead()Z

    move-result v2

    .line 213
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_c6

    .line 205
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    goto/16 :goto_c6

    .line 198
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getReasonCode()I

    move-result v2

    .line 199
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    goto/16 :goto_c6

    .line 191
    .end local v2    # "_result":I
    :pswitch_4c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getStatus()I

    move-result v2

    .line 192
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    goto/16 :goto_c6

    .line 184
    .end local v2    # "_result":I
    :pswitch_58
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestampDisplayed()J

    move-result-wide v2

    .line 185
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    goto :goto_c6

    .line 177
    .end local v2    # "_result":J
    :pswitch_63
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestampDelivered()J

    move-result-wide v2

    .line 178
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    goto :goto_c6

    .line 170
    .end local v2    # "_result":J
    :pswitch_6e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestampSent()J

    move-result-wide v2

    .line 171
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    goto :goto_c6

    .line 163
    .end local v2    # "_result":J
    :pswitch_79
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getTimestamp()J

    move-result-wide v2

    .line 164
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    goto :goto_c6

    .line 156
    .end local v2    # "_result":J
    :pswitch_84
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getDirection()I

    move-result v2

    .line 157
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    goto :goto_c6

    .line 149
    .end local v2    # "_result":I
    :pswitch_8f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    goto :goto_c6

    .line 142
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    goto :goto_c6

    .line 135
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    goto :goto_c6

    .line 128
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_b0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getId()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    goto :goto_c6

    .line 121
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_bb
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatMessage$Stub;->getContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 122
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    nop

    .line 229
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :goto_c6
    return v1

    nop

    :pswitch_data_c8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
