.class Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVideoPlayer.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;
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

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 157
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 158
    sget-object v3, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 161
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    nop

    .line 164
    return-object v2

    .line 161
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    return-object v0
.end method

.method public getLocalRtpPort()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 140
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 144
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return v2

    .line 144
    .end local v2    # "_result":I
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v2
.end method

.method public getSupportedCodecs()[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 174
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 175
    sget-object v3, Lcom/gsma/services/rcs/sharing/video/VideoCodec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 178
    .local v2, "_result":[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    nop

    .line 181
    return-object v2

    .line 178
    .end local v2    # "_result":[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    throw v2
.end method

.method public setRemoteInfo(Lcom/gsma/services/rcs/sharing/video/VideoCodec;Ljava/lang/String;II)V
    .registers 10
    .param p1, "codec"    # Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .param p2, "remoteHost"    # Ljava/lang/String;
    .param p3, "remotePort"    # I
    .param p4, "orientationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 188
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.sharing.video.IVideoPlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 194
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 197
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    nop

    .line 200
    return-void

    .line 197
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v2
.end method
