.class public final enum Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;
.super Ljava/lang/Enum;
.source "FramedLZ4CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

.field public static final enum K256:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

.field public static final enum K64:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

.field public static final enum M1:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

.field public static final enum M4:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;


# instance fields
.field private final index:I

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 64
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    const-string v1, "K64"

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->K64:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 66
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    const-string v3, "K256"

    const/4 v5, 0x1

    const/high16 v6, 0x40000

    const/4 v7, 0x5

    invoke-direct {v1, v3, v5, v6, v7}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->K256:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 68
    new-instance v3, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    const-string v6, "M1"

    const/4 v7, 0x2

    const/high16 v8, 0x100000

    const/4 v9, 0x6

    invoke-direct {v3, v6, v7, v8, v9}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->M1:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 70
    new-instance v6, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    const-string v8, "M4"

    const/4 v9, 0x3

    const/high16 v10, 0x400000

    const/4 v11, 0x7

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->M4:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    new-array v4, v4, [Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    aput-object v6, v4, v9

    .line 62
    sput-object v4, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->$VALUES:[Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->size:I

    .line 75
    iput p4, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;
    .registers 2

    .line 62
    const-class v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->$VALUES:[Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    return-object v0
.end method


# virtual methods
.method getIndex()I
    .registers 1

    .line 81
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->index:I

    return p0
.end method

.method getSize()I
    .registers 1

    .line 78
    iget p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->size:I

    return p0
.end method
