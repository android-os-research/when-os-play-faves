.class public final Lorg/apache/commons/compress/archivers/zip/ZipShort;
.super Ljava/lang/Object;
.source "ZipShort.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    return-void
.end method

.method public static getBytes(I)[B
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    return-object v0
.end method

.method public static getValue([B)I
    .registers 2

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p0

    return p0
.end method

.method public static getValue([BI)I
    .registers 3

    const/4 v0, 0x2

    .line 113
    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static putShort(I[BI)V
    .registers 5

    int-to-long v0, p0

    const/4 p0, 0x2

    .line 103
    invoke-static {p1, v0, v1, p2, p0}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian([BJII)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 150
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 132
    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    if-nez v1, :cond_8

    goto :goto_13

    .line 135
    :cond_8
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result p1

    if-ne p0, p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    :goto_13
    return v0
.end method

.method public getBytes()[B
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 71
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    int-to-long v2, p0

    const/4 p0, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian([BJII)V

    return-object v1
.end method

.method public getValue()I
    .registers 1

    .line 80
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 144
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipShort value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
