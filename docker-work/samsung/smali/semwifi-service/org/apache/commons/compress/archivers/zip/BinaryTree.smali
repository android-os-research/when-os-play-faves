.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "BinaryTree.java"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    add-int/2addr p1, v0

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    .line 48
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 p0, -0x1

    .line 49
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-eqz v0, :cond_8e

    .line 117
    new-array v2, v0, [B

    .line 118
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 123
    new-array p0, p1, [I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_18
    if-ge v4, v0, :cond_36

    .line 125
    aget-byte v7, v2, v4

    and-int/lit16 v8, v7, 0xf0

    shr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v1

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v7, v1

    move v9, v3

    :goto_25
    if-ge v9, v8, :cond_2f

    add-int/lit8 v10, v6, 0x1

    .line 131
    aput v7, p0, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v10

    goto :goto_25

    .line 134
    :cond_2f
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 138
    :cond_36
    new-array v0, p1, [I

    move v2, v3

    :goto_39
    if-ge v2, p1, :cond_40

    .line 140
    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 144
    :cond_40
    new-array v2, p1, [I

    move v4, v3

    move v6, v4

    :goto_44
    if-ge v4, p1, :cond_59

    move v7, v3

    :goto_47
    if-ge v7, p1, :cond_56

    .line 149
    aget v8, p0, v7

    if-ne v8, v4, :cond_53

    .line 151
    aput v4, v2, v6

    .line 154
    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 166
    :cond_59
    new-array v4, p1, [I

    add-int/lit8 v6, p1, -0x1

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_60
    if-ltz v6, :cond_73

    add-int/2addr v7, v8

    .line 170
    aget v10, v2, v6

    if-eq v10, v9, :cond_6c

    rsub-int/lit8 v8, v10, 0x10

    shl-int v8, v1, v8

    move v9, v10

    .line 174
    :cond_6c
    aget v10, v0, v6

    aput v7, v4, v10

    add-int/lit8 v6, v6, -0x1

    goto :goto_60

    .line 178
    :cond_73
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    move v1, v3

    :goto_79
    if-ge v1, p1, :cond_8d

    .line 181
    aget v2, p0, v1

    if-lez v2, :cond_8a

    .line 183
    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    move-result v5

    invoke-virtual {v0, v3, v5, v2, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_8d
    return-object v0

    .line 114
    :cond_8e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addLeaf(IIII)V
    .registers 7

    if-nez p3, :cond_34

    .line 63
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget p3, p2, p1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_c

    .line 64
    aput p4, p2, p1

    goto :goto_47

    .line 66
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tree value at index "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " has already been assigned ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget p0, p0, p1

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_34
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x2

    aput v1, v0, p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 v0, p2, 0x1

    add-int/2addr p1, v0

    ushr-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    :goto_47
    return-void
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    return v2

    :cond_9
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 94
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v4, v4, v3

    const/4 v5, -0x2

    if-ne v4, v5, :cond_17

    move v0, v3

    goto :goto_1

    :cond_17
    if-eq v4, v2, :cond_1a

    return v4

    .line 101
    :cond_1a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The child "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of node at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not defined"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
