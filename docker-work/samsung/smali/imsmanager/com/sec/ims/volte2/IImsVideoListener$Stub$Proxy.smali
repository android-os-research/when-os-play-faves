.class Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsVideoListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsVideoListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 243
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 250
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    return-object v0
.end method

.method public onCallDownGraded(I)V
    .registers 7
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    throw v1
.end method

.method public onCameraEvent(IZ)V
    .registers 8
    .param p1, "sessionID"    # I
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 271
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v1
.end method

.method public onCameraFirstFrameReady(I)V
    .registers 7
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    nop

    .line 288
    return-void

    .line 286
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw v1
.end method

.method public onCameraStopEvent(IZ)V
    .registers 8
    .param p1, "sessionID"    # I
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw v1
.end method

.method public onCameraSwitchFailure(II)V
    .registers 8
    .param p1, "sessionID"    # I
    .param p2, "cameraID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    nop

    .line 341
    return-void

    .line 339
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw v1
.end method

.method public onCameraSwitchSuccess(II)V
    .registers 8
    .param p1, "sessionID"    # I
    .param p2, "cameraID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    nop

    .line 328
    return-void

    .line 326
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    throw v1
.end method

.method public onCaptureFailure(IZ)V
    .registers 8
    .param p1, "sessionID"    # I
    .param p2, "isNearEnd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 310
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v1
.end method

.method public onCaptureSuccess(IZLjava/lang/String;)V
    .registers 9
    .param p1, "sessionID"    # I
    .param p2, "isNearEnd"    # Z
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 296
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v1
.end method

.method public onNoFarFrame(I)V
    .registers 7
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v1
.end method

.method public onRecordEvent(IZZ)V
    .registers 9
    .param p1, "sessionID"    # I
    .param p2, "isStart"    # Z
    .param p3, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 422
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 423
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    nop

    .line 428
    return-void

    .line 426
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    throw v1
.end method

.method public onVideoAttemped(I)V
    .registers 7
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    nop

    .line 414
    return-void

    .line 412
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v1
.end method

.method public onVideoAvailable(I)V
    .registers 6
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw v1
.end method

.method public onVideoHeld(I)V
    .registers 7
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    throw v1
.end method

.method public onVideoResumed(I)V
    .registers 7
    .param p1, "sessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 371
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v1, p0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return-void

    .line 376
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v1
.end method
