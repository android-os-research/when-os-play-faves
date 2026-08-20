.class public Lorg/tukaani/xz/SeekableFileInputStream;
.super Lorg/tukaani/xz/SeekableInputStream;
.source "SeekableFileInputStream.java"


# instance fields
.field protected randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    .line 32
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    .line 40
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

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

    .line 78
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public position()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public seek(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lorg/tukaani/xz/SeekableFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
