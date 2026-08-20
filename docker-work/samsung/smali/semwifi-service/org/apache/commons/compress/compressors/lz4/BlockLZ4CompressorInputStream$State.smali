.class final enum Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;
.super Ljava/lang/Enum;
.source "BlockLZ4CompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

.field public static final enum EOF:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

.field public static final enum IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

.field public static final enum IN_LITERAL:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

.field public static final enum LOOKING_FOR_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

.field public static final enum NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 145
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const-string v1, "NO_BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const-string v3, "IN_LITERAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    new-instance v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const-string v5, "LOOKING_FOR_BACK_REFERENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->LOOKING_FOR_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    new-instance v5, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const-string v7, "IN_BACK_REFERENCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    new-instance v7, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const-string v9, "EOF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->EOF:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 144
    sput-object v9, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->$VALUES:[Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;
    .registers 2

    .line 144
    const-class v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;
    .registers 1

    .line 144
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->$VALUES:[Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-object v0
.end method
