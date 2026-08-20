.class Lorg/apache/commons/compress/compressors/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 583
    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V
    .registers 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    new-array v1, v0, [I

    .line 132
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    new-array v1, v0, [I

    .line 133
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    new-array v0, v0, [I

    .line 134
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 136
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    new-array v1, v0, [I

    .line 137
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    new-array v0, v0, [Z

    .line 138
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    const v0, 0x10001

    new-array v0, v0, [I

    .line 140
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 150
    iget-object p1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    return-void
.end method

.method private fallbackQSort3([I[III)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 350
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-wide v8, v4

    move v7, v6

    :goto_13
    if-lez v7, :cond_f4

    add-int/lit8 v7, v7, -0x1

    .line 353
    invoke-direct {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpop(I)[I

    move-result-object v10

    .line 354
    aget v11, v10, v3

    aget v10, v10, v6

    sub-int v12, v10, v11

    const/16 v13, 0xa

    if-ge v12, v13, :cond_29

    .line 357
    invoke-direct {v0, v1, v2, v11, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    goto :goto_13

    :cond_29
    const-wide/16 v12, 0x1dc5

    mul-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    const-wide/32 v14, 0x8000

    .line 368
    rem-long/2addr v8, v14

    const-wide/16 v14, 0x3

    .line 369
    rem-long v14, v8, v14

    cmp-long v16, v14, v4

    if-nez v16, :cond_41

    .line 372
    aget v12, v1, v11

    aget v12, v2, v12

    :goto_3f
    int-to-long v12, v12

    goto :goto_52

    :cond_41
    cmp-long v12, v14, v12

    if-nez v12, :cond_4d

    add-int v12, v11, v10

    ushr-int/2addr v12, v6

    .line 374
    aget v12, v1, v12

    aget v12, v2, v12

    goto :goto_3f

    .line 376
    :cond_4d
    aget v12, v1, v10

    aget v12, v2, v12

    goto :goto_3f

    :goto_52
    move v15, v10

    move/from16 v17, v15

    move v3, v11

    move v14, v3

    :goto_57
    if-le v14, v15, :cond_5a

    goto :goto_6f

    .line 389
    :cond_5a
    aget v18, v1, v14

    aget v18, v2, v18

    long-to-int v4, v12

    sub-int v18, v18, v4

    if-nez v18, :cond_6d

    .line 391
    invoke-direct {v0, v1, v14, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v3, v3, 0x1

    :goto_68
    add-int/lit8 v14, v14, 0x1

    :goto_6a
    const-wide/16 v4, 0x0

    goto :goto_57

    :cond_6d
    if-lez v18, :cond_f0

    :goto_6f
    move/from16 v4, v17

    :goto_71
    if-le v14, v15, :cond_74

    goto :goto_87

    .line 404
    :cond_74
    aget v5, v1, v15

    aget v5, v2, v5

    long-to-int v6, v12

    sub-int/2addr v5, v6

    if-nez v5, :cond_85

    .line 406
    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x1

    goto :goto_71

    :cond_85
    if-gez v5, :cond_e9

    :goto_87
    if-le v14, v15, :cond_db

    if-ge v4, v3, :cond_90

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    goto :goto_13

    :cond_90
    sub-int v5, v3, v11

    sub-int v6, v14, v3

    .line 425
    invoke-direct {v0, v5, v6}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v5

    sub-int v6, v14, v5

    .line 426
    invoke-direct {v0, v1, v11, v6, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    sub-int v5, v10, v4

    sub-int/2addr v4, v15

    .line 427
    invoke-direct {v0, v5, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v5

    add-int/lit8 v15, v15, 0x1

    sub-int v6, v10, v5

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 428
    invoke-direct {v0, v1, v15, v6, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    add-int/2addr v14, v11

    sub-int/2addr v14, v3

    add-int/lit8 v14, v14, -0x1

    sub-int v3, v10, v4

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v14, v11

    sub-int v5, v10, v3

    if-le v4, v5, :cond_c9

    add-int/lit8 v4, v7, 0x1

    .line 434
    invoke-direct {v0, v7, v11, v14}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v5, v4, 0x1

    .line 435
    invoke-direct {v0, v4, v3, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v7, v5

    goto :goto_d4

    :cond_c9
    add-int/lit8 v4, v7, 0x1

    .line 437
    invoke-direct {v0, v7, v3, v10}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    add-int/lit8 v3, v4, 0x1

    .line 438
    invoke-direct {v0, v4, v11, v14}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    move v7, v3

    :goto_d4
    move/from16 v6, v18

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    goto/16 :goto_13

    :cond_db
    const/16 v18, 0x1

    .line 418
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v17, v4

    move/from16 v6, v18

    goto :goto_6a

    :cond_e9
    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v6, v18

    goto :goto_71

    :cond_f0
    move/from16 v18, v6

    goto/16 :goto_68

    :cond_f4
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .registers 10

    if-ne p3, p4, :cond_3

    return-void

    :cond_3
    sub-int p0, p4, p3

    const/4 v0, 0x3

    if-le p0, v0, :cond_28

    add-int/lit8 p0, p4, -0x4

    :goto_a
    if-lt p0, p3, :cond_28

    .line 278
    aget v0, p1, p0

    .line 279
    aget v1, p2, v0

    add-int/lit8 v2, p0, 0x4

    :goto_12
    if-gt v2, p4, :cond_21

    .line 280
    aget v3, p1, v2

    aget v4, p2, v3

    if-le v1, v4, :cond_21

    add-int/lit8 v4, v2, -0x4

    .line 282
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x4

    goto :goto_12

    :cond_21
    add-int/lit8 v2, v2, -0x4

    .line 284
    aput v0, p1, v2

    add-int/lit8 p0, p0, -0x1

    goto :goto_a

    :cond_28
    add-int/lit8 p0, p4, -0x1

    :goto_2a
    if-lt p0, p3, :cond_48

    .line 289
    aget v0, p1, p0

    .line 290
    aget v1, p2, v0

    add-int/lit8 v2, p0, 0x1

    :goto_32
    if-gt v2, p4, :cond_41

    .line 291
    aget v3, p1, v2

    aget v4, p2, v3

    if-le v1, v4, :cond_41

    add-int/lit8 v4, v2, -0x1

    .line 292
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_41
    add-int/lit8 v2, v2, -0x1

    .line 294
    aput v0, p1, v2

    add-int/lit8 p0, p0, -0x1

    goto :goto_2a

    :cond_48
    return-void
.end method

.method private fmin(II)I
    .registers 3

    if-ge p1, p2, :cond_3

    goto :goto_4

    :cond_3
    move p1, p2

    :goto_4
    return p1
.end method

.method private fpop(I)[I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 329
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method private fpush(III)V
    .registers 5

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 325
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aput p3, p0, p1

    return-void
.end method

.method private fswap([III)V
    .registers 5

    .line 304
    aget p0, p1, p2

    .line 305
    aget v0, p1, p3

    aput v0, p1, p2

    .line 306
    aput p0, p1, p3

    return-void
.end method

.method private fvswap([IIII)V
    .registers 5

    :goto_0
    if-lez p4, :cond_c

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_c
    return-void
.end method

.method private getEclass()[I
    .registers 2

    .line 449
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_d

    .line 450
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    .line 452
    :cond_d
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    return-object p0
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V
    .registers 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 810
    iget-object v8, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 811
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 812
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 813
    iget-object v11, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 814
    iget-object v12, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    const/4 v0, 0x0

    .line 816
    aput p2, v8, v0

    .line 817
    aput p3, v9, v0

    .line 818
    aput p4, v10, v0

    const/4 v13, 0x1

    move v0, v13

    :goto_17
    add-int/lit8 v14, v0, -0x1

    if-ltz v14, :cond_104

    .line 821
    aget v2, v8, v14

    .line 822
    aget v3, v9, v14

    .line 823
    aget v4, v10, v14

    sub-int v0, v3, v2

    const/16 v1, 0x14

    if-lt v0, v1, :cond_ee

    const/16 v0, 0xa

    if-le v4, v0, :cond_2d

    goto/16 :goto_ee

    :cond_2d
    add-int/lit8 v0, v4, 0x1

    .line 831
    aget v1, v11, v2

    add-int/2addr v1, v0

    aget-byte v1, v12, v1

    aget v5, v11, v3

    add-int/2addr v5, v0

    aget-byte v5, v12, v5

    add-int v15, v2, v3

    ushr-int/2addr v15, v13

    aget v15, v11, v15

    add-int/2addr v15, v0

    aget-byte v15, v12, v15

    invoke-static {v1, v5, v15}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->med3(BBB)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v5, v2

    move v13, v5

    move v15, v3

    move/from16 v16, v15

    :goto_4c
    if-gt v5, v15, :cond_6b

    .line 841
    aget v17, v11, v5

    add-int v18, v17, v0

    aget-byte v6, v12, v18

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v6, v1

    if-nez v6, :cond_66

    add-int/lit8 v6, v5, 0x1

    .line 845
    aget v18, v11, v13

    aput v18, v11, v5

    add-int/lit8 v5, v13, 0x1

    .line 846
    aput v17, v11, v13

    move v13, v5

    move v5, v6

    goto :goto_a3

    :cond_66
    if-gez v6, :cond_6b

    add-int/lit8 v5, v5, 0x1

    goto :goto_a3

    :cond_6b
    move/from16 v6, v16

    :goto_6d
    if-gt v5, v15, :cond_8e

    .line 855
    aget v16, v11, v15

    add-int v17, v16, v0

    aget-byte v7, v12, v17

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v7, v1

    if-nez v7, :cond_87

    add-int/lit8 v7, v15, -0x1

    .line 859
    aget v17, v11, v6

    aput v17, v11, v15

    add-int/lit8 v15, v6, -0x1

    .line 860
    aput v16, v11, v6

    move v6, v15

    move v15, v7

    goto :goto_8b

    :cond_87
    if-lez v7, :cond_8e

    add-int/lit8 v15, v15, -0x1

    :goto_8b
    move-object/from16 v7, p1

    goto :goto_6d

    :cond_8e
    if-gt v5, v15, :cond_a6

    .line 869
    aget v7, v11, v5

    add-int/lit8 v16, v5, 0x1

    .line 870
    aget v17, v11, v15

    aput v17, v11, v5

    add-int/lit8 v5, v15, -0x1

    .line 871
    aput v7, v11, v15

    move-object/from16 v7, p1

    move v15, v5

    move/from16 v5, v16

    move/from16 v16, v6

    :goto_a3
    move-object/from16 v6, p0

    goto :goto_4c

    :cond_a6
    if-ge v6, v13, :cond_b3

    .line 878
    aput v2, v8, v14

    .line 879
    aput v3, v9, v14

    .line 880
    aput v0, v10, v14

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    const/4 v15, 0x1

    goto :goto_fd

    :cond_b3
    sub-int v1, v13, v2

    sub-int v7, v5, v13

    if-ge v1, v7, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v7

    :goto_bb
    sub-int v7, v5, v1

    .line 885
    invoke-static {v11, v2, v7, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    sub-int v1, v3, v6

    sub-int/2addr v6, v15

    if-ge v1, v6, :cond_c6

    goto :goto_c7

    :cond_c6
    move v1, v6

    :goto_c7
    sub-int v7, v3, v1

    const/4 v15, 0x1

    add-int/2addr v7, v15

    .line 888
    invoke-static {v11, v5, v7, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    add-int/2addr v5, v2

    sub-int/2addr v5, v13

    sub-int/2addr v5, v15

    sub-int v1, v3, v6

    add-int/2addr v1, v15

    .line 893
    aput v2, v8, v14

    .line 894
    aput v5, v9, v14

    .line 895
    aput v4, v10, v14

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v5, v15

    .line 898
    aput v5, v8, v14

    add-int/lit8 v2, v1, -0x1

    .line 899
    aput v2, v9, v14

    .line 900
    aput v0, v10, v14

    add-int/2addr v14, v15

    .line 903
    aput v1, v8, v14

    .line 904
    aput v3, v9, v14

    .line 905
    aput v4, v10, v14

    add-int/2addr v14, v15

    goto :goto_fc

    :cond_ee
    :goto_ee
    move v15, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p5

    .line 826
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z

    move-result v0

    if-eqz v0, :cond_fc

    return-void

    :cond_fc
    :goto_fc
    move v0, v14

    :goto_fd
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v13, v15

    goto/16 :goto_17

    :cond_104
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v6, 0x2

    if-ge v3, v6, :cond_1a

    .line 602
    iget-boolean v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_18

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    return v4

    :cond_1a
    const/4 v6, 0x0

    .line 606
    :goto_1b
    sget-object v7, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v7, v7, v6

    if-ge v7, v3, :cond_24

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 610
    :cond_24
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 611
    iget-object v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 612
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v8, p5, 0x1

    .line 614
    iget-boolean v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 615
    iget v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 616
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    :goto_32
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1db

    .line 622
    sget-object v12, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v12, v12, v6

    add-int v13, p2, v12

    add-int/lit8 v14, v13, -0x1

    :goto_3e
    if-gt v13, v2, :cond_1d7

    const/4 v15, 0x3

    :goto_41
    if-gt v13, v2, :cond_1c1

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_1c1

    .line 628
    aget v16, v3, v13

    add-int v17, v16, p4

    move/from16 v19, v13

    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_51
    if-eqz v18, :cond_66

    .line 647
    aput v20, v3, v19

    sub-int v4, v19, v12

    if-gt v4, v14, :cond_63

    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    goto/16 :goto_1b2

    :cond_63
    move/from16 v19, v4

    goto :goto_68

    :cond_66
    const/16 v18, 0x1

    :goto_68
    sub-int v4, v19, v12

    .line 655
    aget v4, v3, v4

    add-int v21, v4, p4

    add-int/lit8 v22, v21, 0x1

    .line 661
    aget-byte v5, v1, v22

    add-int/lit8 v22, v17, 0x1

    move/from16 p1, v4

    aget-byte v4, v1, v22

    if-ne v5, v4, :cond_195

    add-int/lit8 v4, v21, 0x2

    .line 662
    aget-byte v4, v1, v4

    add-int/lit8 v5, v17, 0x2

    aget-byte v5, v1, v5

    if-ne v4, v5, :cond_186

    add-int/lit8 v4, v21, 0x3

    .line 663
    aget-byte v4, v1, v4

    add-int/lit8 v5, v17, 0x3

    aget-byte v5, v1, v5

    if-ne v4, v5, :cond_177

    add-int/lit8 v4, v21, 0x4

    .line 664
    aget-byte v4, v1, v4

    add-int/lit8 v5, v17, 0x4

    aget-byte v5, v1, v5

    if-ne v4, v5, :cond_168

    add-int/lit8 v4, v21, 0x5

    .line 665
    aget-byte v4, v1, v4

    add-int/lit8 v5, v17, 0x5

    aget-byte v5, v1, v5

    if-ne v4, v5, :cond_159

    add-int/lit8 v21, v21, 0x6

    .line 666
    aget-byte v4, v1, v21

    add-int/lit8 v5, v17, 0x6

    move/from16 v22, v6

    aget-byte v6, v1, v5

    if-ne v4, v6, :cond_14c

    move/from16 v4, p5

    :goto_b0
    if-lez v4, :cond_144

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v6, v21, 0x1

    move/from16 v23, v4

    .line 671
    aget-byte v4, v1, v6

    add-int/lit8 v24, v5, 0x1

    move/from16 v25, v12

    aget-byte v12, v1, v24

    if-ne v4, v12, :cond_138

    .line 672
    aget-char v4, v7, v21

    aget-char v12, v7, v5

    if-ne v4, v12, :cond_131

    add-int/lit8 v4, v21, 0x2

    .line 673
    aget-byte v12, v1, v4

    add-int/lit8 v26, v5, 0x2

    move/from16 v27, v14

    aget-byte v14, v1, v26

    if-ne v12, v14, :cond_128

    .line 674
    aget-char v6, v7, v6

    aget-char v12, v7, v24

    if-ne v6, v12, :cond_123

    add-int/lit8 v6, v21, 0x3

    .line 675
    aget-byte v12, v1, v6

    add-int/lit8 v14, v5, 0x3

    move/from16 v24, v15

    aget-byte v15, v1, v14

    if-ne v12, v15, :cond_11c

    .line 676
    aget-char v4, v7, v4

    aget-char v12, v7, v26

    if-ne v4, v12, :cond_119

    add-int/lit8 v4, v21, 0x4

    .line 677
    aget-byte v12, v1, v4

    add-int/lit8 v5, v5, 0x4

    aget-byte v15, v1, v5

    if-ne v12, v15, :cond_112

    .line 678
    aget-char v6, v7, v6

    aget-char v12, v7, v14

    if-ne v6, v12, :cond_10f

    if-lt v4, v8, :cond_ff

    sub-int/2addr v4, v8

    :cond_ff
    move/from16 v21, v4

    if-lt v5, v8, :cond_104

    sub-int/2addr v5, v8

    :cond_104
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v23

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    goto :goto_b0

    :cond_10f
    if-le v6, v12, :cond_1b0

    goto :goto_142

    :cond_112
    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v15, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_142

    :cond_119
    if-le v4, v12, :cond_1b0

    goto :goto_142

    :cond_11c
    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v15, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_142

    :cond_123
    move/from16 v24, v15

    if-le v6, v12, :cond_1b0

    goto :goto_142

    :cond_128
    move/from16 v24, v15

    and-int/lit16 v4, v12, 0xff

    and-int/lit16 v5, v14, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_142

    :cond_131
    move/from16 v27, v14

    move/from16 v24, v15

    if-le v4, v12, :cond_1b0

    goto :goto_142

    :cond_138
    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v12, 0xff

    if-le v4, v5, :cond_1b0

    :goto_142
    goto/16 :goto_1a3

    :cond_144
    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    goto/16 :goto_1b0

    :cond_14c
    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v6, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_1a3

    :cond_159
    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_1a3

    :cond_168
    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_1a3

    :cond_177
    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_1a3

    :cond_186
    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v5, 0xff

    if-le v4, v5, :cond_1b0

    goto :goto_1a3

    :cond_195
    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    move/from16 v24, v15

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v4, v4, 0xff

    if-le v5, v4, :cond_1b0

    :goto_1a3
    move/from16 v20, p1

    move/from16 v6, v22

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_51

    :cond_1b0
    :goto_1b0
    move/from16 v4, v19

    .line 764
    :goto_1b2
    aput v16, v3, v4

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v22

    move/from16 v15, v24

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_41

    :cond_1c1
    move/from16 v22, v6

    move/from16 v25, v12

    move/from16 v27, v14

    if-eqz v9, :cond_1ce

    if-gt v13, v2, :cond_1ce

    if-le v11, v10, :cond_1ce

    goto :goto_1db

    :cond_1ce
    move/from16 v6, v22

    move/from16 v12, v25

    move/from16 v14, v27

    const/4 v4, 0x1

    goto/16 :goto_3e

    :cond_1d7
    move/from16 v22, v6

    goto/16 :goto_32

    .line 774
    :cond_1db
    :goto_1db
    iput v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-eqz v9, :cond_1e3

    if-le v11, v10, :cond_1e3

    const/4 v4, 0x1

    goto :goto_1e4

    :cond_1e3
    const/4 v4, 0x0

    :goto_1e4
    return v4
.end method

.method private static med3(BBB)B
    .registers 3

    if-ge p0, p1, :cond_8

    if-ge p1, p2, :cond_5

    goto :goto_a

    :cond_5
    if-ge p0, p2, :cond_f

    goto :goto_e

    :cond_8
    if-le p1, p2, :cond_c

    :goto_a
    move p0, p1

    goto :goto_f

    :cond_c
    if-le p0, p2, :cond_f

    :goto_e
    move p0, p2

    :cond_f
    :goto_f
    return p0
.end method

.method private static vswap([IIII)V
    .registers 7

    add-int/2addr p3, p1

    :goto_1
    if-ge p1, p3, :cond_12

    .line 789
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 790
    aget v2, p0, p2

    aput v2, p0, p1

    add-int/lit8 p1, p2, 0x1

    .line 791
    aput v0, p0, p2

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_12
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .registers 6

    mul-int/lit8 v0, p2, 0x1e

    .line 154
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_14

    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    goto :goto_24

    .line 161
    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 163
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_24

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_24

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 168
    :cond_24
    :goto_24
    iget-object p0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    const/4 v1, -0x1

    .line 169
    iput v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    :goto_29
    if-gt v0, p2, :cond_35

    .line 171
    aget v1, p0, v0

    if-nez v1, :cond_32

    .line 172
    iput v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    goto :goto_35

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_35
    :goto_35
    return-void
.end method

.method final fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .registers 7

    .line 187
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, v0, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 188
    iget-object v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort([I[BI)V

    move p0, v3

    :goto_f
    if-ge p0, v1, :cond_1c

    .line 190
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v2, v0, p0

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ge v3, v1, :cond_2b

    .line 193
    iget-object p0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v0, p0, v3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    .line 194
    aput p2, p0, v3

    goto :goto_2b

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2b
    :goto_2b
    return-void
.end method

.method final fallbackSort([I[BI)V
    .registers 14

    const/16 v0, 0x101

    new-array v1, v0, [I

    .line 478
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->getEclass()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, p3, :cond_11

    .line 481
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    move v4, v3

    :goto_12
    const/4 v5, 0x1

    if-ge v4, p3, :cond_21

    .line 488
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    aget v7, v1, v6

    add-int/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_21
    move v4, v5

    :goto_22
    if-ge v4, v0, :cond_30

    .line 491
    aget v6, v1, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, v1, v7

    add-int/2addr v6, v7

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_30
    move v0, v3

    :goto_31
    if-ge v0, p3, :cond_41

    .line 495
    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    .line 496
    aget v6, v1, v4

    sub-int/2addr v6, v5

    .line 497
    aput v6, v1, v4

    .line 498
    aput v0, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_41
    add-int/lit8 p2, p3, 0x40

    .line 502
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move p2, v3

    :goto_49
    const/16 v4, 0x100

    if-ge p2, v4, :cond_55

    .line 504
    aget v4, v1, p2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_49

    :cond_55
    move p2, v3

    :goto_56
    const/16 v1, 0x20

    if-ge p2, v1, :cond_67

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p3

    .line 515
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/2addr v1, v5

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_56

    :cond_67
    move p2, v5

    :cond_68
    move v1, v3

    move v4, v1

    :goto_6a
    if-ge v1, p3, :cond_7e

    .line 525
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_73

    move v4, v1

    .line 528
    :cond_73
    aget v6, p1, v1

    sub-int/2addr v6, p2

    if-gez v6, :cond_79

    add-int/2addr v6, p3

    .line 532
    :cond_79
    aput v4, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    :cond_7e
    const/4 v1, -0x1

    move v4, v1

    move v6, v3

    :cond_81
    add-int/2addr v4, v5

    .line 541
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    if-lt v7, p3, :cond_8b

    goto :goto_94

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    .line 546
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_9b

    :goto_94
    mul-int/lit8 p2, p2, 0x2

    if-gt p2, p3, :cond_9a

    if-nez v6, :cond_68

    :cond_9a
    return-void

    :cond_9b
    if-le v4, v7, :cond_81

    sub-int v8, v4, v7

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 555
    invoke-direct {p0, p1, v2, v7, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackQSort3([I[III)V

    move v8, v1

    :goto_a5
    if-gt v7, v4, :cond_81

    .line 560
    aget v9, p1, v7

    aget v9, v2, v9

    if-eq v8, v9, :cond_b1

    .line 562
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v9

    :cond_b1
    add-int/lit8 v7, v7, 0x1

    goto :goto_a5
.end method

.method final mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .registers 32

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 917
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 918
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 919
    iget-object v11, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 920
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 921
    iget-object v13, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 922
    iget-object v14, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 923
    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 924
    iget v5, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 925
    iget-boolean v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    const v0, 0x10001

    :goto_1b
    add-int/lit8 v0, v0, -0x1

    const/16 v16, 0x0

    if-ltz v0, :cond_24

    .line 929
    aput v16, v12, v0

    goto :goto_1b

    :cond_24
    move/from16 v0, v16

    :goto_26
    const/16 v3, 0x14

    const/4 v2, 0x1

    if-ge v0, v3, :cond_3b

    add-int v1, v8, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v8, 0x1

    .line 938
    rem-int v3, v0, v3

    add-int/2addr v3, v2

    aget-byte v2, v13, v3

    aput-byte v2, v13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3b
    add-int/lit8 v0, v8, 0x14

    add-int/2addr v0, v2

    :goto_3e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_45

    .line 941
    aput-char v16, v15, v0

    goto :goto_3e

    :cond_45
    add-int/lit8 v0, v8, 0x1

    .line 943
    aget-byte v1, v13, v0

    aput-byte v1, v13, v16

    move/from16 v17, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    move/from16 v3, v16

    :goto_52
    if-gt v3, v8, :cond_67

    add-int/lit8 v3, v3, 0x1

    .line 949
    aget-byte v2, v13, v3

    and-int/2addr v2, v4

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    .line 950
    aget v20, v12, v1

    const/16 v19, 0x1

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v1

    move v1, v2

    const/4 v2, 0x1

    goto :goto_52

    :cond_67
    const/4 v1, 0x1

    :goto_68
    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_78

    .line 955
    aget v2, v12, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, v12, v3

    add-int/2addr v2, v3

    aput v2, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_78
    const/4 v1, 0x1

    .line 958
    aget-byte v2, v13, v1

    and-int/2addr v2, v4

    move/from16 v3, v16

    :goto_7e
    if-ge v3, v8, :cond_98

    add-int/lit8 v19, v3, 0x2

    .line 960
    aget-byte v1, v13, v19

    and-int/2addr v1, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    .line 961
    aget v19, v12, v2

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    aput v19, v12, v2

    aput v3, v14, v19

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move/from16 v1, v20

    goto :goto_7e

    :cond_98
    move/from16 v20, v1

    .line 965
    aget-byte v0, v13, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, v13, v20

    and-int/2addr v1, v4

    add-int/2addr v0, v1

    aget v1, v12, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, v12, v0

    aput v8, v14, v1

    const/16 v20, 0x100

    move/from16 v0, v20

    :goto_af
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b8

    .line 972
    aput-boolean v16, v11, v0

    .line 973
    aput v0, v9, v0

    goto :goto_af

    :cond_b8
    const/16 v0, 0x16c

    :cond_ba
    const/4 v1, 0x1

    if-eq v0, v1, :cond_103

    .line 978
    div-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_c0
    if-gt v1, v4, :cond_ba

    .line 980
    aget v2, v9, v1

    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    .line 981
    aget v3, v12, v3

    shl-int/lit8 v21, v2, 0x8

    aget v21, v12, v21

    sub-int v3, v3, v21

    add-int/lit8 v4, v0, -0x1

    sub-int v22, v1, v0

    .line 984
    aget v22, v9, v22

    move/from16 v23, v1

    :goto_d8
    add-int/lit8 v24, v22, 0x1

    shl-int/lit8 v24, v24, 0x8

    aget v24, v12, v24

    shl-int/lit8 v25, v22, 0x8

    aget v25, v12, v25

    move/from16 v26, v5

    sub-int v5, v24, v25

    if-le v5, v3, :cond_fa

    .line 986
    aput v22, v9, v23

    sub-int v5, v23, v0

    if-gt v5, v4, :cond_f1

    move/from16 v23, v5

    goto :goto_fa

    :cond_f1
    sub-int v22, v5, v0

    .line 984
    aget v22, v9, v22

    move/from16 v23, v5

    move/from16 v5, v26

    goto :goto_d8

    .line 992
    :cond_fa
    :goto_fa
    aput v2, v9, v23

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v26

    const/16 v4, 0xff

    goto :goto_c0

    :cond_103
    move/from16 v26, v5

    move/from16 v5, v16

    :goto_107
    if-gt v5, v4, :cond_224

    .line 1003
    aget v21, v9, v5

    move/from16 v3, v16

    :goto_10d
    const/high16 v2, 0x200000

    const v0, -0x200001

    if-gt v3, v4, :cond_17b

    shl-int/lit8 v1, v21, 0x8

    add-int v22, v1, v3

    .line 1014
    aget v23, v12, v22

    and-int v1, v23, v2

    if-eq v1, v2, :cond_166

    and-int v1, v23, v0

    add-int/lit8 v24, v22, 0x1

    .line 1017
    aget v24, v12, v24

    and-int v0, v24, v0

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_156

    const/16 v24, 0x2

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object/from16 v1, p1

    move/from16 v28, v19

    move/from16 v19, v2

    move/from16 v2, v27

    move/from16 v18, v3

    const/16 v7, 0x14

    move/from16 v3, v25

    move v7, v4

    move/from16 v4, v24

    move/from16 v7, v26

    move-object/from16 v26, v9

    move v9, v5

    move/from16 v5, p2

    .line 1019
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V

    if-eqz v17, :cond_161

    .line 1020
    iget v0, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-le v0, v7, :cond_161

    return-void

    :cond_156
    move/from16 v18, v3

    move/from16 v28, v19

    move/from16 v7, v26

    move/from16 v19, v2

    move-object/from16 v26, v9

    move v9, v5

    :cond_161
    or-int v0, v23, v19

    .line 1025
    aput v0, v12, v22

    goto :goto_16f

    :cond_166
    move/from16 v18, v3

    move/from16 v7, v26

    const/16 v28, 0x1

    move-object/from16 v26, v9

    move v9, v5

    :goto_16f
    add-int/lit8 v3, v18, 0x1

    move v5, v9

    move-object/from16 v9, v26

    const/16 v4, 0xff

    move/from16 v26, v7

    move-object/from16 v7, p1

    goto :goto_10d

    :cond_17b
    move/from16 v19, v2

    move/from16 v7, v26

    const/16 v28, 0x1

    move-object/from16 v26, v9

    move v9, v5

    move v2, v4

    move/from16 v1, v16

    :goto_187
    if-gt v1, v2, :cond_197

    shl-int/lit8 v2, v1, 0x8

    add-int v2, v2, v21

    .line 1034
    aget v2, v12, v2

    and-int/2addr v2, v0

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xff

    goto :goto_187

    :cond_197
    shl-int/lit8 v1, v21, 0x8

    .line 1037
    aget v2, v12, v1

    and-int/2addr v2, v0

    add-int/lit8 v3, v21, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v4, v12, v3

    and-int/2addr v4, v0

    :goto_1a3
    if-ge v2, v4, :cond_1ca

    .line 1038
    aget v5, v14, v2

    .line 1039
    aget-byte v0, v13, v5

    move/from16 v22, v4

    const/16 v4, 0xff

    and-int/2addr v0, v4

    .line 1040
    aget-boolean v4, v11, v0

    if-nez v4, :cond_1c2

    .line 1041
    aget v4, v10, v0

    if-nez v5, :cond_1b8

    move v5, v8

    goto :goto_1ba

    :cond_1b8
    add-int/lit8 v5, v5, -0x1

    :goto_1ba
    aput v5, v14, v4

    .line 1042
    aget v4, v10, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v0

    :cond_1c2
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v22

    const v0, -0x200001

    goto :goto_1a3

    :cond_1ca
    move/from16 v0, v20

    :goto_1cc
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1db

    shl-int/lit8 v2, v0, 0x8

    add-int v2, v2, v21

    .line 1047
    aget v4, v12, v2

    or-int v4, v4, v19

    aput v4, v12, v2

    goto :goto_1cc

    .line 1058
    :cond_1db
    aput-boolean v28, v11, v21

    const/16 v0, 0xff

    if-ge v9, v0, :cond_216

    .line 1061
    aget v1, v12, v1

    const v2, -0x200001

    and-int/2addr v1, v2

    .line 1062
    aget v3, v12, v3

    and-int/2addr v2, v3

    sub-int/2addr v2, v1

    move/from16 v3, v16

    :goto_1ed
    shr-int v4, v2, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_1f7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ed

    :cond_1f7
    move/from16 v4, v16

    :goto_1f9
    if-ge v4, v2, :cond_216

    add-int v5, v1, v4

    .line 1070
    aget v5, v14, v5

    shr-int v0, v4, v3

    int-to-char v0, v0

    .line 1072
    aput-char v0, v15, v5

    move/from16 v18, v1

    const/16 v1, 0x14

    if-ge v5, v1, :cond_20f

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 1074
    aput-char v0, v15, v5

    :cond_20f
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    const/16 v0, 0xff

    goto :goto_1f9

    :cond_216
    const/16 v1, 0x14

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v9, v26

    const/16 v4, 0xff

    move/from16 v26, v7

    move-object/from16 v7, p1

    goto/16 :goto_107

    :cond_224
    return-void
.end method
