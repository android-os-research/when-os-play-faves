.class final Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;
.super Ljava/lang/Object;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentEntry"
.end annotation


# instance fields
.field private bytesRead:J

.field private causedUseOfZip64:Z

.field private dataStart:J

.field private final entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private hasWritten:Z

.field private localDataStart:J


# direct methods
.method static bridge synthetic -$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->bytesRead:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcausedUseOfZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->dataStart:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasWritten(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->hasWritten:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalDataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->localDataStart:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->bytesRead:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcausedUseOfZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->causedUseOfZip64:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->dataStart:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasWritten(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->hasWritten:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlocalDataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->localDataStart:J

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 4

    .line 1652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1663
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->localDataStart:J

    .line 1667
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->dataStart:J

    .line 1672
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->bytesRead:J

    const/4 v0, 0x0

    .line 1676
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->causedUseOfZip64:Z

    .line 1653
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    return-void
.end method
