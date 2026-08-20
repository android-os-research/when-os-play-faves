.class public final Landroid/media/midi/MidiOutputPort;
.super Landroid/media/midi/MidiSender;
.source "MidiOutputPort.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiOutputPort"


# instance fields
.field private greylist-max-o mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

.field private final greylist-max-o mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mInputStream:Ljava/io/FileInputStream;

.field private greylist-max-o mIsClosed:Z

.field private final greylist-max-o mPortNumber:I

.field private final greylist-max-o mThread:Ljava/lang/Thread;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDispatcher(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;
    .registers 1

    iget-object p0, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V
    .registers 9
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "portNumber"    # I

    .line 102
    invoke-direct {p0}, Landroid/media/midi/MidiSender;-><init>()V

    .line 45
    new-instance v0, Lcom/android/internal/midi/MidiDispatcher;

    invoke-direct {v0}, Lcom/android/internal/midi/MidiDispatcher;-><init>()V

    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    .line 47
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    .line 52
    new-instance v1, Landroid/media/midi/MidiOutputPort$1;

    invoke-direct {v1, p0}, Landroid/media/midi/MidiOutputPort$1;-><init>(Landroid/media/midi/MidiOutputPort;)V

    iput-object v1, p0, Landroid/media/midi/MidiOutputPort;->mThread:Ljava/lang/Thread;

    .line 103
    iput-object p1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 104
    iput-object p2, p0, Landroid/media/midi/MidiOutputPort;->mToken:Landroid/os/IBinder;

    .line 105
    iput p4, p0, Landroid/media/midi/MidiOutputPort;->mPortNumber:I

    .line 106
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 108
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/FileDescriptor;I)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "portNumber"    # I

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-boolean v1, p0, Landroid/media/midi/MidiOutputPort;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 139
    :cond_9
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 140
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 141
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2a

    if-eqz v1, :cond_25

    .line 143
    :try_start_17
    iget-object v2, p0, Landroid/media/midi/MidiOutputPort;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/midi/IMidiDeviceServer;->closePort(Landroid/os/IBinder;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2a

    .line 146
    goto :goto_25

    .line 144
    :catch_1d
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e
    const-string v2, "MidiOutputPort"

    const-string v3, "RemoteException in MidiOutputPort.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/midi/MidiOutputPort;->mIsClosed:Z

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 156
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 160
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDeviceServer:Landroid/media/midi/IMidiDeviceServer;

    .line 161
    invoke-virtual {p0}, Landroid/media/midi/MidiOutputPort;->close()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 164
    nop

    .line 165
    return-void

    .line 163
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 164
    throw v0
.end method

.method public final whitelist getPortNumber()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/media/midi/MidiOutputPort;->mPortNumber:I

    return v0
.end method

.method public whitelist onConnect(Landroid/media/midi/MidiReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 126
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 127
    return-void
.end method

.method public whitelist onDisconnect(Landroid/media/midi/MidiReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 131
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort;->mDispatcher:Lcom/android/internal/midi/MidiDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/midi/MidiSender;->disconnect(Landroid/media/midi/MidiReceiver;)V

    .line 132
    return-void
.end method
