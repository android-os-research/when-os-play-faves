.class public Lcom/samsung/android/game/network/LocalCache;
.super Ljava/lang/Object;
.source "LocalCache.java"


# instance fields
.field private final mRawGamePkgNames:[[I

.field private final mRawSecGameFamilyPkgNames:[[I


# direct methods
.method public constructor <init>()V
    .registers 21

    .line 8
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v1, 0x25

    new-array v2, v1, [[I

    const/16 v3, 0x18

    new-array v4, v3, [I

    fill-array-data v4, :array_1ae

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0x17

    new-array v6, v4, [I

    fill-array-data v6, :array_1e2

    const/4 v7, 0x1

    aput-object v6, v2, v7

    const/16 v6, 0x15

    new-array v8, v6, [I

    fill-array-data v8, :array_214

    const/4 v9, 0x2

    aput-object v8, v2, v9

    const/16 v8, 0x1c

    new-array v10, v8, [I

    fill-array-data v10, :array_242

    const/4 v11, 0x3

    aput-object v10, v2, v11

    const/16 v10, 0x1d

    new-array v12, v10, [I

    fill-array-data v12, :array_27e

    const/4 v13, 0x4

    aput-object v12, v2, v13

    new-array v12, v8, [I

    fill-array-data v12, :array_2bc

    const/4 v14, 0x5

    aput-object v12, v2, v14

    new-array v12, v8, [I

    fill-array-data v12, :array_2f8

    const/4 v15, 0x6

    aput-object v12, v2, v15

    const/16 v12, 0x16

    new-array v15, v12, [I

    fill-array-data v15, :array_334

    const/16 v16, 0x7

    aput-object v15, v2, v16

    new-array v15, v10, [I

    fill-array-data v15, :array_364

    const/16 v17, 0x8

    aput-object v15, v2, v17

    new-array v1, v1, [I

    fill-array-data v1, :array_3a2

    const/16 v15, 0x9

    aput-object v1, v2, v15

    const/16 v1, 0x32

    new-array v1, v1, [I

    fill-array-data v1, :array_3f0

    const/16 v15, 0xa

    aput-object v1, v2, v15

    const/16 v1, 0x23

    new-array v15, v1, [I

    fill-array-data v15, :array_458

    const/16 v17, 0xb

    aput-object v15, v2, v17

    new-array v15, v8, [I

    fill-array-data v15, :array_4a2

    const/16 v17, 0xc

    aput-object v15, v2, v17

    new-array v15, v3, [I

    fill-array-data v15, :array_4de

    const/16 v17, 0xd

    aput-object v15, v2, v17

    const/16 v15, 0x14

    new-array v15, v15, [I

    fill-array-data v15, :array_512

    const/16 v17, 0xe

    aput-object v15, v2, v17

    const/16 v15, 0x13

    new-array v15, v15, [I

    fill-array-data v15, :array_53e

    const/16 v17, 0xf

    aput-object v15, v2, v17

    const/16 v15, 0x19

    new-array v14, v15, [I

    fill-array-data v14, :array_568

    const/16 v18, 0x10

    aput-object v14, v2, v18

    new-array v14, v1, [I

    fill-array-data v14, :array_59e

    const/16 v18, 0x11

    aput-object v14, v2, v18

    new-array v14, v15, [I

    fill-array-data v14, :array_5e8

    const/16 v18, 0x12

    aput-object v14, v2, v18

    const/16 v14, 0x22

    new-array v13, v14, [I

    fill-array-data v13, :array_61e

    const/16 v19, 0x13

    aput-object v13, v2, v19

    new-array v13, v3, [I

    fill-array-data v13, :array_666

    const/16 v19, 0x14

    aput-object v13, v2, v19

    new-array v13, v3, [I

    fill-array-data v13, :array_69a

    aput-object v13, v2, v6

    new-array v6, v10, [I

    fill-array-data v6, :array_6ce

    aput-object v6, v2, v12

    const/16 v6, 0x1e

    new-array v12, v6, [I

    fill-array-data v12, :array_70c

    aput-object v12, v2, v4

    const/16 v4, 0x21

    new-array v12, v4, [I

    fill-array-data v12, :array_74c

    aput-object v12, v2, v3

    new-array v3, v3, [I

    fill-array-data v3, :array_792

    aput-object v3, v2, v15

    new-array v3, v1, [I

    fill-array-data v3, :array_7c6

    const/16 v12, 0x1a

    aput-object v3, v2, v12

    const/16 v3, 0x28

    new-array v3, v3, [I

    fill-array-data v3, :array_810

    const/16 v12, 0x1b

    aput-object v3, v2, v12

    const/16 v3, 0x24

    new-array v3, v3, [I

    fill-array-data v3, :array_864

    aput-object v3, v2, v8

    new-array v3, v8, [I

    fill-array-data v3, :array_8b0

    aput-object v3, v2, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_8ec

    aput-object v3, v2, v6

    const/16 v3, 0x2d

    new-array v3, v3, [I

    fill-array-data v3, :array_932

    const/16 v8, 0x1f

    aput-object v3, v2, v8

    new-array v3, v1, [I

    fill-array-data v3, :array_990

    const/16 v10, 0x20

    aput-object v3, v2, v10

    new-array v3, v6, [I

    fill-array-data v3, :array_9da

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a1a

    aput-object v3, v2, v14

    new-array v3, v8, [I

    fill-array-data v3, :array_a64

    aput-object v3, v2, v1

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_aa6

    const/16 v3, 0x24

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/samsung/android/game/network/LocalCache;->mRawGamePkgNames:[[I

    .line 200
    const/16 v1, 0x9

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_acc

    aput-object v2, v1, v5

    new-array v2, v14, [I

    fill-array-data v2, :array_b12

    aput-object v2, v1, v7

    const/16 v2, 0x27

    new-array v2, v2, [I

    fill-array-data v2, :array_b5a

    aput-object v2, v1, v9

    new-array v2, v8, [I

    fill-array-data v2, :array_bac

    aput-object v2, v1, v11

    new-array v2, v8, [I

    fill-array-data v2, :array_bee

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v14, [I

    fill-array-data v2, :array_c30

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v10, [I

    fill-array-data v2, :array_c78

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v10, [I

    fill-array-data v2, :array_cbc

    aput-object v2, v1, v16

    const/16 v2, 0x2a

    new-array v2, v2, [I

    fill-array-data v2, :array_d00

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/samsung/android/game/network/LocalCache;->mRawSecGameFamilyPkgNames:[[I

    return-void

    :array_1ae
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x16
        0x1b
        0x3
        0x17
        0x15
        0xf
        0x9
        0x54
        0xe
        0xe
        0x1c
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
    .end array-data

    :array_1e2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x17
        0x15
        0x18
        0x13
        0x8
        0x13
        0x2
        0x54
        0x9
        0x4b
        0x43
        0x4e
        0x4f
        0x13
        0x13
        0x13
        0x25
        0x1d
        0x1d
    .end array-data

    :array_214
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x16
        0x1f
        0x1d
        0x15
        0x54
        0x19
        0x13
        0xe
        0x3
        0x54
        0x17
        0x3
        0x25
        0x19
        0x13
        0xe
        0x3
    .end array-data

    :array_242
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x19
        0x1b
        0x14
        0x1e
        0x3
        0x19
        0x8
        0xf
        0x9
        0x12
        0x10
        0x1f
        0x16
        0x16
        0x3
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data

    :array_27e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x9
        0x13
        0x17
        0x19
        0x13
        0xe
        0x3
        0x17
        0x15
        0x18
        0x13
        0x16
        0x1f
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_2bc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x19
        0x1b
        0x14
        0x1e
        0x3
        0x19
        0x8
        0xf
        0x9
        0x12
        0x10
        0x1f
        0x16
        0x16
        0x3
        0x9
        0x1b
        0x1d
        0x1b
    .end array-data

    :array_2f8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x8
        0x15
        0x1d
        0x17
        0x13
        0x14
        0x1e
        0x54
        0x18
        0x1b
        0x1e
        0x16
        0x1b
        0x14
        0x1e
        0x54
        0x13
        0xe
        0xe
        0x1f
        0x16
        0x19
        0x15
    .end array-data

    :array_334
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x16
        0x1f
        0x1d
        0x15
        0x54
        0x19
        0x13
        0xe
        0x3
        0x54
        0x17
        0x3
        0x25
        0x19
        0x13
        0xe
        0x3
        0x48
    .end array-data

    :array_364
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x15
        0xf
        0xe
        0x1c
        0x13
        0xe
        0x4d
        0x54
        0xe
        0x1b
        0x16
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x15
        0x17
        0x1d
        0x15
        0x16
        0x1e
        0x8
        0xf
        0x14
    .end array-data

    :array_3a2
    .array-data 4
        0xf
        0x11
        0x54
        0x19
        0x15
        0x54
        0x3
        0x1b
        0x11
        0xf
        0xe
        0x15
        0x54
        0x2e
        0x1b
        0x18
        0x16
        0x1f
        0x2e
        0x1f
        0x14
        0x14
        0x13
        0x9
        0x2e
        0x15
        0xf
        0x19
        0x12
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
    .end array-data

    :array_3f0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x16
        0x1f
        0xc
        0x1f
        0x14
        0x18
        0x13
        0xe
        0x9
        0xe
        0xf
        0x1e
        0x13
        0x15
        0x9
        0x54
        0x29
        0x16
        0x1f
        0x1f
        0xa
        0xd
        0x1b
        0x16
        0x11
        0x1f
        0x8
        0x9
        0x30
        0x15
        0xf
        0x8
        0x14
        0x1f
        0x3
        0x29
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x33
        0x34
        0x2e
    .end array-data

    :array_458
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x42
        0x32
        0x37
    .end array-data

    :array_4a2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x0
        0x1f
        0xa
        0xe
        0x15
        0x16
        0x1b
        0x18
        0x54
        0x19
        0xe
        0x8
        0x48
        0x54
        0x1c
        0x48
        0xa
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
    .end array-data

    :array_4de
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1d
        0x14
        0x54
        0x19
        0x15
        0x15
        0x11
        0x13
        0x1f
        0x10
        0x1b
        0x17
        0x54
        0x1d
        0xa
    .end array-data

    :array_512
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x16
        0x15
        0x15
        0x54
        0x9
        0xf
        0x18
        0xd
        0x1b
        0x3
        0x9
        0xf
        0x8
        0x1c
    .end array-data

    :array_53e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x3
        0x13
        0x14
        0x1d
        0x0
        0x12
        0x1f
        0x14
        0x1d
        0x54
        0x10
        0x16
        0x11
        0xe
        0x49
    .end array-data

    :array_568
    .array-data 4
        0x14
        0xa
        0x54
        0x13
        0x1e
        0x8
        0x1f
        0x1b
        0x17
        0x9
        0x11
        0x3
        0x54
        0x12
        0x15
        0x8
        0x13
        0x0
        0x15
        0x14
        0x19
        0x12
        0x1b
        0x9
        0x1f
    .end array-data

    :array_59e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x12
        0x1b
        0xa
        0xa
        0x3
        0x1f
        0x16
        0x1f
        0x17
        0x1f
        0x14
        0xe
        0x9
        0x54
        0x3b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x39
        0x16
        0x15
        0xc
        0x1f
        0x8
        0x54
        0x17
        0x15
        0x18
    .end array-data

    :array_5e8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x16
        0x1b
        0x3
        0x17
        0x15
        0xf
        0x9
        0x54
        0x1d
        0x15
        0x1e
        0x15
        0x1c
        0x16
        0x13
        0x1d
        0x12
        0xe
        0x32
        0x3e
    .end array-data

    :array_61e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x16
        0x1b
        0x3
        0x17
        0x15
        0xf
        0x9
        0x54
        0x1d
        0x15
        0x1e
        0x15
        0x1c
        0x16
        0x13
        0x1d
        0x12
        0xe
        0x32
        0x3e
        0x54
        0x15
        0x1c
        0x1c
        0x9
        0xe
        0x15
        0x8
        0x1f
    .end array-data

    :array_666
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1d
        0x14
        0x54
        0x19
        0x15
        0x15
        0x11
        0x13
        0x1f
        0x10
        0x1b
        0x17
        0x54
        0x9
        0x1d
    .end array-data

    :array_69a
    .array-data 4
        0x1b
        0x13
        0x8
        0x54
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1d
        0x14
        0x54
        0x19
        0x15
        0x15
        0x11
        0x13
        0x1f
        0x10
        0x1b
        0x17
        0x54
        0x1d
        0xa
    .end array-data

    :array_6ce
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x0
        0x1f
        0xa
        0xe
        0x15
        0x16
        0x1b
        0x18
        0x54
        0x19
        0xe
        0x8
        0x17
        0x54
        0x1c
        0x8
        0x1f
        0x1f
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
    .end array-data

    :array_70c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x0
        0x1f
        0xa
        0xe
        0x15
        0x16
        0x1b
        0x18
        0x54
        0x19
        0xe
        0x8
        0x17
        0x54
        0x1c
        0x8
        0x1f
        0x1f
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
    .end array-data

    :array_74c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x0
        0x1f
        0xa
        0xe
        0x15
        0x16
        0x1b
        0x18
        0x54
        0x19
        0xe
        0x8
        0x17
        0x54
        0x14
        0x15
        0x25
        0x19
        0x15
        0x14
        0x14
        0x1f
        0x19
        0xe
        0x13
        0xc
        0x13
        0xe
        0x3
    .end array-data

    :array_792
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xa
        0x16
        0x1b
        0x3
        0x17
        0x15
        0xf
        0x9
        0x54
        0x1e
        0x1b
        0x9
        0x12
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
        0x9
    .end array-data

    :array_7c6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x37
        0x35
        0x32
        0x37
    .end array-data

    :array_810
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0xf
        0xa
        0x1f
        0x8
        0x1f
        0xc
        0x13
        0x16
        0x17
        0x1f
        0x1d
        0x1b
        0x19
        0x15
        0x8
        0xa
        0x54
        0x11
        0x13
        0x14
        0x1e
        0x8
        0x1f
        0x1e
        0x54
        0x8
        0x1f
        0xe
        0x1b
        0x13
        0x16
        0x1e
        0x1f
        0x17
        0x15
    .end array-data

    :array_864
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x14
        0x15
        0x15
        0x1e
        0x16
        0x1f
        0x19
        0x1b
        0x11
        0x1f
        0x54
        0x1b
        0x16
        0xe
        0x15
        0x9
        0x1b
        0x1e
        0xc
        0x1f
        0x14
        0xe
        0xf
        0x8
        0x1f
        0x54
        0x12
        0xf
        0x17
        0x18
        0x16
        0x1f
    .end array-data

    :array_8b0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x8
        0x15
        0x1d
        0x17
        0x13
        0x14
        0x1e
        0x54
        0x18
        0x1b
        0x1e
        0x16
        0x1b
        0x14
        0x1e
        0x54
        0x13
        0xe
        0xe
        0x1f
        0x16
        0x19
        0x15
    .end array-data

    :array_8ec
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x0
        0x1f
        0xa
        0xe
        0x15
        0x16
        0x1b
        0x18
        0x54
        0x19
        0xe
        0x8
        0x17
        0x54
        0x14
        0x15
        0x25
        0x19
        0x15
        0x14
        0x14
        0x1f
        0x19
        0xe
        0x13
        0xc
        0x13
        0xe
        0x3
    .end array-data

    :array_932
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x15
        0xf
        0xe
        0x1c
        0x13
        0xe
        0x4d
        0x54
        0xe
        0x1b
        0x16
        0x11
        0x13
        0x14
        0x1d
        0xe
        0x15
        0x17
        0x1d
        0x15
        0x16
        0x1e
        0x8
        0xf
        0x14
        0x54
        0x15
        0x4d
        0xa
        0x8
        0x15
        0x17
        0x15
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
    .end array-data

    :array_990
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x43
        0x3e
        0x37
    .end array-data

    :array_9da
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xd
        0x1f
        0xa
        0x16
        0x1b
        0x3
        0x1e
        0x15
        0xe
        0x9
        0x54
        0xe
        0xd
        0x15
        0x1e
        0x15
        0xe
        0x9
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
    .end array-data

    :array_a1a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x43
        0x32
        0x37
    .end array-data

    :array_a64
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x14
        0x1d
        0x54
        0x19
        0x1b
        0x14
        0x1e
        0x3
        0x19
        0x8
        0xf
        0x9
        0x12
        0x4e
        0x54
        0x8
        0x1f
        0xe
        0x1b
        0x13
        0x16
        0x1e
        0x1f
        0x17
        0x15
    .end array-data

    :array_aa6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x0
        0x1f
        0xa
        0xe
        0x15
        0x16
        0x1b
        0x18
        0x54
        0x19
        0xe
        0x8
        0x17
    .end array-data

    :array_acc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x12
        0x15
        0x17
        0x1f
    .end array-data

    :array_b12
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0xe
        0x15
        0x15
        0x16
        0x9
    .end array-data

    :array_b5a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x17
        0x15
        0x1e
        0x1f
        0xe
        0x1f
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_bac
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x19
        0x19
        0x1f
        0x9
        0x9
        0x15
        0x8
        0x3
        0x54
        0x1c
        0x8
        0x13
        0x1e
        0x1b
        0x3
        0x17
        0x1d
        0x8
    .end array-data

    :array_bee
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x1b
        0xa
        0xa
        0x9
    .end array-data

    :array_c30
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x1d
        0x15
        0x9
        0xe
        0x1f
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    :array_c78
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x1b
        0x18
    .end array-data

    :array_cbc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x19
        0x19
        0x1f
        0x9
        0x9
        0x15
        0x8
        0x3
        0x54
        0xa
        0x15
        0xa
        0x19
        0x15
        0x8
        0x14
        0x17
        0x1d
        0x8
    .end array-data

    :array_d00
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x54
        0x1d
        0x15
        0x9
        0xe
        0x1f
        0x9
        0xe
        0x1f
        0x8
        0x54
        0x17
        0x15
        0x14
        0x13
        0xe
        0x15
        0x8
    .end array-data
.end method

.method public static getString([I)Ljava/lang/String;
    .registers 6
    .param p0, "raw"    # [I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_14

    aget v3, p0, v2

    .line 28
    .local v3, "element":I
    xor-int/lit8 v4, v3, 0x7a

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .end local v3    # "element":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 30
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStrings([[I)Ljava/util/List;
    .registers 7
    .param p1, "rawArray"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 20
    .local v3, "raw":[I
    invoke-static {v3}, Lcom/samsung/android/game/network/LocalCache;->getString([I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .end local v3    # "raw":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 22
    :cond_15
    return-object v0
.end method


# virtual methods
.method public getGamePackageNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/samsung/android/game/network/LocalCache;->mRawGamePkgNames:[[I

    invoke-direct {p0, v0}, Lcom/samsung/android/game/network/LocalCache;->getStrings([[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecGameFamilyPackageNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/samsung/android/game/network/LocalCache;->mRawSecGameFamilyPkgNames:[[I

    invoke-direct {p0, v0}, Lcom/samsung/android/game/network/LocalCache;->getStrings([[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
