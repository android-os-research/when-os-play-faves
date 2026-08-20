.class public final enum Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
.super Ljava/lang/Enum;
.source "DumpArchiveEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum BLKDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum CHRDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum DIRECTORY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum FIFO:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum FILE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum LINK:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum SOCKET:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final enum WHITEOUT:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 780
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v1, "WHITEOUT"

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->WHITEOUT:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 781
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v3, "SOCKET"

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->SOCKET:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 782
    new-instance v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v5, "LINK"

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->LINK:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 783
    new-instance v5, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v7, "FILE"

    const/4 v8, 0x3

    const/16 v9, 0x8

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->FILE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 784
    new-instance v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v10, "BLKDEV"

    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-direct {v7, v10, v11, v12}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->BLKDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 785
    new-instance v10, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v13, "DIRECTORY"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v11}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->DIRECTORY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 786
    new-instance v13, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v15, "CHRDEV"

    invoke-direct {v13, v15, v12, v6}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->CHRDEV:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 787
    new-instance v15, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v12, "FIFO"

    const/4 v14, 0x7

    invoke-direct {v15, v12, v14, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->FIFO:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 788
    new-instance v12, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const-string v14, "UNKNOWN"

    const/16 v11, 0xf

    invoke-direct {v12, v14, v9, v11}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    const/16 v11, 0x9

    new-array v11, v11, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    const/4 v0, 0x4

    aput-object v7, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v13, v11, v0

    const/4 v0, 0x7

    aput-object v15, v11, v0

    aput-object v12, v11, v9

    .line 779
    sput-object v11, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 792
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 793
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->code:I

    return-void
.end method

.method public static find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .registers 7

    .line 797
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 799
    invoke-static {}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 800
    iget v5, v4, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->code:I

    if-ne p0, v5, :cond_11

    move-object v0, v4

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .registers 2

    .line 779
    const-class v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .registers 1

    .line 779
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-object v0
.end method
