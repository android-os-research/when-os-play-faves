.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;
.super Landroid/os/Binder;
.source "IMultimediaStreamingSession.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSession:I = 0xa

.field static final TRANSACTION_acceptInvitation:I = 0x7

.field static final TRANSACTION_getDirection:I = 0x6

.field static final TRANSACTION_getEncoding:I = 0xb

.field static final TRANSACTION_getReasonCode:I = 0x5

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getServiceId:I = 0x3

.field static final TRANSACTION_getSessionId:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_rejectInvitation:I = 0x8

.field static final TRANSACTION_rejectInvitation2:I = 0x9

.field static final TRANSACTION_sendPayload:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSession"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
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

    .line 88
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSession"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    packed-switch p1, :pswitch_data_a0

    .line 100
    packed-switch p1, :pswitch_data_a6

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 181
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 182
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->sendPayload([B)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto/16 :goto_9f

    .line 173
    .end local v2    # "_arg0":[B
    :pswitch_2b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    goto :goto_9f

    .line 167
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->abortSession()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_9f

    .line 159
    :pswitch_3d
    sget-object v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 160
    .local v2, "_arg0":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_9f

    .line 152
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :pswitch_4f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->rejectInvitation()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_9f

    .line 146
    :pswitch_56
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->acceptInvitation()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    goto :goto_9f

    .line 139
    :pswitch_5d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v2

    .line 140
    .local v2, "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    goto :goto_9f

    .line 132
    .end local v2    # "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    :pswitch_68
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v2

    .line 133
    .local v2, "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_9f

    .line 125
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :pswitch_73
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v2

    .line 126
    .local v2, "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    goto :goto_9f

    .line 118
    .end local v2    # "_result":Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    :pswitch_7e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getServiceId()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    goto :goto_9f

    .line 111
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_89
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 112
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    goto :goto_9f

    .line 104
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_94
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession$Stub;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
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
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
