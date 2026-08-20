.class Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMultimediaStreamingSessionListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;
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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 106
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    return-object v0
.end method

.method public onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .registers 9
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    iget-object v3, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 143
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    .line 146
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    nop

    .line 149
    return-void

    .line 146
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    throw v2
.end method

.method public onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .registers 10
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .param p4, "reasonCode"    # Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.gsma.services.rcs.extension.IMultimediaStreamingSessionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v3, p0, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 126
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2c

    .line 129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 132
    return-void

    .line 129
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw v2
.end method
