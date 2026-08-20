.class public Lcom/android/server/clipboard/EmulatorClipboardMonitor;
.super Ljava/lang/Object;
.source "EmulatorClipboardMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/content/ClipData;",
        ">;"
    }
.end annotation


# static fields
.field public static final HOST_PORT:I = 0x1388

.field public static final LOG_CLIBOARD_ACCESS:Z

.field public static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"

.field public static final TAG:Ljava/lang/String; = "EmulatorClipboardMonitor"


# instance fields
.field public final mHostMonitorThread:Ljava/lang/Thread;

.field public mPipe:Ljava/io/FileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$2biYIY9tsZwdWL8diWx64NnVRlU(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->lambda$new$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$prLT5snplszL8Upo1PCCDZpX_Wo(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->lambda$setHostClipboard$1(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.boot.qemu.log_clipboard_access"

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/ClipData;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mHostMonitorThread:Ljava/lang/Thread;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static createOpenHandshake()[B
    .registers 3

    const-string/jumbo v0, "pipe:clipboard"

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 55
    aput-byte v2, v0, v1

    return-object v0
.end method

.method private synthetic lambda$new$0(Ljava/util/function/Consumer;)V
    .registers 9

    const/4 v0, 0x0

    :catch_1
    :goto_1
    move-object v1, v0

    .line 131
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_6a

    if-nez v1, :cond_11

    .line 134
    :try_start_a
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipe()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setPipeFD(Ljava/io/FileDescriptor;)V

    .line 138
    :cond_11
    invoke-static {v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->receiveMessage(Ljava/io/FileDescriptor;)[B

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 141
    new-instance v2, Landroid/content/ClipData;

    const-string/jumbo v4, "host clipboard"

    const-string/jumbo v5, "text/plain"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v4, v5, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 144
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    const/4 v6, 0x1

    .line 145
    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 148
    sget-boolean v4, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    if-eqz v4, :cond_5f

    const-string v4, "EmulatorClipboardMonitor"

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting the guest clipboard to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_5f
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_62
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_62} :catch_63
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_62} :catch_63
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_62} :catch_63
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_62} :catch_63

    goto :goto_2

    .line 154
    :catch_63
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setPipeFD(Ljava/io/FileDescriptor;)V

    .line 157
    :try_start_66
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_69
    .catch Landroid/system/ErrnoException; {:try_start_66 .. :try_end_69} :catch_1

    goto :goto_1

    :cond_6a
    return-void
.end method

.method public static synthetic lambda$setHostClipboard$1(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    .line 197
    sget-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    const-string v1, "EmulatorClipboardMonitor"

    if-eqz v0, :cond_1f

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the host clipboard to \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->sendMessage(Ljava/io/FileDescriptor;[B)V
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_26} :catch_27
    .catch Ljava/io/InterruptedIOException; {:try_start_1f .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_26} :catch_40

    goto :goto_40

    :catch_27
    move-exception p0

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set host clipboard "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_40
    :goto_40
    return-void
.end method

.method public static openPipe()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_10

    const-wide/16 v0, 0x64

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 94
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_4

    :cond_10
    return-object v0
.end method

.method public static openPipeImpl()Ljava/io/FileDescriptor;
    .registers 5

    .line 69
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_VSOCK:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_9} :catch_21

    .line 72
    :try_start_9
    new-instance v1, Landroid/system/VmSocketAddress;

    const/16 v3, 0x1388

    sget v4, Landroid/system/OsConstants;->VMADDR_CID_HOST:I

    invoke-direct {v1, v3, v4}, Landroid/system/VmSocketAddress;-><init>(II)V

    invoke-static {v0, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 74
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->createOpenHandshake()[B

    move-result-object v1

    .line 75
    array-length v3, v1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_1d} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_1d} :catch_1e
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_1d} :catch_1e

    return-object v0

    .line 78
    :catch_1e
    :try_start_1e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileDescriptor;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_11

    .line 215
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-lez v0, :cond_b

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 220
    :cond_b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_11
    return-void
.end method

.method public static receiveMessage(Ljava/io/FileDescriptor;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 103
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->readFully(Ljava/io/FileDescriptor;[BII)V

    .line 105
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 109
    new-array v1, v0, [B

    .line 110
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->readFully(Ljava/io/FileDescriptor;[BII)V

    return-object v1
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 119
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 120
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 123
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V

    .line 124
    array-length v0, p1

    invoke-static {p0, p1, v2, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V

    return-void
.end method

.method public static setHostClipboard(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static writeFully(Ljava/io/FileDescriptor;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_16

    .line 229
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-lez v0, :cond_b

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 234
    :cond_b
    new-instance p0, Landroid/system/ErrnoException;

    sget p1, Landroid/system/OsConstants;->EIO:I

    const-string/jumbo p2, "write"

    invoke-direct {p0, p2, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_16
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/ClipData;)V
    .registers 3

    .line 172
    invoke-virtual {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->getPipeFD()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->getClipString(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setHostClipboard(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 40
    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->accept(Landroid/content/ClipData;)V

    return-void
.end method

.method public final getClipString(Landroid/content/ClipData;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    if-nez p1, :cond_5

    return-object p0

    .line 183
    :cond_5
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_c

    return-object p0

    :cond_c
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_18

    return-object p0

    .line 192
    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getPipeFD()Ljava/io/FileDescriptor;
    .registers 2

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setPipeFD(Ljava/io/FileDescriptor;)V
    .registers 2

    monitor-enter p0

    .line 64
    :try_start_1
    iput-object p1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 65
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
