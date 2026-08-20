.class Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;
.super Ljava/lang/Object;
.source "EncoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/enc/EncoderJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Wrapper"
.end annotation


# instance fields
.field protected final context:[J

.field private fresh:Z

.field private final inputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 28
    iput-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->fresh:Z

    if-lez p1, :cond_38

    int-to-long v2, p1

    aput-wide v2, v0, v1

    int-to-long p1, p2

    const/4 v2, 0x2

    aput-wide p1, v0, v2

    int-to-long p1, p3

    const/4 p3, 0x3

    aput-wide p1, v0, p3

    .line 40
    invoke-static {v0}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativeCreate([J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    aget-wide p0, v0, p0

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-eqz p0, :cond_30

    const-wide/16 p0, 0x1

    aput-wide p0, v0, v1

    aput-wide v3, v0, v2

    aput-wide v3, v0, p3

    return-void

    .line 42
    :cond_30
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to initialize native brotli encoder"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_38
    new-instance p0, Ljava/io/IOException;

    const-string p1, "buffer size must be positive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method destroy()V
    .registers 7

    .line 102
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    .line 105
    invoke-static {v0}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativeDestroy([J)V

    .line 106
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    aput-wide v4, p0, v1

    return-void

    .line 103
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "brotli encoder is already destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 113
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 115
    :cond_e
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getInputBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 84
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method hasMoreOutput()Z
    .registers 5

    .line 72
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method hasRemainingInput()Z
    .registers 5

    .line 76
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method isFinished()Z
    .registers 5

    .line 80
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method isSuccess()Z
    .registers 6

    .line 68
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method pull()Ljava/nio/ByteBuffer;
    .registers 7

    .line 88
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_28

    .line 91
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 94
    iput-boolean v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->fresh:Z

    .line 95
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-static {p0}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativePull([J)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 92
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "pulling while data is not ready"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "brotli encoder is already destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V
    .registers 9

    if-ltz p2, :cond_4c

    .line 53
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_44

    .line 56
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 59
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasRemainingInput()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-nez p2, :cond_22

    goto :goto_2a

    .line 60
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "pushing input to encoder over previous input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v3, p1

    aput-wide v3, v0, v2

    .line 63
    iput-boolean v1, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->fresh:Z

    .line 64
    iget-object p0, p0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->context:[J

    invoke-static {p0, p2}, Lorg/brotli/wrapper/enc/EncoderJNI;->-$$Nest$smnativePush([JI)V

    return-void

    .line 57
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "pushing input to encoder in unexpected state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "brotli encoder is already destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
