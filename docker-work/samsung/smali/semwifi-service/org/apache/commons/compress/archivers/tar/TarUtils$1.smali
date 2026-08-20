.class Lorg/apache/commons/compress/archivers/tar/TarUtils$1;
.super Ljava/lang/Object;
.source "TarUtils.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/tar/TarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public decode([B)Ljava/lang/String;
    .registers 5

    .line 65
    array-length p0, p1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    array-length p0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p0, :cond_18

    aget-byte v2, p1, v1

    if-nez v2, :cond_f

    goto :goto_18

    :cond_f
    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 75
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 54
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_13

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 60
    :cond_13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method
