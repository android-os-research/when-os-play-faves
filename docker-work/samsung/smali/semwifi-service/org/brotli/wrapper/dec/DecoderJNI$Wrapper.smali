.class public Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;
.super Ljava/lang/Object;
.source "DecoderJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/wrapper/dec/DecoderJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private final context:[J

.field private fresh:Z

.field private final inputBuffer:Ljava/nio/ByteBuffer;

.field private lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 30
    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    .line 32
    sget-object v1, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->fresh:Z

    int-to-long v2, p1

    aput-wide v2, v0, v1

    .line 37
    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativeCreate([J)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    aget-wide p0, v0, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_22

    return-void

    .line 39
    :cond_22
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to initialize native brotli decoder"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseStatus()V
    .registers 5

    .line 62
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 64
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_35

    :cond_10
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 66
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_35

    :cond_1b
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_26

    .line 68
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_35

    :cond_26
    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 70
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    goto :goto_35

    .line 72
    :cond_31
    sget-object v0, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->ERROR:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    :goto_35
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 7

    .line 105
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    .line 108
    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativeDestroy([J)V

    .line 109
    iget-object p0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    aput-wide v4, p0, v1

    return-void

    .line 106
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "brotli decoder is already destroyed"

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

    .line 114
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 116
    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 118
    :cond_e
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getInputBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 81
    iget-object p0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;
    .registers 1

    .line 77
    iget-object p0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    return-object p0
.end method

.method public hasOutput()Z
    .registers 5

    .line 85
    iget-object p0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

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

.method public pull()Ljava/nio/ByteBuffer;
    .registers 7

    .line 89
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_42

    .line 92
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v2, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_OUTPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-eq v0, v2, :cond_36

    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->hasOutput()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_36

    .line 93
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pulling output from decoder in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " state"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_36
    :goto_36
    iput-boolean v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->fresh:Z

    .line 96
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    invoke-static {v0}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativePull([J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    invoke-direct {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->parseStatus()V

    return-object v0

    .line 90
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "brotli decoder is already destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public push(I)V
    .registers 8

    if-ltz p1, :cond_56

    .line 47
    iget-object v0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->context:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    .line 50
    iget-object v2, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    sget-object v3, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->NEEDS_MORE_INPUT:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-eq v2, v3, :cond_36

    sget-object v3, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-ne v2, v3, :cond_18

    goto :goto_36

    .line 51
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushing input to decoder in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->lastStatus:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " state"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_36
    :goto_36
    sget-object v3, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->OK:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-ne v2, v3, :cond_45

    if-nez p1, :cond_3d

    goto :goto_45

    .line 54
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "pushing input to decoder in OK state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_45
    :goto_45
    iput-boolean v1, p0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->fresh:Z

    .line 57
    invoke-static {v0, p1}, Lorg/brotli/wrapper/dec/DecoderJNI;->-$$Nest$smnativePush([JI)V

    .line 58
    invoke-direct {p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->parseStatus()V

    return-void

    .line 48
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "brotli decoder is already destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
