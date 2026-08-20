.class public abstract Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;
.super Landroid/os/Binder;
.source "IVideoSharing.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoSharing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSharing:I = 0x8

.field static final TRANSACTION_acceptInvitation:I = 0x6

.field static final TRANSACTION_getDirection:I = 0x5

.field static final TRANSACTION_getDuration:I = 0xb

.field static final TRANSACTION_getReasonCode:I = 0xd

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getSharingId:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_getTimeStamp:I = 0xc

.field static final TRANSACTION_getVideoDescriptor:I = 0x9

.field static final TRANSACTION_getVideoEncoding:I = 0x3

.field static final TRANSACTION_rejectInvitation:I = 0x7

.field static final TRANSACTION_setOrientation:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharing"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharing"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    if-eqz v1, :cond_14

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    return-object v1

    .line 85
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
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

    .line 93
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharing"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_b2

    .line 105
    packed-switch p1, :pswitch_data_b8

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 195
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v2

    .line 196
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 198
    goto/16 :goto_b0

    .line 188
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    :pswitch_28
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getTimeStamp()J

    move-result-wide v2

    .line 189
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 191
    goto/16 :goto_b0

    .line 181
    .end local v2    # "_result":J
    :pswitch_34
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getDuration()J

    move-result-wide v2

    .line 182
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    goto/16 :goto_b0

    .line 173
    .end local v2    # "_result":J
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->setOrientation(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_b0

    .line 165
    .end local v2    # "_arg0":I
    :pswitch_4e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;

    move-result-object v2

    .line 166
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    goto :goto_b0

    .line 159
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    :pswitch_59
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->abortSharing()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_b0

    .line 153
    :pswitch_60
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->rejectInvitation()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_b0

    .line 145
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    move-result-object v2

    .line 146
    .local v2, "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->acceptInvitation(Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_b0

    .line 137
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    :pswitch_79
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v2

    .line 138
    .local v2, "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    goto :goto_b0

    .line 130
    .end local v2    # "_result":Lcom/gsma/services/rcs/RcsService$Direction;
    :pswitch_84
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;

    move-result-object v2

    .line 131
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    goto :goto_b0

    .line 123
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    :pswitch_8f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getVideoEncoding()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    goto :goto_b0

    .line 116
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    goto :goto_b0

    .line 109
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->getSharingId()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    nop

    .line 205
    .end local v2    # "_result":Ljava/lang/String;
    :goto_b0
    return v1

    nop

    :pswitch_data_b2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_67
        :pswitch_60
        :pswitch_59
        :pswitch_4e
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
