.class Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceWakeupInteractionService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;
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

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 128
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    return-object v0
.end method

.method public blacklist registerCallback(Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 138
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 139
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 142
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    nop

    .line 145
    return-void

    .line 142
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw v2
.end method

.method public blacklist setCurrentUserOnSwitch(I)V
    .registers 7
    .param p1, "userId"    # I
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
    const-string v2, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 191
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 194
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    nop

    .line 197
    return-void

    .line 194
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v2
.end method

.method public blacklist startRecognition()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 155
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 159
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    nop

    .line 162
    return v2

    .line 159
    .end local v2    # "_result":Z
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw v2
.end method

.method public blacklist stopRecognition()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 173
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 177
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return v2

    .line 177
    .end local v2    # "_result":Z
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw v2
.end method
