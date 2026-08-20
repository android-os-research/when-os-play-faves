.class public abstract Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IChatServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getChatTimeout:I = 0x3

.field static final TRANSACTION_getGeolocExpirationTime:I = 0xe

.field static final TRANSACTION_getGeolocLabelMaxLength:I = 0xd

.field static final TRANSACTION_getGroupChatMaxParticipants:I = 0x4

.field static final TRANSACTION_getGroupChatMessageMaxLength:I = 0x7

.field static final TRANSACTION_getGroupChatMinParticipants:I = 0x5

.field static final TRANSACTION_getGroupChatSubjectMaxLength:I = 0x8

.field static final TRANSACTION_getIsComposingTimeout:I = 0xc

.field static final TRANSACTION_getOneToOneChatMessageMaxLength:I = 0x6

.field static final TRANSACTION_isChatSf:I = 0x1

.field static final TRANSACTION_isChatWarnSF:I = 0x2

.field static final TRANSACTION_isGroupChatSupported:I = 0xf

.field static final TRANSACTION_isRespondToDisplayReportsEnabled:I = 0xa

.field static final TRANSACTION_isSmsFallback:I = 0x9

.field static final TRANSACTION_setRespondToDisplayReports:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 89
    if-nez p0, :cond_4

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_4
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v1, :cond_14

    .line 94
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    return-object v1

    .line 96
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 100
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    .line 105
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_d
    packed-switch p1, :pswitch_data_ca

    .line 116
    packed-switch p1, :pswitch_data_d0

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 220
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isGroupChatSupported()Z

    move-result v2

    .line 221
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto/16 :goto_c9

    .line 213
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocExpirationTime()I

    move-result v2

    .line 214
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    goto/16 :goto_c9

    .line 206
    .end local v2    # "_result":I
    :pswitch_34
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocLabelMaxLength()I

    move-result v2

    .line 207
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    goto/16 :goto_c9

    .line 199
    .end local v2    # "_result":I
    :pswitch_40
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getIsComposingTimeout()I

    move-result v2

    .line 200
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    goto/16 :goto_c9

    .line 191
    .end local v2    # "_result":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 192
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setRespondToDisplayReports(Z)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto/16 :goto_c9

    .line 183
    .end local v2    # "_arg0":Z
    :pswitch_5b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isRespondToDisplayReportsEnabled()Z

    move-result v2

    .line 184
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_c9

    .line 176
    .end local v2    # "_result":Z
    :pswitch_66
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isSmsFallback()Z

    move-result v2

    .line 177
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_c9

    .line 169
    .end local v2    # "_result":Z
    :pswitch_71
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatSubjectMaxLength()I

    move-result v2

    .line 170
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    goto :goto_c9

    .line 162
    .end local v2    # "_result":I
    :pswitch_7c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMessageMaxLength()I

    move-result v2

    .line 163
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    goto :goto_c9

    .line 155
    .end local v2    # "_result":I
    :pswitch_87
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getOneToOneChatMessageMaxLength()I

    move-result v2

    .line 156
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    goto :goto_c9

    .line 148
    .end local v2    # "_result":I
    :pswitch_92
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMinParticipants()I

    move-result v2

    .line 149
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_c9

    .line 141
    .end local v2    # "_result":I
    :pswitch_9d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMaxParticipants()I

    move-result v2

    .line 142
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    goto :goto_c9

    .line 134
    .end local v2    # "_result":I
    :pswitch_a8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getChatTimeout()I

    move-result v2

    .line 135
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    goto :goto_c9

    .line 127
    .end local v2    # "_result":I
    :pswitch_b3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatWarnSF()Z

    move-result v2

    .line 128
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    goto :goto_c9

    .line 120
    .end local v2    # "_result":Z
    :pswitch_be
    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatSf()Z

    move-result v2

    .line 121
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    nop

    .line 230
    .end local v2    # "_result":Z
    :goto_c9
    return v1

    :pswitch_data_ca
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_be
        :pswitch_b3
        :pswitch_a8
        :pswitch_9d
        :pswitch_92
        :pswitch_87
        :pswitch_7c
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
