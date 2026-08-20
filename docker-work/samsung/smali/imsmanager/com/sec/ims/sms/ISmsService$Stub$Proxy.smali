.class Lcom/sec/ims/sms/ISmsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmsService.java"

# interfaces
.implements Lcom/sec/ims/sms/ISmsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/sms/ISmsService$Stub;
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

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 175
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 208
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 209
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 182
    const-string v0, "com.sec.ims.sms.ISmsService"

    return-object v0
.end method

.method public getSmsFallback(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 225
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 229
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    nop

    .line 232
    return v2

    .line 229
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v2
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/sms/ISmsServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 192
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 193
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 196
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    nop

    .line 199
    return-void

    .line 196
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v2
.end method

.method public sendDeliverReport(I[B)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 277
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 278
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 281
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    throw v2
.end method

.method public sendRPSMMA(ILjava/lang/String;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "smscAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 294
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 297
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    nop

    .line 300
    return-void

    .line 297
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    throw v2
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 246
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2f

    .line 249
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    nop

    .line 252
    return-void

    .line 249
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    throw v2
.end method

.method public sendSMSResponse(ZI)V
    .registers 8
    .param p1, "isSuccess"    # Z
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.sms.ISmsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v2, p0, Lcom/sec/ims/sms/ISmsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 262
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 265
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    throw v2
.end method
