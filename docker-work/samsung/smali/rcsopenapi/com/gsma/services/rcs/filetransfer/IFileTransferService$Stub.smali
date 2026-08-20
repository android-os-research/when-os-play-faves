.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;
.super Landroid/os/Binder;
.source "IFileTransferService.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addGroupFileTransferListener:I = 0x10

.field static final TRANSACTION_addOneToOneFileTransferListener:I = 0xe

.field static final TRANSACTION_canTransferFileToGroupChat:I = 0xb

.field static final TRANSACTION_clearFileTransferDeliveryExpiration:I = 0x1c

.field static final TRANSACTION_deleteFileTransfer:I = 0x16

.field static final TRANSACTION_deleteGroupFileTransfers:I = 0x13

.field static final TRANSACTION_deleteGroupFileTransfersByChatId:I = 0x15

.field static final TRANSACTION_deleteOneToOneFileTransfers:I = 0x12

.field static final TRANSACTION_deleteOneToOneFileTransfersByContactId:I = 0x14

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileTransfer:I = 0x7

.field static final TRANSACTION_getFileTransfers:I = 0x6

.field static final TRANSACTION_getServiceVersion:I = 0x2

.field static final TRANSACTION_getUndeliveredFileTransfers:I = 0x1a

.field static final TRANSACTION_isAllowedToTransferFile:I = 0x1d

.field static final TRANSACTION_isAllowedTotransferFile:I = 0xa

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markFileTransferAsRead:I = 0xd

.field static final TRANSACTION_markUndeliveredFileTransfersAsProcessed:I = 0x1b

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeGroupFileTransferListener:I = 0x11

.field static final TRANSACTION_removeOneToOneFileTransferListener:I = 0xf

.field static final TRANSACTION_setAutoAccept:I = 0x17

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x18

.field static final TRANSACTION_setImageResizeOption:I = 0x19

.field static final TRANSACTION_transferAudioMessage:I = 0x9

.field static final TRANSACTION_transferFile:I = 0x8

.field static final TRANSACTION_transferFileToGroupChat:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 129
    if-nez p0, :cond_4

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_4
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 133
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v1, :cond_14

    .line 134
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    return-object v1

    .line 136
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 140
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    .line 145
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    :cond_d
    packed-switch p1, :pswitch_data_22e

    .line 156
    packed-switch p1, :pswitch_data_234

    .line 429
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 420
    :pswitch_1c
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 421
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 423
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 425
    goto/16 :goto_22d

    .line 411
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 412
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    goto/16 :goto_22d

    .line 402
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 403
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_22d

    .line 392
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_51
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 393
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v3

    .line 395
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 397
    goto/16 :goto_22d

    .line 383
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 384
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setImageResizeOption(I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_22d

    .line 374
    .end local v2    # "_arg0":I
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 375
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setAutoAcceptInRoaming(Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_22d

    .line 365
    .end local v2    # "_arg0":Z
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 366
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setAutoAccept(Z)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_22d

    .line 356
    .end local v2    # "_arg0":Z
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteFileTransfer(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_22d

    .line 347
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfersByChatId(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_22d

    .line 338
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b3
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 339
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto/16 :goto_22d

    .line 331
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_c6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfers()V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    goto/16 :goto_22d

    .line 325
    :pswitch_ce
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfers()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_22d

    .line 317
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object v2

    .line 318
    .local v2, "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_22d

    .line 308
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object v2

    .line 309
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_22d

    .line 299
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object v2

    .line 300
    .local v2, "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_22d

    .line 290
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object v2

    .line 291
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_22d

    .line 281
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markFileTransferAsRead(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_22d

    .line 265
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 269
    .local v3, "_arg1":Landroid/net/Uri;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 271
    .local v4, "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 272
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v6

    .line 274
    .local v6, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 276
    goto/16 :goto_22d

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v3

    .line 258
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto/16 :goto_22d

    .line 245
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_16b
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 246
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v3

    .line 248
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    goto/16 :goto_22d

    .line 233
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Z
    :pswitch_182
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 235
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 236
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v4

    .line 238
    .local v4, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 240
    goto/16 :goto_22d

    .line 217
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_1a1
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 219
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 221
    .restart local v3    # "_arg1":Landroid/net/Uri;
    sget-object v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    .line 223
    .local v4, "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 224
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v6

    .line 226
    .restart local v6    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 228
    goto :goto_22d

    .line 207
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v3

    .line 210
    .local v3, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 212
    goto :goto_22d

    .line 199
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    :pswitch_1dd
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfers()Ljava/util/List;

    move-result-object v2

    .line 200
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 202
    goto :goto_22d

    .line 192
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_1e8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object v2

    .line 193
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 195
    goto :goto_22d

    .line 184
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    :pswitch_1f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_22d

    .line 175
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 176
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_22d

    .line 167
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_217
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getServiceVersion()I

    move-result v2

    .line 168
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    goto :goto_22d

    .line 160
    .end local v2    # "_result":I
    :pswitch_222
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 161
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 163
    nop

    .line 432
    .end local v2    # "_result":Z
    :goto_22d
    return v1

    :pswitch_data_22e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_222
        :pswitch_217
        :pswitch_205
        :pswitch_1f3
        :pswitch_1e8
        :pswitch_1dd
        :pswitch_1cb
        :pswitch_1a1
        :pswitch_182
        :pswitch_16b
        :pswitch_158
        :pswitch_131
        :pswitch_122
        :pswitch_10f
        :pswitch_fc
        :pswitch_e9
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_b3
        :pswitch_a4
        :pswitch_95
        :pswitch_86
        :pswitch_77
        :pswitch_68
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_1c
    .end packed-switch
.end method
