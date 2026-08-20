.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetcomment(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B

    return-object p0
.end method

.method private constructor <init>([B[B)V
    .registers 3

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->name:[B

    .line 1201
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->comment:[B

    return-void
.end method

.method synthetic constructor <init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method
