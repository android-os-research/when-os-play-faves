.class final Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
.super Ljava/lang/Object;
.source "ZipArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentEntry"
.end annotation


# instance fields
.field private bytesRead:J

.field private bytesReadFromStream:J

.field private final crc:Ljava/util/zip/CRC32;

.field private final entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private hasDataDescriptor:Z

.field private in:Ljava/io/InputStream;

.field private usesZip64:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesRead:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesReadFromStream:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcrc(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/util/zip/CRC32;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->crc:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->hasDataDescriptor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->in:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusesZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->usesZip64:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesRead:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesReadFromStream:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->hasDataDescriptor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->in:Ljava/io/InputStream;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputusesZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->usesZip64:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1193
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry-IA;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;-><init>()V

    return-void
.end method
