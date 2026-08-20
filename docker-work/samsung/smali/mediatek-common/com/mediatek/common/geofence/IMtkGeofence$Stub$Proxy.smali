.class Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkGeofence.java"

# interfaces
.implements Lcom/mediatek/common/geofence/IMtkGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/geofence/IMtkGeofence$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 173
    return-void
.end method


# virtual methods
.method public blacklist addCircularFence(IDDDIIIILcom/mediatek/common/geofence/IMtkGeofenceCallback;)Z
    .registers 29
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsivenessMs"    # I
    .param p11, "unknownTimerMs"    # I
    .param p12, "callback"    # Lcom/mediatek/common/geofence/IMtkGeofenceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 185
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 188
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_72

    .line 191
    move-wide/from16 v6, p4

    :try_start_19
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6e

    .line 192
    move-wide/from16 v8, p6

    :try_start_1e
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6a

    .line 193
    move/from16 v10, p8

    :try_start_23
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_66

    .line 194
    move/from16 v11, p9

    :try_start_28
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_62

    .line 195
    move/from16 v12, p10

    :try_start_2d
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_5e

    .line 196
    move/from16 v13, p11

    :try_start_32
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5a

    .line 197
    move-object/from16 v14, p12

    :try_start_37
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_56

    .line 198
    move-object/from16 v15, p0

    :try_start_3c
    iget-object v0, v15, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 199
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_54

    move v0, v3

    .line 203
    .local v0, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    nop

    .line 206
    return v0

    .line 203
    .end local v0    # "_result":Z
    :catchall_54
    move-exception v0

    goto :goto_83

    :catchall_56
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_83

    :catchall_5a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_81

    :catchall_5e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_62
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7d

    :catchall_66
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7b

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_79

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_77

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v6, p4

    :goto_77
    move-wide/from16 v8, p6

    :goto_79
    move/from16 v10, p8

    :goto_7b
    move/from16 v11, p9

    :goto_7d
    move/from16 v12, p10

    :goto_7f
    move/from16 v13, p11

    :goto_81
    move-object/from16 v14, p12

    :goto_83
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 180
    const-string v0, "com.mediatek.common.geofence.IMtkGeofence"

    return-object v0
.end method

.method public blacklist pauseGeofence(I)Z
    .registers 7
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v2, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 235
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 239
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    nop

    .line 242
    return v2

    .line 239
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw v2
.end method

.method public blacklist registerForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 271
    iget-object v2, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 272
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 276
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    nop

    .line 279
    return v2

    .line 276
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw v2
.end method

.method public blacklist removeGeofence(I)Z
    .registers 7
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v2, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 217
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 221
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    nop

    .line 224
    return v2

    .line 221
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw v2
.end method

.method public blacklist resumeGeofence(II)Z
    .registers 8
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v2, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 254
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move v2, v3

    .line 258
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    nop

    .line 261
    return v2

    .line 258
    .end local v2    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw v2
.end method

.method public blacklist unregisterForMonitorStateChangeCallback(Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;)Z
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/common/geofence/IMtkGeofenceMonitorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.geofence.IMtkGeofence"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 289
    iget-object v2, p0, Lcom/mediatek/common/geofence/IMtkGeofence$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 290
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 294
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    nop

    .line 297
    return v2

    .line 294
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v2
.end method
