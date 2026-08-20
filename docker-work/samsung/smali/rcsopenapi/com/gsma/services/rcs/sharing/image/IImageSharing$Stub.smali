.class public abstract Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;
.super Landroid/os/Binder;
.source "IImageSharing.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/image/IImageSharing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/IImageSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortSharing:I = 0xd

.field static final TRANSACTION_acceptInvitation:I = 0xb

.field static final TRANSACTION_getDirection:I = 0xa

.field static final TRANSACTION_getFile:I = 0x3

.field static final TRANSACTION_getFileName:I = 0x4

.field static final TRANSACTION_getFileSize:I = 0x5

.field static final TRANSACTION_getFileType:I = 0x6

.field static final TRANSACTION_getReasonCode:I = 0x9

.field static final TRANSACTION_getRemoteContact:I = 0x2

.field static final TRANSACTION_getSharingId:I = 0x1

.field static final TRANSACTION_getState:I = 0x8

.field static final TRANSACTION_getTimeStamp:I = 0x7

.field static final TRANSACTION_rejectInvitation:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharing"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 126
    if-nez p0, :cond_4

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharing"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 130
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    if-eqz v1, :cond_14

    .line 131
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    return-object v1

    .line 133
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 137
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

    .line 141
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharing"

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_d
    packed-switch p1, :pswitch_data_a4

    .line 153
    packed-switch p1, :pswitch_data_aa

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 239
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->abortSharing()V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_a2

    .line 233
    :pswitch_24
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->rejectInvitation()V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_a2

    .line 227
    :pswitch_2c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->acceptInvitation()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto/16 :goto_a2

    .line 220
    :pswitch_34
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getDirection()I

    move-result v2

    .line 221
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    goto :goto_a2

    .line 213
    .end local v2    # "_result":I
    :pswitch_3f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getReasonCode()Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    move-result-object v2

    .line 214
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_a2

    .line 206
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;
    :pswitch_4a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getState()Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;

    move-result-object v2

    .line 207
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    goto :goto_a2

    .line 199
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharing$State;
    :pswitch_55
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getTimeStamp()J

    move-result-wide v2

    .line 200
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 202
    goto :goto_a2

    .line 192
    .end local v2    # "_result":J
    :pswitch_60
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    goto :goto_a2

    .line 185
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFileSize()J

    move-result-wide v2

    .line 186
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    goto :goto_a2

    .line 178
    .end local v2    # "_result":J
    :pswitch_76
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    goto :goto_a2

    .line 171
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_81
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 172
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    goto :goto_a2

    .line 164
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 165
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 167
    goto :goto_a2

    .line 157
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_97
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->getSharingId()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    nop

    .line 248
    .end local v2    # "_result":Ljava/lang/String;
    :goto_a2
    return v1

    nop

    :pswitch_data_a4
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_76
        :pswitch_6b
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_2c
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method
