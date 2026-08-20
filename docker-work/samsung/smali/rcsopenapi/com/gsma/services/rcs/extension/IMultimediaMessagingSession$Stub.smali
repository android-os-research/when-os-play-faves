.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;
.super Landroid/os/Binder;
.source "IMultimediaMessagingSession.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSession:I = 0xa

.field static final TRANSACTION_acceptInvitation:I = 0x7

.field static final TRANSACTION_flushMessages:I = 0xc

.field static final TRANSACTION_getDirection:I = 0x6

.field static final TRANSACTION_getReasonCode:I = 0x5

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getServiceId:I = 0x3

.field static final TRANSACTION_getSessionId:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_rejectInvitation:I = 0x8

.field static final TRANSACTION_rejectInvitation2:I = 0x9

.field static final TRANSACTION_sendMessage:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSession"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
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

    .line 87
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaMessagingSession"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_d
    packed-switch p1, :pswitch_data_a0

    .line 99
    packed-switch p1, :pswitch_data_a6

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 183
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->flushMessages()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto/16 :goto_9f

    .line 173
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 175
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->sendMessage([BLjava/lang/String;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_9f

    .line 166
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->abortSession()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_9f

    .line 158
    :pswitch_3d
    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 159
    .local v2, "_arg0":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_9f

    .line 151
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :pswitch_4f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->rejectInvitation()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_9f

    .line 145
    :pswitch_56
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->acceptInvitation()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_9f

    .line 138
    :pswitch_5d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v2

    .line 139
    .local v2, "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_9f

    .line 131
    .end local v2    # "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    :pswitch_68
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v2

    .line 132
    .local v2, "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 134
    goto :goto_9f

    .line 124
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :pswitch_73
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v2

    .line 125
    .local v2, "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    goto :goto_9f

    .line 117
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    :pswitch_7e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getServiceId()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    goto :goto_9f

    .line 110
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_89
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 111
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 113
    goto :goto_9f

    .line 103
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_94
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    nop

    .line 192
    .end local v2    # "_result":Ljava/lang/String;
    :goto_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_94
        :pswitch_89
        :pswitch_7e
        :pswitch_73
        :pswitch_68
        :pswitch_5d
        :pswitch_56
        :pswitch_4f
        :pswitch_3d
        :pswitch_36
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
