.class public Lcom/android/internal/util/jobs/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;
    }
.end annotation


# instance fields
.field public final mAutoFlush:Z

.field public final mBufferLen:I

.field public final mBytes:Ljava/nio/ByteBuffer;

.field public mCharset:Ljava/nio/charset/CharsetEncoder;

.field public mIoError:Z

.field public final mOutputStream:Ljava/io/OutputStream;

.field public mPos:I

.field public final mPrinter:Landroid/util/Printer;

.field public final mSeparator:Ljava/lang/String;

.field public final mText:[C

.field public final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .registers 3

    const/16 v0, 0x200

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .registers 6

    .line 234
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter-IA;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_26

    .line 238
    iput p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 239
    new-array p2, p2, [C

    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 240
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 241
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 242
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 243
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 244
    iput-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 245
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 236
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "pr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 83
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4

    const/16 v0, 0x2000

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .registers 6

    .line 122
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_29

    .line 126
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 127
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 128
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 129
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 130
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 131
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 132
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 124
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "out is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 152
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 4

    const/16 v0, 0x2000

    .line 170
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .registers 6

    .line 191
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_25

    .line 195
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 196
    new-array p3, p3, [C

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 197
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 198
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 199
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 200
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 201
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 202
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 193
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "wr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 4

    if-nez p1, :cond_5

    const-string/jumbo p1, "null"

    .line 700
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public final appendLocked(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 301
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 303
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 305
    :cond_d
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 306
    iput v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method public final appendLocked(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_15

    add-int/2addr p3, p2

    :goto_5
    if-ge p2, p3, :cond_14

    add-int v1, p2, v0

    if-ge v1, p3, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    sub-int v2, p3, p2

    .line 315
    :goto_f
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_5

    :cond_14
    return-void

    .line 320
    :cond_15
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_20

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 323
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_20
    add-int v0, p2, p3

    .line 325
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 326
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method public final appendLocked([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_15

    add-int/2addr p3, p2

    :goto_5
    if-ge p2, p3, :cond_14

    add-int v1, p2, v0

    if-ge v1, p3, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    sub-int v2, p3, p2

    .line 335
    :goto_f
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V

    move p2, v1

    goto :goto_5

    :cond_14
    return-void

    .line 340
    :cond_15
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_20

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 343
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 345
    :cond_20
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 346
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method public checkError()Z
    .registers 2

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flush()V

    .line 269
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_6
    iget-boolean p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 271
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearError()V
    .registers 3

    .line 279
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 280
    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 281
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public close()V
    .registers 5

    .line 429
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 432
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_e

    .line 433
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_23

    .line 434
    :cond_e
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_23

    .line 435
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_18
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    goto :goto_23

    :catchall_16
    move-exception p0

    goto :goto_25

    :catch_18
    move-exception v1

    :try_start_19
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    .line 438
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 441
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_16

    throw p0
.end method

.method public flush()V
    .registers 5

    .line 410
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 413
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_27

    .line 414
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_12

    .line 415
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_27

    .line 416
    :cond_12
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_27

    .line 417
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1c
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_27

    :catchall_1a
    move-exception p0

    goto :goto_29

    :catch_1c
    move-exception v1

    :try_start_1d
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    .line 421
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 424
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1a

    throw p0
.end method

.method public final flushBytesLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_22

    .line 352
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_22

    .line 353
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 354
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 355
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_22
    return-void
.end method

.method public final flushLocked()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-lez v0, :cond_a1

    .line 363
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4b

    .line 364
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {v1, v3, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 366
    :goto_18
    iget-boolean v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v4, :cond_3e

    .line 367
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_34

    .line 369
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 371
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_18

    .line 368
    :cond_34
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 376
    :cond_3e
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_9f

    .line 377
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 378
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_9f

    .line 380
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_5e

    .line 381
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v2, :cond_9f

    .line 382
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_9f

    .line 387
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 388
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-ge v0, v1, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v1

    :goto_6a
    move v1, v3

    :goto_6b
    if-ge v1, v0, :cond_86

    .line 389
    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    iget v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    aget-char v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 390
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_86

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 393
    :cond_86
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-lt v1, v0, :cond_92

    .line 394
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_9f

    .line 396
    :cond_92
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    sub-int/2addr v0, v1

    invoke-direct {v4, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 399
    :cond_9f
    :goto_9f
    iput v3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_a1
    return-void
.end method

.method public final initDefaultEncoder()V
    .registers 3

    .line 294
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 295
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 296
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public final initEncoder(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 251
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_17

    .line 255
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 256
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void

    .line 253
    :catch_17
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public print(C)V
    .registers 5

    .line 472
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_14

    :catchall_7
    move-exception p0

    goto :goto_16

    :catch_9
    move-exception p1

    :try_start_a
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    .line 476
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 479
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p0
.end method

.method public print(I)V
    .registers 2

    if-nez p1, :cond_8

    const-string p1, "0"

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 513
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :goto_b
    return-void
.end method

.method public print(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    const-string p1, "0"

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 522
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    :goto_f
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_5

    const-string/jumbo p1, "null"

    .line 497
    :cond_5
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 499
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_13
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_1e

    :catchall_11
    move-exception p0

    goto :goto_20

    :catch_13
    move-exception p1

    :try_start_14
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    .line 501
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 504
    :goto_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_11

    throw p0
.end method

.method public print([C)V
    .registers 5

    .line 453
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 455
    :try_start_4
    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_b
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    goto :goto_16

    :catchall_9
    move-exception p0

    goto :goto_18

    :catch_b
    move-exception p1

    :try_start_c
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    .line 457
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 460
    :goto_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_9

    throw p0
.end method

.method public println()V
    .registers 5

    .line 530
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 533
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_22

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_17
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    goto :goto_22

    :catchall_15
    move-exception p0

    goto :goto_24

    :catch_17
    move-exception v1

    :try_start_18
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    .line 537
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 540
    :cond_22
    :goto_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    throw p0
.end method

.method public println(C)V
    .registers 2

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(C)V

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public println(I)V
    .registers 2

    if-nez p1, :cond_8

    const-string p1, "0"

    .line 546
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 548
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    :goto_b
    return-void
.end method

.method public println(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    const-string p1, "0"

    .line 555
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 557
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    :goto_f
    return-void
.end method

.method public println([C)V
    .registers 2

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print([C)V

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public setError()V
    .registers 3

    .line 288
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 289
    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 290
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public write(I)V
    .registers 5

    .line 620
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    int-to-char p1, p1

    .line 622
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_a
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_15

    :catchall_8
    move-exception p0

    goto :goto_17

    :catch_a
    move-exception p1

    :try_start_b
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    .line 624
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 627
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8

    throw p0
.end method

.method public write(Ljava/lang/String;)V
    .registers 5

    .line 638
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 640
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_e
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception p0

    goto :goto_1b

    :catch_e
    move-exception p1

    :try_start_f
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    .line 642
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 645
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_c

    throw p0
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5

    .line 664
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_14

    :catchall_7
    move-exception p0

    goto :goto_16

    :catch_9
    move-exception p1

    :try_start_a
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    .line 668
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 671
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p0
.end method

.method public write([CII)V
    .registers 5

    .line 598
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    goto :goto_14

    :catchall_7
    move-exception p0

    goto :goto_16

    :catch_9
    move-exception p1

    :try_start_a
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    .line 602
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 605
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p0
.end method
