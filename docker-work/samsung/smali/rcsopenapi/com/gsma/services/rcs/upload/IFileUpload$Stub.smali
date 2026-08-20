.class public abstract Lcom/gsma/services/rcs/upload/IFileUpload$Stub;
.super Landroid/os/Binder;
.source "IFileUpload.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUpload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortUpload:I = 0x5

.field static final TRANSACTION_getFile:I = 0x2

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_getUploadId:I = 0x1

.field static final TRANSACTION_getUploadInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUpload;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUpload;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/upload/IFileUpload;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
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

    .line 64
    const-string v0, "com.gsma.services.rcs.upload.IFileUpload"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    :cond_d
    packed-switch p1, :pswitch_data_50

    .line 76
    packed-switch p1, :pswitch_data_56

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 108
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->abortUpload()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    goto :goto_4f

    .line 101
    :pswitch_23
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getState()Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object v2

    .line 102
    .local v2, "_result":Lcom/gsma/services/rcs/upload/FileUpload$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 104
    goto :goto_4f

    .line 94
    .end local v2    # "_result":Lcom/gsma/services/rcs/upload/FileUpload$State;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object v2

    .line 95
    .local v2, "_result":Lcom/gsma/services/rcs/upload/FileUploadInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 97
    goto :goto_4f

    .line 87
    .end local v2    # "_result":Lcom/gsma/services/rcs/upload/FileUploadInfo;
    :pswitch_39
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getFile()Landroid/net/Uri;

    move-result-object v2

    .line 88
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    goto :goto_4f

    .line 80
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_44
    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    nop

    .line 117
    .end local v2    # "_result":Ljava/lang/String;
    :goto_4f
    return v1

    :pswitch_data_50
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_44
        :pswitch_39
        :pswitch_2e
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
