.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;
.super Landroid/os/Binder;
.source "IFileTransfer.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_abortTransfer:I = 0x12

.field static final TRANSACTION_acceptInvitation:I = 0x10

.field static final TRANSACTION_canPauseTransfer:I = 0x13

.field static final TRANSACTION_canResendTransfer:I = 0x16

.field static final TRANSACTION_getChatId:I = 0x2

.field static final TRANSACTION_getDirection:I = 0xf

.field static final TRANSACTION_getFile:I = 0xa

.field static final TRANSACTION_getFileDisposition:I = 0xb

.field static final TRANSACTION_getFileExpiration:I = 0x1a

.field static final TRANSACTION_getFileIcon:I = 0x8

.field static final TRANSACTION_getFileIconExpiration:I = 0x1b

.field static final TRANSACTION_getFileIconMimeType:I = 0x9

.field static final TRANSACTION_getFileName:I = 0x5

.field static final TRANSACTION_getFileSize:I = 0x6

.field static final TRANSACTION_getFileType:I = 0x7

.field static final TRANSACTION_getMimeType:I = 0xc

.field static final TRANSACTION_getReasonCode:I = 0xe

.field static final TRANSACTION_getRemoteContact:I = 0x4

.field static final TRANSACTION_getState:I = 0xd

.field static final TRANSACTION_getTimestamp:I = 0x18

.field static final TRANSACTION_getTimestampDelivered:I = 0x1d

.field static final TRANSACTION_getTimestampDisplayed:I = 0x1e

.field static final TRANSACTION_getTimestampSent:I = 0x19

.field static final TRANSACTION_getTransferId:I = 0x3

.field static final TRANSACTION_isAllowedToResumeTransfer:I = 0x1c

.field static final TRANSACTION_isExpiredDelivery:I = 0x20

.field static final TRANSACTION_isGroupTransfer:I = 0x1

.field static final TRANSACTION_isRead:I = 0x1f

.field static final TRANSACTION_pauseTransfer:I = 0x14

.field static final TRANSACTION_rejectInvitation:I = 0x11

.field static final TRANSACTION_resendTransfer:I = 0x17

.field static final TRANSACTION_resumeTransfer:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_4
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    if-eqz v1, :cond_14

    .line 157
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-object v1

    .line 159
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 163
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

    .line 167
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransfer"

    .line 168
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 169
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    :cond_d
    packed-switch p1, :pswitch_data_17c

    .line 179
    packed-switch p1, :pswitch_data_182

    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 175
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v1

    .line 394
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isExpiredDelivery()Z

    move-result v2

    .line 395
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    goto/16 :goto_17a

    .line 387
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isRead()Z

    move-result v2

    .line 388
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto/16 :goto_17a

    .line 380
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampDisplayed()J

    move-result-wide v2

    .line 381
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 383
    goto/16 :goto_17a

    .line 373
    .end local v2    # "_result":J
    :pswitch_40
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampDelivered()J

    move-result-wide v2

    .line 374
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    goto/16 :goto_17a

    .line 366
    .end local v2    # "_result":J
    :pswitch_4c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isAllowedToResumeTransfer()Z

    move-result v2

    .line 367
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto/16 :goto_17a

    .line 359
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIconExpiration()J

    move-result-wide v2

    .line 360
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    goto/16 :goto_17a

    .line 352
    .end local v2    # "_result":J
    :pswitch_64
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileExpiration()J

    move-result-wide v2

    .line 353
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 355
    goto/16 :goto_17a

    .line 345
    .end local v2    # "_result":J
    :pswitch_70
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestampSent()J

    move-result-wide v2

    .line 346
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    goto/16 :goto_17a

    .line 338
    .end local v2    # "_result":J
    :pswitch_7c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTimestamp()J

    move-result-wide v2

    .line 339
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    goto/16 :goto_17a

    .line 332
    .end local v2    # "_result":J
    :pswitch_88
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->resendTransfer()V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    goto/16 :goto_17a

    .line 325
    :pswitch_90
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->canResendTransfer()Z

    move-result v2

    .line 326
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    goto/16 :goto_17a

    .line 319
    .end local v2    # "_result":Z
    :pswitch_9c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->resumeTransfer()V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_17a

    .line 313
    :pswitch_a4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->pauseTransfer()V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_17a

    .line 306
    :pswitch_ac
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->canPauseTransfer()Z

    move-result v2

    .line 307
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 309
    goto/16 :goto_17a

    .line 300
    .end local v2    # "_result":Z
    :pswitch_b8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->abortTransfer()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_17a

    .line 294
    :pswitch_c0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->rejectInvitation()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_17a

    .line 288
    :pswitch_c8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->acceptInvitation()V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_17a

    .line 281
    :pswitch_d0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getDirection()I

    move-result v2

    .line 282
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    goto/16 :goto_17a

    .line 274
    .end local v2    # "_result":I
    :pswitch_dc
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v2

    .line 275
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 277
    goto/16 :goto_17a

    .line 267
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    :pswitch_e8
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v2

    .line 268
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    goto/16 :goto_17a

    .line 260
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    :pswitch_f4
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    goto/16 :goto_17a

    .line 253
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_100
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    move-result-object v2

    .line 254
    .local v2, "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 256
    goto/16 :goto_17a

    .line 246
    .end local v2    # "_result":Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    :pswitch_10c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFile()Landroid/net/Uri;

    move-result-object v2

    .line 247
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    goto :goto_17a

    .line 239
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_117
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIconMimeType()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    goto :goto_17a

    .line 232
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_122
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileIcon()Landroid/net/Uri;

    move-result-object v2

    .line 233
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 235
    goto :goto_17a

    .line 225
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_12d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileType()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    goto :goto_17a

    .line 218
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_138
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileSize()J

    move-result-wide v2

    .line 219
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    goto :goto_17a

    .line 211
    .end local v2    # "_result":J
    :pswitch_143
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    goto :goto_17a

    .line 204
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_14e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 205
    .local v2, "_result":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_17a

    .line 197
    .end local v2    # "_result":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_159
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getTransferId()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    goto :goto_17a

    .line 190
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_164
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    goto :goto_17a

    .line 183
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_16f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;->isGroupTransfer()Z

    move-result v2

    .line 184
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    nop

    .line 404
    .end local v2    # "_result":Z
    :goto_17a
    return v1

    nop

    :pswitch_data_17c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_16f
        :pswitch_164
        :pswitch_159
        :pswitch_14e
        :pswitch_143
        :pswitch_138
        :pswitch_12d
        :pswitch_122
        :pswitch_117
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_e8
        :pswitch_dc
        :pswitch_d0
        :pswitch_c8
        :pswitch_c0
        :pswitch_b8
        :pswitch_ac
        :pswitch_a4
        :pswitch_9c
        :pswitch_90
        :pswitch_88
        :pswitch_7c
        :pswitch_70
        :pswitch_64
        :pswitch_58
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
