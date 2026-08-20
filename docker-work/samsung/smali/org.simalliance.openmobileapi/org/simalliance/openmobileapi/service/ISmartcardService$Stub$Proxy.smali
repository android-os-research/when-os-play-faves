.class Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmartcardService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;
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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 127
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 134
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    return-object v0
.end method

.method public getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .registers 8
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 164
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    move-result-object v3

    .line 166
    .local v3, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 167
    invoke-virtual {p2, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_34

    .line 171
    .end local v2    # "_status":Z
    :cond_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    nop

    .line 174
    return-object v3

    .line 171
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    :catchall_34
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v2
.end method

.method public getReaders()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 145
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 149
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    nop

    .line 152
    return-object v2

    .line 149
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw v2
.end method

.method public isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z
    .registers 11
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "callback"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .param p5, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 191
    iget-object v2, p0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 192
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3

    .line 194
    .local v3, "_result":[Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 195
    invoke-virtual {p5, v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_39

    .line 199
    .end local v2    # "_status":Z
    :cond_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    nop

    .line 202
    return-object v3

    .line 199
    .end local v3    # "_result":[Z
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    throw v2
.end method
