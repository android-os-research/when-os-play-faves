.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;
.super Ljava/lang/Object;
.source "DumpArchiveEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TapeSegmentHeader"
.end annotation


# instance fields
.field private final cdata:[B

.field private count:I

.field private holes:I

.field private ino:I

.field private type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

.field private volume:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcdata(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)[B
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->cdata:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetholes(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I
    .registers 1

    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->count:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputholes(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputino(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->ino:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtype(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvolume(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->volume:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 532
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->cdata:[B

    return-void
.end method


# virtual methods
.method public getCdata(I)I
    .registers 2

    .line 559
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->cdata:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public getCount()I
    .registers 1

    .line 551
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->count:I

    return p0
.end method

.method public getHoles()I
    .registers 1

    .line 555
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->holes:I

    return p0
.end method

.method public getIno()I
    .registers 1

    .line 543
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->ino:I

    return p0
.end method

.method public getType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .registers 1

    .line 535
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    return-object p0
.end method

.method public getVolume()I
    .registers 1

    .line 539
    iget p0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->volume:I

    return p0
.end method

.method setIno(I)V
    .registers 2

    .line 547
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->ino:I

    return-void
.end method
