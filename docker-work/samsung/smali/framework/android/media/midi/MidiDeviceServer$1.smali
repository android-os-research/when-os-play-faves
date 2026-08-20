.class Landroid/media/midi/MidiDeviceServer$1;
.super Landroid/media/midi/IMidiDeviceServer$Stub;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/midi/MidiDeviceServer;

    .line 184
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist closeDevice()V
    .registers 2

    .line 288
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 289
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/MidiDeviceServer$Callback;->onClose()V

    .line 291
    :cond_11
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 292
    return-void
.end method

.method public blacklist closePort(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_8
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceServer$PortClient;

    .line 274
    .local v2, "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    if-eqz v2, :cond_1e

    .line 275
    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer$PortClient;->getInputPort()Landroid/media/midi/MidiInputPort;

    move-result-object v3

    move-object v0, v3

    .line 276
    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 278
    .end local v2    # "client":Landroid/media/midi/MidiDeviceServer$PortClient;
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_37

    .line 279
    if-eqz v0, :cond_36

    .line 280
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 281
    :try_start_28
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    monitor-exit v1

    goto :goto_36

    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v2

    .line 284
    :cond_36
    :goto_36
    return-void

    .line 278
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public blacklist connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "outputPortNumber"    # I

    .line 297
    new-instance v0, Landroid/media/midi/MidiInputPort;

    invoke-direct {v0, p2, p3}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 298
    .local v0, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    aget-object v1, v1, p3

    .line 299
    .local v1, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v1

    .line 300
    :try_start_e
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 301
    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v2

    .line 302
    .local v2, "openCount":I
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aput v2, v3, p3

    .line 303
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 304
    .end local v2    # "openCount":I
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_64

    .line 306
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v2, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v2, v3, p1, v0}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 308
    .local v2, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 309
    :try_start_3e
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_61

    .line 311
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 312
    :try_start_4f
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5e

    .line 314
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    return v3

    .line 313
    :catchall_5e
    move-exception v3

    :try_start_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v3

    .line 310
    :catchall_61
    move-exception v4

    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v4

    .line 304
    .end local v2    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public blacklist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 319
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .line 188
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 190
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access private device from different UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-ltz p2, :cond_b7

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_2c

    goto/16 :goto_b7

    .line 199
    :cond_2c
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_33
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v2

    aget-object v2, v2, p2

    if-eqz v2, :cond_5d

    .line 201
    const-string v2, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already open"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_b4

    return-object v0

    .line 206
    :cond_5d
    :try_start_5d
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 207
    .local v2, "pair":[Ljava/io/FileDescriptor;
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 208
    .local v3, "outputPort":Landroid/media/midi/MidiOutputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v4

    aput-object v3, v4, p2

    .line 209
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortReceivers(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 210
    new-instance v4, Landroid/media/midi/MidiDeviceServer$InputPortClient;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v4, v5, p1, v3}, Landroid/media/midi/MidiDeviceServer$InputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V

    .line 211
    .local v4, "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_8a} :catch_a9
    .catchall {:try_start_5d .. :try_end_8a} :catchall_b4

    .line 212
    :try_start_8a
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v5
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_a6

    .line 214
    :try_start_94
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOpen(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object v5

    const/4 v6, 0x1

    aput-boolean v6, v5, p2

    .line 215
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 216
    aget-object v0, v2, v6
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a4} :catch_a9
    .catchall {:try_start_94 .. :try_end_a4} :catchall_b4

    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_b4

    return-object v0

    .line 213
    :catchall_a6
    move-exception v6

    :try_start_a7
    monitor-exit v5
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_a8
    throw v6
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_a9} :catch_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_b4

    .line 217
    .end local v2    # "pair":[Ljava/io/FileDescriptor;
    .end local v3    # "outputPort":Landroid/media/midi/MidiOutputPort;
    .end local v4    # "client":Landroid/media/midi/MidiDeviceServer$InputPortClient;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catch_a9
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    :try_start_aa
    const-string v3, "MidiDeviceServer"

    const-string/jumbo v4, "unable to create FileDescriptors in openInputPort"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v1

    return-object v0

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_b4
    move-exception v0

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_aa .. :try_end_b6} :catchall_b4

    throw v0

    .line 195
    :cond_b7
    :goto_b7
    const-string v1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "portNumber out of range in openInputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v0
.end method

.method public blacklist openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "portNumber"    # I

    .line 226
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 228
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access private device from different UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-ltz p2, :cond_b5

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_2c

    goto/16 :goto_b5

    .line 238
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 239
    .local v1, "pair":[Ljava/io/FileDescriptor;
    new-instance v2, Landroid/media/midi/MidiInputPort;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {v2, v4, p2}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 243
    .local v2, "inputPort":Landroid/media/midi/MidiInputPort;
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4a

    .line 244
    aget-object v4, v1, v3

    invoke-static {v4, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 246
    :cond_4a
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v3

    aget-object v3, v3, p2

    .line 247
    .local v3, "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    monitor-enter v3
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_53} :catch_ab

    .line 248
    :try_start_53
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 249
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v4

    .line 250
    .local v4, "openCount":I
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v5

    aput v4, v5, p2

    .line 251
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 252
    .end local v4    # "openCount":I
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_a8

    .line 254
    :try_start_6c
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v4, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v4, v5, p1, v2}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 256
    .local v4, "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_83} :catch_ab

    .line 257
    :try_start_83
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v5
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_a5

    .line 259
    :try_start_8d
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_94} :catch_ab

    .line 260
    :try_start_94
    iget-object v6, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v6}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_a2

    .line 262
    const/4 v5, 0x1

    :try_start_9f
    aget-object v0, v1, v5
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a1} :catch_ab

    return-object v0

    .line 261
    :catchall_a2
    move-exception v6

    :try_start_a3
    monitor-exit v5
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_a4
    throw v6
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a5} :catch_ab

    .line 258
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catchall_a5
    move-exception v6

    :try_start_a6
    monitor-exit v5
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_a7
    throw v6
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_a8} :catch_ab

    .line 252
    .end local v4    # "client":Landroid/media/midi/MidiDeviceServer$OutputPortClient;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catchall_a8
    move-exception v4

    :try_start_a9
    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    .end local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "portNumber":I
    :try_start_aa
    throw v4
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ab} :catch_ab

    .line 263
    .end local v1    # "pair":[Ljava/io/FileDescriptor;
    .end local v2    # "inputPort":Landroid/media/midi/MidiInputPort;
    .end local v3    # "dispatcher":Lcom/android/internal/midi/MidiDispatcher;
    .restart local p0    # "this":Landroid/media/midi/MidiDeviceServer$1;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "portNumber":I
    :catch_ab
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MidiDeviceServer"

    const-string/jumbo v3, "unable to create FileDescriptors in openOutputPort"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v0

    .line 233
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b5
    :goto_b5
    const-string v1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "portNumber out of range in openOutputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0
.end method

.method public blacklist setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1e

    .line 327
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_16

    .line 330
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0, p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fputmDeviceInfo(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)V

    .line 331
    return-void

    .line 328
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDeviceInfo should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "setDeviceInfo should only be called by MidiService"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
