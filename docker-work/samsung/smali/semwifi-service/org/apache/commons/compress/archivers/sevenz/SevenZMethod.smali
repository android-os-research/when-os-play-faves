.class public final enum Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
.super Ljava/lang/Enum;
.source "SevenZMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;


# instance fields
.field private final id:[B


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 38
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const-string v4, "COPY"

    invoke-direct {v0, v4, v3, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 40
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const/4 v4, 0x3

    new-array v5, v4, [B

    fill-array-data v5, :array_112

    const-string v6, "LZMA"

    invoke-direct {v2, v6, v1, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 42
    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v6, v1, [B

    const/16 v7, 0x21

    aput-byte v7, v6, v3

    const-string v7, "LZMA2"

    const/4 v8, 0x2

    invoke-direct {v5, v7, v8, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 44
    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v7, v4, [B

    fill-array-data v7, :array_118

    const-string v9, "DEFLATE"

    invoke-direct {v6, v9, v4, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 49
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v9, v4, [B

    fill-array-data v9, :array_11e

    const-string v10, "DEFLATE64"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 51
    new-instance v9, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v10, v4, [B

    fill-array-data v10, :array_124

    const-string v12, "BZIP2"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v9, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 56
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v12, v11, [B

    fill-array-data v12, :array_12a

    const-string v14, "AES256SHA256"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 61
    new-instance v12, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v14, v11, [B

    fill-array-data v14, :array_130

    const-string v15, "BCJ_X86_FILTER"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v12, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 66
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v15, v11, [B

    fill-array-data v15, :array_136

    const-string v13, "BCJ_PPC_FILTER"

    const/16 v8, 0x8

    invoke-direct {v14, v13, v8, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v14, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 71
    new-instance v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v15, v11, [B

    fill-array-data v15, :array_13c

    const-string v8, "BCJ_IA64_FILTER"

    const/16 v3, 0x9

    invoke-direct {v13, v8, v3, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 76
    new-instance v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v15, v11, [B

    fill-array-data v15, :array_142

    const-string v3, "BCJ_ARM_FILTER"

    const/16 v4, 0xa

    invoke-direct {v8, v3, v4, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 81
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v15, v11, [B

    fill-array-data v15, :array_148

    const-string v4, "BCJ_ARM_THUMB_FILTER"

    const/16 v1, 0xb

    invoke-direct {v3, v4, v1, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 86
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-array v15, v11, [B

    fill-array-data v15, :array_14e

    const-string v1, "BCJ_SPARC_FILTER"

    const/16 v11, 0xc

    invoke-direct {v4, v1, v11, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 91
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const/4 v15, 0x1

    new-array v11, v15, [B

    const/16 v16, 0x0

    const/16 v17, 0x3

    aput-byte v17, v11, v16

    const-string v15, "DELTA_FILTER"

    move-object/from16 v18, v4

    const/16 v4, 0xd

    invoke-direct {v1, v15, v4, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const/16 v11, 0xe

    new-array v11, v11, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v0, v11, v16

    const/4 v0, 0x1

    aput-object v2, v11, v0

    const/4 v0, 0x2

    aput-object v5, v11, v0

    aput-object v6, v11, v17

    const/4 v0, 0x4

    aput-object v7, v11, v0

    const/4 v0, 0x5

    aput-object v9, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    const/16 v0, 0x9

    aput-object v13, v11, v0

    const/16 v0, 0xa

    aput-object v8, v11, v0

    const/16 v0, 0xb

    aput-object v3, v11, v0

    const/16 v0, 0xc

    aput-object v18, v11, v0

    aput-object v1, v11, v4

    .line 36
    sput-object v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-void

    nop

    :array_112
    .array-data 1
        0x3t
        0x1t
        0x1t
    .end array-data

    :array_118
    .array-data 1
        0x4t
        0x1t
        0x8t
    .end array-data

    :array_11e
    .array-data 1
        0x4t
        0x1t
        0x9t
    .end array-data

    :array_124
    .array-data 1
        0x4t
        0x2t
        0x2t
    .end array-data

    :array_12a
    .array-data 1
        0x6t
        -0xft
        0x7t
        0x1t
    .end array-data

    :array_130
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x3t
    .end array-data

    :array_136
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x5t
    .end array-data

    :array_13c
    .array-data 1
        0x3t
        0x3t
        0x4t
        0x1t
    .end array-data

    :array_142
    .array-data 1
        0x3t
        0x3t
        0x5t
        0x1t
    .end array-data

    :array_148
    .array-data 1
        0x3t
        0x3t
        0x7t
        0x1t
    .end array-data

    :array_14e
    .array-data 1
        0x3t
        0x3t
        0x8t
        0x5t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    return-void
.end method

.method static byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .registers 6

    .line 106
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 107
    iget-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_17

    return-object v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .registers 2

    .line 36
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .registers 1

    .line 36
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-object v0
.end method


# virtual methods
.method getId()[B
    .registers 4

    .line 100
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    array-length v0, p0

    new-array v0, v0, [B

    .line 101
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
