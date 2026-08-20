.class final Lorg/brotli/dec/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/Transform$Transforms;
    }
.end annotation


# static fields
.field private static final IDENTITY:I = 0x0

.field static final NUM_RFC_TRANSFORMS:I = 0x79

.field private static final OMIT_FIRST_BASE:I = 0xb

.field private static final OMIT_FIRST_LAST_LIMIT:I = 0x9

.field private static final OMIT_LAST_BASE:I = 0x0

.field private static final PREFIX_SUFFIX_SRC:Ljava/lang/String; = "# #s #, #e #.# the #.com/#\u00c2\u00a0# of # and # in # to #\"#\">#\n#]# for # a # that #. # with #\'# from # by #. The # on # as # is #ing #\n\t#:#ed #(# at #ly #=\"# of the #. This #,# not #er #al #=\'#ful #ive #less #est #ize #ous #"

.field static final RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

.field private static final SHIFT_ALL:I = 0x16

.field private static final SHIFT_FIRST:I = 0x15

.field private static final TRANSFORMS_SRC:Ljava/lang/String; = "     !! ! ,  *!  &!  \" !  ) *   * -  ! # !  #!*!  +  ,$ !  -  %  .  / #   0  1 .  \"   2  3!*   4%  ! # /   5  6  7  8 0  1 &   $   9 +   :  ;  < \'  !=  >  ?! 4  @ 4  2  &   A *# (   B  C& ) %  ) !*# *-% A +! *.  D! %\'  & E *6  F  G% ! *A *%  H! D  I!+!  J!+   K +- *4! A  L!*4  M  N +6  O!*% +.! K *G  P +%(  ! G *D +D  Q +# *K!*G!+D!+# +G +A +4!+% +K!+4!*D!+K!*K"

.field private static final UPPERCASE_ALL:I = 0xb

.field private static final UPPERCASE_FIRST:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 54
    new-instance v0, Lorg/brotli/dec/Transform$Transforms;

    const/16 v1, 0x79

    const/16 v2, 0xa7

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lorg/brotli/dec/Transform$Transforms;-><init>(III)V

    sput-object v0, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    .line 97
    iget-object v1, v0, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixStorage:[B

    iget-object v2, v0, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixHeads:[I

    iget-object v0, v0, Lorg/brotli/dec/Transform$Transforms;->triplets:[I

    const-string v3, "# #s #, #e #.# the #.com/#\u00c2\u00a0# of # and # in # to #\"#\">#\n#]# for # a # that #. # with #\'# from # by #. The # on # as # is #ing #\n\t#:#ed #(# at #ly #=\"# of the #. This #,# not #er #al #=\'#ful #ive #less #est #ize #ous #"

    const-string v4, "     !! ! ,  *!  &!  \" !  ) *   * -  ! # !  #!*!  +  ,$ !  -  %  .  / #   0  1 .  \"   2  3!*   4%  ! # /   5  6  7  8 0  1 &   $   9 +   :  ;  < \'  !=  >  ?! 4  @ 4  2  &   A *# (   B  C& ) %  ) !*# *-% A +! *.  D! %\'  & E *6  F  G% ! *A *%  H! D  I!+!  J!+   K +- *4! A  L!*4  M  N +6  O!*% +.! K *G  P +%(  ! G *D +D  Q +# *K!*G!+D!+# +G +A +4!+% +K!+4!*D!+K!*K"

    invoke-static {v1, v2, v0, v3, v4}, Lorg/brotli/dec/Transform;->unpackTransforms([B[I[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static transformDictionaryWord([BILjava/nio/ByteBuffer;IILorg/brotli/dec/Transform$Transforms;I)I
    .registers 28

    move/from16 v0, p4

    move-object/from16 v1, p5

    .line 104
    iget-object v2, v1, Lorg/brotli/dec/Transform$Transforms;->triplets:[I

    .line 105
    iget-object v3, v1, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixStorage:[B

    .line 106
    iget-object v4, v1, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixHeads:[I

    mul-int/lit8 v5, p6, 0x3

    .line 108
    aget v6, v2, v5

    add-int/lit8 v7, v5, 0x1

    .line 109
    aget v7, v2, v7

    const/4 v8, 0x2

    add-int/2addr v5, v8

    .line 110
    aget v2, v2, v5

    .line 111
    aget v5, v4, v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    .line 112
    aget v6, v4, v6

    .line 113
    aget v10, v4, v2

    add-int/2addr v2, v9

    .line 114
    aget v2, v4, v2

    add-int/lit8 v4, v7, -0xb

    add-int/lit8 v11, v7, 0x0

    const/16 v12, 0x9

    if-lt v4, v9, :cond_2b

    if-le v4, v12, :cond_2c

    :cond_2b
    const/4 v4, 0x0

    :cond_2c
    if-lt v11, v9, :cond_34

    if-le v11, v12, :cond_31

    goto :goto_34

    :cond_31
    move/from16 v12, p1

    goto :goto_37

    :cond_34
    :goto_34
    move/from16 v12, p1

    const/4 v11, 0x0

    :goto_37
    if-eq v5, v6, :cond_44

    add-int/lit8 v14, v12, 0x1

    add-int/lit8 v15, v5, 0x1

    .line 127
    aget-byte v5, v3, v5

    aput-byte v5, p0, v12

    move v12, v14

    move v5, v15

    goto :goto_37

    :cond_44
    if-le v4, v0, :cond_47

    move v4, v0

    :cond_47
    add-int v5, p3, v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v11

    move v4, v0

    :goto_4c
    if-lez v4, :cond_5f

    add-int/lit8 v6, v12, 0x1

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v14, p2

    .line 139
    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aput-byte v5, p0, v12

    add-int/lit8 v4, v4, -0x1

    move v12, v6

    move v5, v11

    goto :goto_4c

    :cond_5f
    const/16 v4, 0xa

    const/16 v5, 0xe0

    const/16 v6, 0xc0

    if-eq v7, v4, :cond_153

    const/16 v11, 0xb

    if-ne v7, v11, :cond_6d

    goto/16 :goto_153

    :cond_6d
    const/16 v4, 0x15

    if-eq v7, v4, :cond_75

    const/16 v11, 0x16

    if-ne v7, v11, :cond_196

    :cond_75
    sub-int v11, v12, v0

    .line 169
    iget-object v1, v1, Lorg/brotli/dec/Transform$Transforms;->params:[S

    aget-short v1, v1, p6

    and-int/lit16 v14, v1, 0x7fff

    const/high16 v15, 0x1000000

    const v16, 0x8000

    and-int v1, v1, v16

    sub-int/2addr v15, v1

    add-int/2addr v14, v15

    :goto_86
    if-lez v0, :cond_196

    .line 174
    aget-byte v1, p0, v11

    and-int/lit16 v1, v1, 0xff

    const/16 v15, 0x80

    const/4 v9, 0x4

    const/4 v13, 0x3

    if-ge v1, v15, :cond_9b

    add-int/2addr v14, v1

    and-int/lit8 v1, v14, 0x7f

    int-to-byte v1, v1

    .line 178
    aput-byte v1, p0, v11

    :cond_98
    :goto_98
    const/4 v9, 0x1

    goto/16 :goto_148

    :cond_9b
    if-ge v1, v6, :cond_9e

    goto :goto_98

    :cond_9e
    if-ge v1, v5, :cond_c1

    if-lt v0, v8, :cond_147

    add-int/lit8 v9, v11, 0x1

    .line 184
    aget-byte v13, p0, v9

    and-int/lit8 v15, v13, 0x3f

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v15

    add-int/2addr v14, v1

    shr-int/lit8 v1, v14, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v6

    int-to-byte v1, v1

    .line 186
    aput-byte v1, p0, v11

    and-int/lit16 v1, v13, 0xc0

    and-int/lit8 v13, v14, 0x3f

    or-int/2addr v1, v13

    int-to-byte v1, v1

    .line 187
    aput-byte v1, p0, v9

    move v9, v8

    goto/16 :goto_148

    :cond_c1
    const/16 v15, 0xf0

    if-ge v1, v15, :cond_fa

    if-lt v0, v13, :cond_147

    add-int/lit8 v9, v11, 0x1

    .line 195
    aget-byte v15, p0, v9

    add-int/lit8 v17, v11, 0x2

    .line 196
    aget-byte v8, p0, v17

    and-int/lit8 v18, v8, 0x3f

    and-int/lit8 v19, v15, 0x3f

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    or-int v1, v18, v1

    add-int/2addr v14, v1

    shr-int/lit8 v1, v14, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .line 198
    aput-byte v1, p0, v11

    and-int/lit16 v1, v15, 0xc0

    shr-int/lit8 v15, v14, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v1, v15

    int-to-byte v1, v1

    .line 199
    aput-byte v1, p0, v9

    and-int/lit16 v1, v8, 0xc0

    and-int/lit8 v8, v14, 0x3f

    or-int/2addr v1, v8

    int-to-byte v1, v1

    .line 200
    aput-byte v1, p0, v17

    move v9, v13

    goto :goto_148

    :cond_fa
    const/16 v8, 0xf8

    if-ge v1, v8, :cond_98

    if-lt v0, v9, :cond_147

    add-int/lit8 v8, v11, 0x1

    .line 208
    aget-byte v13, p0, v8

    add-int/lit8 v17, v11, 0x2

    .line 209
    aget-byte v9, p0, v17

    add-int/lit8 v18, v11, 0x3

    .line 210
    aget-byte v5, p0, v18

    and-int/lit8 v19, v5, 0x3f

    and-int/lit8 v20, v9, 0x3f

    shl-int/lit8 v20, v20, 0x6

    or-int v19, v19, v20

    and-int/lit8 v20, v13, 0x3f

    shl-int/lit8 v20, v20, 0xc

    or-int v19, v19, v20

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x12

    or-int v1, v19, v1

    add-int/2addr v14, v1

    shr-int/lit8 v1, v14, 0x12

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v15

    int-to-byte v1, v1

    .line 212
    aput-byte v1, p0, v11

    and-int/lit16 v1, v13, 0xc0

    shr-int/lit8 v13, v14, 0xc

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v1, v13

    int-to-byte v1, v1

    .line 213
    aput-byte v1, p0, v8

    and-int/lit16 v1, v9, 0xc0

    shr-int/lit8 v8, v14, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v1, v8

    int-to-byte v1, v1

    .line 214
    aput-byte v1, p0, v17

    and-int/lit16 v1, v5, 0xc0

    and-int/lit8 v5, v14, 0x3f

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .line 215
    aput-byte v1, p0, v18

    const/4 v9, 0x4

    goto :goto_148

    :cond_147
    move v9, v0

    :goto_148
    add-int/2addr v11, v9

    sub-int/2addr v0, v9

    if-ne v7, v4, :cond_14d

    const/4 v0, 0x0

    :cond_14d
    const/16 v5, 0xe0

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto/16 :goto_86

    :cond_153
    :goto_153
    sub-int v1, v12, v0

    if-ne v7, v4, :cond_159

    const/4 v9, 0x1

    goto :goto_15a

    :cond_159
    move v9, v0

    :goto_15a
    if-lez v9, :cond_196

    .line 150
    aget-byte v0, p0, v1

    and-int/lit16 v4, v0, 0xff

    if-ge v4, v6, :cond_176

    const/16 v5, 0x61

    if-lt v4, v5, :cond_16f

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_16f

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 153
    aput-byte v0, p0, v1

    :cond_16f
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v9, v9, -0x1

    const/16 v0, 0xe0

    goto :goto_15a

    :cond_176
    const/16 v0, 0xe0

    if-ge v4, v0, :cond_188

    add-int/lit8 v4, v1, 0x1

    .line 158
    aget-byte v5, p0, v4

    xor-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v9, v9, -0x2

    goto :goto_15a

    :cond_188
    add-int/lit8 v4, v1, 0x2

    .line 162
    aget-byte v5, p0, v4

    xor-int/lit8 v5, v5, 0x5

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v9, v9, -0x3

    goto :goto_15a

    :cond_196
    :goto_196
    if-eq v10, v2, :cond_1a3

    add-int/lit8 v0, v12, 0x1

    add-int/lit8 v1, v10, 0x1

    .line 231
    aget-byte v4, v3, v10

    aput-byte v4, p0, v12

    move v12, v0

    move v10, v1

    goto :goto_196

    :cond_1a3
    sub-int v12, v12, p1

    return v12
.end method

.method private static unpackTransforms([B[I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    :goto_8
    if-ge v3, v0, :cond_21

    .line 83
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_18

    add-int/lit8 v5, v2, 0x1

    .line 85
    aput v4, p1, v2

    move v2, v5

    goto :goto_1e

    :cond_18
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 87
    aput-byte v5, p0, v4

    move v4, v6

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    :goto_21
    const/16 p0, 0x16b

    if-ge v1, p0, :cond_30

    .line 92
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x20

    aput p0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_30
    return-void
.end method
