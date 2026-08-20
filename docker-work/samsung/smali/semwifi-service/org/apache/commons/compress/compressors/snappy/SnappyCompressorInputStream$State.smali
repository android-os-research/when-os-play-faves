.class final enum Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;
.super Ljava/lang/Enum;
.source "SnappyCompressorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

.field public static final enum IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

.field public static final enum IN_LITERAL:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

.field public static final enum NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 284
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    const-string v1, "NO_BLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    new-instance v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    const-string v3, "IN_LITERAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    new-instance v3, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    const-string v5, "IN_BACK_REFERENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 283
    sput-object v5, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->$VALUES:[Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;
    .registers 2

    .line 283
    const-class v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;
    .registers 1

    .line 283
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->$VALUES:[Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    return-object v0
.end method
