.class public abstract Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;
.super Landroid/os/Binder;
.source "IImageSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/image/IImageSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/IImageSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x9

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_deleteAllImageSharings:I = 0xb

.field static final TRANSACTION_deleteImageSharing:I = 0xd

.field static final TRANSACTION_deleteImageSharings:I = 0xc

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getImageSharing:I = 0x7

.field static final TRANSACTION_getImageSharings:I = 0x6

.field static final TRANSACTION_getServiceVersion:I = 0x4

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0xa

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_shareImage:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
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

    .line 90
    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    packed-switch p1, :pswitch_data_ea

    .line 102
    packed-switch p1, :pswitch_data_f0

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 208
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->deleteImageSharing(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto/16 :goto_e8

    .line 199
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 200
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto/16 :goto_e8

    .line 192
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_3e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->deleteAllImageSharings()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto/16 :goto_e8

    .line 184
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->removeEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto/16 :goto_e8

    .line 175
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->addEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto/16 :goto_e8

    .line 163
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    :pswitch_6c
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 165
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->shareImage(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v4

    .line 168
    .local v4, "_result":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 170
    goto :goto_e8

    .line 153
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v3

    .line 156
    .local v3, "_result":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 158
    goto :goto_e8

    .line 145
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    :pswitch_98
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getImageSharings()Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 148
    goto :goto_e8

    .line 138
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_a3
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;

    move-result-object v2

    .line 139
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_e8

    .line 131
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    :pswitch_ae
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getServiceVersion()I

    move-result v2

    .line 132
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    goto :goto_e8

    .line 123
    .end local v2    # "_result":I
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_e8

    .line 114
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_e8

    .line 106
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_dd
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 107
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 109
    nop

    .line 219
    .end local v2    # "_result":Z
    :goto_e8
    return v1

    nop

    :pswitch_data_ea
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_86
        :pswitch_6c
        :pswitch_59
        :pswitch_46
        :pswitch_3e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
