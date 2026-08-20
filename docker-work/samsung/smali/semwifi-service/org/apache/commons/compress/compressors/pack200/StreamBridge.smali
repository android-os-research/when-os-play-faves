.class abstract Lorg/apache/commons/compress/compressors/pack200/StreamBridge;
.super Ljava/io/FilterOutputStream;
.source "StreamBridge.java"


# instance fields
.field private input:Ljava/io/InputStream;

.field private final inputLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->inputLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getInput()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->input:Ljava/io/InputStream;

    if-nez v1, :cond_d

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->getInputView()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->input:Ljava/io/InputStream;

    .line 54
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    .line 55
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->input:Ljava/io/InputStream;

    return-object p0

    :catchall_11
    move-exception p0

    .line 54
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method abstract getInputView()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 68
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->inputLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_6
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_10

    .line 70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/StreamBridge;->input:Ljava/io/InputStream;

    .line 73
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method
