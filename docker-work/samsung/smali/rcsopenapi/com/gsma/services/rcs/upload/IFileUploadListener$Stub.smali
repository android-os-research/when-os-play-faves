.class public abstract Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;
.super Landroid/os/Binder;
.source "IFileUploadListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onProgressUpdate:I = 0x2

.field static final TRANSACTION_onStateChanged:I = 0x1

.field static final TRANSACTION_onUploaded:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.gsma.services.rcs.upload.IFileUploadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.gsma.services.rcs.upload.IFileUploadListener"

    .line 55
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    .line 56
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_13
    packed-switch v7, :pswitch_data_6e

    .line 66
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_74

    .line 105
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 62
    :pswitch_20
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v10

    .line 95
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/upload/FileUploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/upload/FileUploadInfo;

    .line 98
    .local v1, "_arg1":Lcom/gsma/services/rcs/upload/FileUploadInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {v6, v0, v1}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    goto :goto_6d

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/gsma/services/rcs/upload/FileUploadInfo;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 84
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 86
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 87
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->onProgressUpdate(Ljava/lang/String;JJ)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    goto :goto_6d

    .line 71
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/upload/FileUpload$State;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 74
    .local v1, "_arg1":Lcom/gsma/services/rcs/upload/FileUpload$State;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {v6, v0, v1}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    nop

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/gsma/services/rcs/upload/FileUpload$State;
    :goto_6d
    return v10

    :pswitch_data_6e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_57
        :pswitch_3c
        :pswitch_26
    .end packed-switch
.end method
