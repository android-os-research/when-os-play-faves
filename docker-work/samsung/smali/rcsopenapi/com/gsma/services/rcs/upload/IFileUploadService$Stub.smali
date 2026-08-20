.class public abstract Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;
.super Landroid/os/Binder;
.source "IFileUploadService.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addFileUploadEventListener:I = 0xa

.field static final TRANSACTION_canUploadFile:I = 0x6

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileUpload:I = 0x8

.field static final TRANSACTION_getFileUploads:I = 0x7

.field static final TRANSACTION_getServiceVersion:I = 0x4

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeFileUploadEventListener:I = 0xb

.field static final TRANSACTION_uploadFile:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
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

    .line 85
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    packed-switch p1, :pswitch_data_ca

    .line 97
    packed-switch p1, :pswitch_data_d0

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 186
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object v2

    .line 187
    .local v2, "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto/16 :goto_c9

    .line 177
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto/16 :goto_c9

    .line 165
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    :pswitch_42
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 167
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 168
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v4

    .line 170
    .local v4, "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 172
    goto :goto_c9

    .line 155
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v3

    .line 158
    .local v3, "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 160
    goto :goto_c9

    .line 147
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/upload/IFileUpload;
    :pswitch_6e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUploads()Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 150
    goto :goto_c9

    .line 140
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_79
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->canUploadFile()Z

    move-result v2

    .line 141
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 143
    goto :goto_c9

    .line 133
    .end local v2    # "_result":Z
    :pswitch_84
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;

    move-result-object v2

    .line 134
    .local v2, "_result":Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    goto :goto_c9

    .line 126
    .end local v2    # "_result":Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    :pswitch_8f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getServiceVersion()I

    move-result v2

    .line 127
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    goto :goto_c9

    .line 118
    .end local v2    # "_result":I
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 119
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_c9

    .line 109
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 110
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    goto :goto_c9

    .line 101
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_be
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 102
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    nop

    .line 197
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
        :pswitch_ac
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_5c
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
