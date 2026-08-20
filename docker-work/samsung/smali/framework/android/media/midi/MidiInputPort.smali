.class public final Landroid/media/midi/MidiInputPort;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiInputPort"


# instance fields
.field private final greylist-max-o mBuffer:[B

.field private greylist-max-o mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private greylist-max-o mFileDescriptor:Ljava/io/FileDescriptor;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mIsClosed:Z

.field private greylist-max-o mOutputStream:Ljava/io/FileOutputStream;

.field private final greylist-max-o mPortNumber:I

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    .registers 7
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "portNumber"    # I

    .line 52
    const/16 v0, 0x3f7

    invoke-direct {p0, v0}, Landroid/media/midi/MidiReceiver;-><init>(I)V

    .line 44
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 48
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    .line 54
    iput-object p1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 55
    iput-object p2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    .line 56
    iput-object p3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 57
    iput p4, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    .line 58
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    .line 59
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "portNumber"    # I

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiInputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    .line 64
    return-void
.end method


# virtual methods
.method greylist-max-o claimFileDescriptor()Ljava/io/FileDescriptor;
    .registers 6

    .line 106
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 109
    :try_start_6
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 110
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v3, 0x0

    if-nez v2, :cond_e

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_1d

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_20

    return-object v3

    .line 111
    :cond_e
    :try_start_e
    iget-object v4, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 112
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 113
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    .line 114
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    .line 118
    const/4 v1, 0x1

    :try_start_19
    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    .line 119
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    return-object v2

    .line 114
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    :try_start_1f
    throw v2

    .line 120
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 137
    :cond_9
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 138
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3f

    .line 139
    :try_start_11
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 140
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 141
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 143
    :cond_1b
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_24

    .line 144
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 145
    iput-object v3, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    .line 147
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_3c

    .line 148
    :try_start_25
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_3f

    if-eqz v1, :cond_37

    .line 150
    :try_start_29
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3f

    .line 153
    goto :goto_37

    .line 151
    :catch_2f
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_30
    const-string v2, "MidiInputPort"

    const-string v3, "RemoteException in MidiInputPort.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiInputPort;->mIsClosed:Z

    .line 156
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_3f

    .line 157
    return-void

    .line 147
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    :try_start_3e
    throw v2

    .line 156
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3f

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 167
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 168
    invoke-virtual {p0}, Landroid/media/midi/MidiInputPort;->close()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 170
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    throw v0
.end method

.method greylist-max-o getDeviceServer()Landroid/media/midi/IMidiDeviceServer;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    return-object v0
.end method

.method public final whitelist getPortNumber()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/media/midi/MidiInputPort;->mPortNumber:I

    return v0
.end method

.method greylist-max-o getToken()Landroid/os/IBinder;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onFlush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_17

    .line 99
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    invoke-static {v1}, Landroid/media/midi/MidiPortImpl;->packFlush([B)I

    move-result v1

    .line 100
    .local v1, "length":I
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 101
    .end local v1    # "length":I
    monitor-exit v0

    .line 102
    return-void

    .line 97
    :cond_17
    new-instance v1, Ljava/io/IOException;

    const-string v2, "MidiInputPort is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    throw v1

    .line 101
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist onSend([BIIJ)V
    .registers 14
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-ltz p2, :cond_3b

    if-ltz p3, :cond_3b

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3b

    .line 80
    const/16 v0, 0x3f7

    if-gt p3, v0, :cond_33

    .line 84
    iget-object v0, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    monitor-enter v0

    .line 85
    :try_start_10
    iget-object v1, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_28

    .line 88
    iget-object v7, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v2 .. v7}, Landroid/media/midi/MidiPortImpl;->packData([BIIJ[B)I

    move-result v1

    .line 89
    .local v1, "length":I
    iget-object v2, p0, Landroid/media/midi/MidiInputPort;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/media/midi/MidiInputPort;->mBuffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 90
    .end local v1    # "length":I
    monitor-exit v0

    .line 91
    return-void

    .line 86
    :cond_28
    new-instance v1, Ljava/io/IOException;

    const-string v2, "MidiInputPort is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/midi/MidiInputPort;
    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    throw v1

    .line 90
    .restart local p0    # "this":Landroid/media/midi/MidiInputPort;
    .restart local p1    # "msg":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    .restart local p4    # "timestamp":J
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw v1

    .line 81
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count exceeds max message size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset or count out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
