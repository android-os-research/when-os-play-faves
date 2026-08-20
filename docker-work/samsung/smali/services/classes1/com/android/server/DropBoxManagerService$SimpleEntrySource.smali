.class public Lcom/android/server/DropBoxManagerService$SimpleEntrySource;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Lcom/android/server/DropBoxManagerInternal$EntrySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEntrySource"
.end annotation


# instance fields
.field public final forceCompress:Z

.field public final in:Ljava/io/InputStream;

.field public final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .registers 5

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 435
    iput-wide p2, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    .line 436
    iput-boolean p4, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public length()J
    .registers 3

    .line 440
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    return-wide v0
.end method

.method public writeTo(Ljava/io/FileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    if-eqz v0, :cond_17

    .line 449
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 451
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 452
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_21

    .line 454
    :cond_17
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    :goto_21
    return-void
.end method
