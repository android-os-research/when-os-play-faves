.class public final enum Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;
.super Ljava/lang/Enum;
.source "DumpArchiveConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMPRESSION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

.field public static final enum BZLIB:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

.field public static final enum LZO:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

.field public static final enum ZLIB:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 71
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    const-string v1, "ZLIB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->ZLIB:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    .line 72
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    const-string v3, "BZLIB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->BZLIB:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    .line 73
    new-instance v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    const-string v5, "LZO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->LZO:Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 70
    sput-object v5, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->code:I

    return-void
.end method

.method public static find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;
    .registers 6

    .line 82
    invoke-static {}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 83
    iget v4, v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;
    .registers 2

    .line 70
    const-class v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;
    .registers 1

    .line 70
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    return-object v0
.end method
