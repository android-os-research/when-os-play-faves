.class final Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;
.super Ljava/lang/Object;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryMetaData"
.end annotation


# instance fields
.field private final offset:J

.field private final usesDataDescriptor:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetoffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->offset:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetusesDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->usesDataDescriptor:Z

    return p0
.end method

.method private constructor <init>(JZ)V
    .registers 4

    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->offset:J

    .line 1693
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->usesDataDescriptor:Z

    return-void
.end method

.method synthetic constructor <init>(JZLorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;-><init>(JZ)V

    return-void
.end method
