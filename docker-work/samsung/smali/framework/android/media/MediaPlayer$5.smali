.class Landroid/media/MediaPlayer$5;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field final synthetic blacklist val$dupedFd:Ljava/io/FileDescriptor;

.field final synthetic blacklist val$length2:J

.field final synthetic blacklist val$offset2:J

.field final synthetic blacklist val$thread:Landroid/os/HandlerThread;

.field final synthetic blacklist val$track:Landroid/media/SubtitleTrack;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V
    .registers 9
    .param p1, "this$0"    # Landroid/media/MediaPlayer;

    .line 3620
    iput-object p1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    iput-wide p3, p0, Landroid/media/MediaPlayer$5;->val$offset2:J

    iput-wide p5, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    iput-object p7, p0, Landroid/media/MediaPlayer$5;->val$track:Landroid/media/SubtitleTrack;

    iput-object p8, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist addTrack()I
    .registers 11

    .line 3622
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3624
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Landroid/media/MediaPlayer$5;->val$offset2:J

    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 3625
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 3626
    .local v1, "buffer":[B
    const-wide/16 v2, 0x0

    .local v2, "total":J
    :goto_14
    iget-wide v4, p0, Landroid/media/MediaPlayer$5;->val$length2:J

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    if-gez v6, :cond_32

    .line 3627
    array-length v6, v1

    int-to-long v8, v6

    sub-long/2addr v4, v2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 3628
    .local v4, "bytesToRead":I
    iget-object v5, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v5, v1, v7, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 3629
    .local v5, "bytes":I
    if-gez v5, :cond_2c

    .line 3630
    goto :goto_32

    .line 3632
    :cond_2c
    invoke-virtual {v0, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3633
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3635
    .end local v4    # "bytesToRead":I
    .end local v5    # "bytes":I
    goto :goto_14

    .line 3636
    .end local v2    # "total":J
    :cond_32
    :goto_32
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProviderLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_77
    .catchall {:try_start_5 .. :try_end_39} :catchall_75

    .line 3637
    :try_start_39
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 3638
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmTimeProvider(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v3

    .line 3640
    .local v3, "h":Landroid/os/Handler;
    const/4 v4, 0x2

    .line 3644
    .local v4, "what":I
    const/4 v5, 0x4

    .line 3645
    .local v5, "arg1":I
    iget-object v6, p0, Landroid/media/MediaPlayer$5;->val$track:Landroid/media/SubtitleTrack;

    .line 3646
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 3647
    .local v6, "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3648
    .local v7, "m":Landroid/os/Message;
    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3650
    .end local v3    # "h":Landroid/os/Handler;
    .end local v4    # "what":I
    .end local v5    # "arg1":I
    .end local v6    # "trackData":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/SubtitleTrack;[B>;"
    .end local v7    # "m":Landroid/os/Message;
    :cond_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_72

    .line 3651
    const/16 v2, 0x323

    .line 3657
    :try_start_61
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_66
    .catch Landroid/system/ErrnoException; {:try_start_61 .. :try_end_66} :catch_67

    .line 3660
    goto :goto_71

    .line 3658
    :catch_67
    move-exception v3

    .line 3659
    .local v3, "e":Landroid/system/ErrnoException;
    const-string v4, "MediaPlayer"

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3651
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_71
    return v2

    .line 3650
    :catchall_72
    move-exception v3

    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Landroid/media/MediaPlayer$5;
    :try_start_74
    throw v3
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_77
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 3656
    .end local v1    # "buffer":[B
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Landroid/media/MediaPlayer$5;
    :catchall_75
    move-exception v1

    goto :goto_94

    .line 3652
    :catch_77
    move-exception v1

    .line 3653
    .local v1, "e":Ljava/lang/Exception;
    :try_start_78
    const-string v2, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_75

    .line 3654
    const/16 v2, 0x384

    .line 3657
    :try_start_83
    iget-object v3, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_88
    .catch Landroid/system/ErrnoException; {:try_start_83 .. :try_end_88} :catch_89

    .line 3660
    goto :goto_93

    .line 3658
    :catch_89
    move-exception v3

    .line 3659
    .restart local v3    # "e":Landroid/system/ErrnoException;
    const-string v4, "MediaPlayer"

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3654
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_93
    return v2

    .line 3657
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_94
    :try_start_94
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->val$dupedFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_99
    .catch Landroid/system/ErrnoException; {:try_start_94 .. :try_end_99} :catch_9a

    .line 3660
    goto :goto_a4

    .line 3658
    :catch_9a
    move-exception v2

    .line 3659
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3661
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_a4
    throw v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 3665
    invoke-direct {p0}, Landroid/media/MediaPlayer$5;->addTrack()I

    move-result v0

    .line 3666
    .local v0, "res":I
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 3667
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3668
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/MediaPlayer$5;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->-$$Nest$fgetmEventHandler(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3670
    .end local v1    # "m":Landroid/os/Message;
    :cond_23
    iget-object v1, p0, Landroid/media/MediaPlayer$5;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 3671
    return-void
.end method
