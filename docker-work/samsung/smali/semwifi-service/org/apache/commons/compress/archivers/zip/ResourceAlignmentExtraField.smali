.class public Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;
.super Ljava/lang/Object;
.source "ResourceAlignmentExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final ALLOW_METHOD_MESSAGE_CHANGE_FLAG:I = 0x8000

.field public static final BASE_SIZE:I = 0x2

.field public static final ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private alignment:S

.field private allowMethodChange:Z

.field private padding:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const v1, 0xa11e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZI)V

    return-void
.end method

.method public constructor <init>(IZI)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    if-ltz p1, :cond_14

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_14

    int-to-short p1, p1

    .line 70
    iput-short p1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    .line 71
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    .line 72
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    return-void

    .line 68
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Alignment must be between 0 and 0x7fff, was: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public allowMethodChange()Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    return p0
.end method

.method public getAlignment()S
    .registers 1

    .line 82
    iget-short p0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    return p0
.end method

.method public getCentralDirectoryData()[B
    .registers 2

    .line 120
    iget-short v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    if-eqz p0, :cond_a

    const p0, 0x8000

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    or-int/2addr p0, v0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 107
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 97
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 4

    .line 112
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 113
    iget-short v1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_11

    const p0, 0x8000

    goto :goto_12

    :cond_11
    move p0, v2

    :goto_12
    or-int/2addr p0, v1

    invoke-static {p0, v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 102
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    add-int/lit8 p0, p0, 0x2

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p3, v0, :cond_18

    .line 134
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    and-int/lit16 p2, p1, 0x7fff

    int-to-short p2, p2

    .line 135
    iput-short p2, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->alignment:S

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 136
    :goto_15
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange:Z

    return-void

    .line 132
    :cond_18
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too short content for ResourceAlignmentExtraField (0xa11e): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parseFromLocalFileData([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->parseFromCentralDirectoryData([BII)V

    add-int/lit8 p3, p3, -0x2

    .line 126
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->padding:I

    return-void
.end method
