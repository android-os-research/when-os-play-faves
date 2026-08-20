.class public Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "a"

.field private static final n:Z = false


# instance fields
.field private final a:I

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:[I

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lc/a;->a:I

    const/16 v0, 0x18

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->b:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->c:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->d:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->e:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->f:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->h:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc/a;->i:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lc/a;->j:[I

    const/4 v0, 0x0

    iput v0, p0, Lc/a;->k:I

    iput-object p1, p0, Lc/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lc/a;->i()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    const/4 v2, 0x7

    goto :goto_10

    :cond_e
    add-int/lit8 v2, v0, -0x1

    :goto_10
    sget-object v3, Lc/a;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debug buildingAvgBattUsage targetDay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    if-ge v4, v1, :cond_3c

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/f;

    sget-object v6, Lc/a;->m:Ljava/lang/String;

    invoke-virtual {v5}, Lc/f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3c
    add-int/lit8 v4, v1, -0x1

    :goto_3e
    if-ltz v4, :cond_52

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/f;

    invoke-virtual {v5}, Lc/f;->d()I

    move-result v5

    if-ne v5, v2, :cond_4f

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_4f
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    :cond_52
    :goto_52
    const/4 v2, 0x0

    if-lt v4, v1, :cond_75

    sget-object p1, Lc/a;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error idx : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_b3

    monitor-exit p0

    return-object v2

    :cond_75
    :try_start_75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, -0x1

    move v7, v3

    move v6, v5

    :goto_7d
    if-ltz v4, :cond_b1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/f;

    invoke-virtual {v8}, Lc/f;->d()I

    move-result v9

    if-eq v6, v9, :cond_91

    invoke-virtual {v8}, Lc/f;->d()I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    :cond_91
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    if-lt v7, v8, :cond_af

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lc/a;->d(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lc/a;->b(Ljava/util/ArrayList;I)V

    if-eqz v1, :cond_a6

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_a6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_ab
    .catchall {:try_start_75 .. :try_end_ab} :catchall_b3

    add-int/lit8 v4, v4, 0x2

    move v7, v3

    move v6, v5

    :cond_af
    add-int/2addr v4, v5

    goto :goto_7d

    :cond_b1
    monitor-exit p0

    return-object v2

    :catchall_b3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/ArrayList;I)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    const-wide v3, 0x7fffffffffffffffL

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lc/a;->o()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_16

    move v8, v6

    goto :goto_1d

    :cond_16
    const/4 v8, 0x7

    if-ne v2, v8, :cond_1b

    move v8, v7

    goto :goto_1d

    :cond_1b
    add-int/lit8 v8, v2, 0x1

    :goto_1d
    if-nez v0, :cond_28

    sget-object v0, Lc/a;->m:Ljava/lang/String;

    const-string v2, "Debug buildingBattUsageLis null"

    invoke-static {v0, v2}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_1a7

    monitor-exit p0

    return-void

    :cond_28
    :try_start_28
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/f;

    invoke-virtual {v9}, Lc/f;->d()I

    move-result v10

    if-ne v10, v2, :cond_4c

    sget-object v10, Lc/a;->m:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buildingBattUsageList - piList is matched with dayOfWeek with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v7

    goto :goto_4d

    :cond_4c
    move v2, v6

    :goto_4d
    invoke-virtual {v9}, Lc/f;->d()I

    move-result v9

    if-ne v9, v8, :cond_6a

    sget-object v6, Lc/a;->m:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildingBattUsageList - piList is matched with dayOfWeek_N with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    :cond_6a
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, -0x1

    move v9, v8

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/f;

    invoke-virtual {v10}, Lc/f;->h()I

    move-result v11

    int-to-long v11, v11

    sub-long v3, v11, v3

    invoke-virtual {v10}, Lc/f;->c()I

    move-result v13

    int-to-long v13, v13

    const/4 v15, 0x2

    if-eq v8, v15, :cond_98

    const/4 v15, 0x4

    if-ne v8, v15, :cond_8f

    goto :goto_98

    :cond_8f
    move-object/from16 p2, v0

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    move v10, v7

    goto/16 :goto_186

    :cond_98
    :goto_98
    rem-int v8, v9, v5

    sub-int v8, v9, v8

    add-int v15, v8, v5

    sub-int/2addr v15, v7

    :goto_9f
    const-wide/16 v16, 0x0

    cmp-long v16, v3, v16

    if-lez v16, :cond_8f

    move/from16 p1, v8

    int-to-long v7, v9

    add-long/2addr v7, v3

    move-wide/from16 v18, v11

    int-to-long v11, v15

    cmp-long v7, v7, v11

    if-gtz v7, :cond_109

    iget-object v7, v1, Lc/a;->b:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v8

    aget v11, v7, v8

    int-to-long v11, v11

    add-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v7, v8

    iget-object v7, v1, Lc/a;->c:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v8

    aget v11, v7, v8

    int-to-long v11, v11

    add-long/2addr v11, v3

    long-to-int v11, v11

    aput v11, v7, v8

    if-eqz v2, :cond_e6

    iget-object v7, v1, Lc/a;->e:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v8

    aget v11, v7, v8

    int-to-long v11, v11

    add-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v7, v8

    iget-object v7, v1, Lc/a;->f:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v8

    aget v11, v7, v8

    int-to-long v11, v11

    add-long/2addr v11, v3

    long-to-int v11, v11

    aput v11, v7, v8

    :cond_e6
    if-eqz v6, :cond_102

    iget-object v7, v1, Lc/a;->h:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v8

    aget v11, v7, v8

    int-to-long v11, v11

    add-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v7, v8

    iget-object v7, v1, Lc/a;->i:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v8

    aget v9, v7, v8

    int-to-long v11, v9

    add-long/2addr v11, v3

    long-to-int v3, v11

    aput v3, v7, v8

    :cond_102
    move-object/from16 p2, v0

    move-object/from16 v17, v10

    const/4 v10, 0x1

    goto/16 :goto_186

    :cond_109
    sub-int/2addr v15, v9

    const/4 v7, 0x1

    add-int/2addr v15, v7

    int-to-long v7, v15

    mul-long v11, v13, v7

    div-long/2addr v11, v3

    long-to-int v11, v11

    iget-object v12, v1, Lc/a;->b:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v17

    aget v20, v12, v17

    add-int v20, v20, v11

    aput v20, v12, v17

    iget-object v12, v1, Lc/a;->c:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v17

    aget v20, v12, v17

    add-int v20, v20, v15

    aput v20, v12, v17

    if-eqz v2, :cond_14c

    iget-object v12, v1, Lc/a;->e:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v15

    move-object/from16 p2, v0

    aget v0, v12, v15

    move-object/from16 v17, v10

    move/from16 v20, v11

    int-to-long v10, v0

    add-long/2addr v10, v13

    long-to-int v0, v10

    aput v0, v12, v15

    iget-object v0, v1, Lc/a;->f:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v10

    aget v11, v0, v10

    int-to-long v11, v11

    add-long/2addr v11, v3

    long-to-int v11, v11

    aput v11, v0, v10

    goto :goto_152

    :cond_14c
    move-object/from16 p2, v0

    move-object/from16 v17, v10

    move/from16 v20, v11

    :goto_152
    if-eqz v6, :cond_16e

    iget-object v0, v1, Lc/a;->h:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v10

    aget v11, v0, v10

    int-to-long v11, v11

    add-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v0, v10

    iget-object v0, v1, Lc/a;->i:[I

    invoke-virtual {v1, v9}, Lc/a;->m(I)I

    move-result v9

    aget v10, v0, v9

    int-to-long v10, v10

    add-long/2addr v10, v3

    long-to-int v10, v10

    aput v10, v0, v9

    :cond_16e
    add-int v0, p1, v5

    rem-int/lit16 v9, v0, 0x5a0

    add-int v0, v9, v5

    const/4 v10, 0x1

    add-int/lit8 v15, v0, -0x1

    sub-long/2addr v3, v7

    move/from16 v0, v20

    int-to-long v7, v0

    sub-long/2addr v13, v7

    move-object/from16 v0, p2

    move v8, v9

    move v7, v10

    move-object/from16 v10, v17

    move-wide/from16 v11, v18

    goto/16 :goto_9f

    :goto_186
    invoke-virtual/range {v17 .. v17}, Lc/f;->h()I

    move-result v0

    invoke-static {v0}, La/j;->h(I)I

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lc/f;->h()I

    move-result v3

    invoke-static {v3}, La/j;->k(I)I

    move-result v3

    mul-int/lit8 v0, v0, 0x3c

    add-int v9, v0, v3

    invoke-virtual/range {v17 .. v17}, Lc/f;->f()I

    move-result v8
    :try_end_19e
    .catchall {:try_start_28 .. :try_end_19e} :catchall_1a7

    move-object/from16 v0, p2

    move v7, v10

    move-wide/from16 v3, v18

    goto/16 :goto_70

    :cond_1a5
    monitor-exit p0

    return-void

    :catchall_1a7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 32

    move-object/from16 v0, p1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lc/a;->i()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x7

    goto :goto_e

    :cond_d
    sub-int/2addr v2, v3

    :goto_e
    sget-object v4, Lc/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Debug targetDay : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-ge v5, v6, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerInfo size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_170

    monitor-exit p0

    return-object v7

    :cond_42
    add-int/lit8 v4, v5, -0x1

    const/4 v6, -0x1

    move v8, v6

    :goto_46
    if-ltz v4, :cond_62

    :try_start_48
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/f;

    invoke-virtual {v9}, Lc/f;->d()I

    move-result v9

    if-ne v9, v2, :cond_5b

    if-gez v8, :cond_59

    add-int/lit8 v6, v4, 0x1

    move v8, v6

    :cond_59
    move v6, v3

    goto :goto_5f

    :cond_5b
    if-ne v6, v3, :cond_5f

    move v1, v4

    goto :goto_62

    :cond_5f
    :goto_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    :cond_62
    :goto_62
    if-ltz v8, :cond_150

    if-lt v8, v5, :cond_68

    goto/16 :goto_150

    :cond_68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/f;

    invoke-virtual {v2}, Lc/f;->h()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/f;

    invoke-virtual {v5}, Lc/f;->h()I

    move-result v6

    add-int/lit8 v7, v8, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/f;

    invoke-virtual {v9}, Lc/f;->h()I

    move-result v9

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/f;

    invoke-virtual {v8}, Lc/f;->h()I

    move-result v10

    rem-int/lit16 v11, v6, 0x5a0

    sub-int v15, v6, v11

    sub-int v4, v15, v4

    sub-int/2addr v6, v15

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lc/f;

    invoke-virtual {v2}, Lc/f;->f()I

    move-result v13

    invoke-virtual {v2}, Lc/f;->d()I

    move-result v16

    invoke-virtual {v2}, Lc/f;->i()I

    move-result v17

    invoke-virtual {v2}, Lc/f;->a()I

    move-result v18

    invoke-virtual {v2}, Lc/f;->c()I

    move-result v19

    invoke-virtual {v2}, Lc/f;->e()I

    move-result v20

    invoke-virtual {v2}, Lc/f;->g()I

    move-result v2

    move-object v12, v14

    move-object v3, v14

    move/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v2

    invoke-direct/range {v12 .. v20}, Lc/f;-><init>(IIIIIIII)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc/f;

    invoke-virtual {v5}, Lc/f;->f()I

    move-result v22

    invoke-virtual {v5}, Lc/f;->d()I

    move-result v23

    invoke-virtual {v5}, Lc/f;->h()I

    move-result v24

    invoke-virtual {v5}, Lc/f;->i()I

    move-result v25

    invoke-virtual {v5}, Lc/f;->a()I

    move-result v26

    invoke-virtual {v5}, Lc/f;->c()I

    move-result v3

    int-to-float v3, v3

    int-to-float v12, v6

    mul-float/2addr v3, v12

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v5}, Lc/f;->e()I

    move-result v28

    invoke-virtual {v5}, Lc/f;->g()I

    move-result v29

    move-object/from16 v21, v2

    move/from16 v27, v3

    invoke-direct/range {v21 .. v29}, Lc/f;-><init>(IIIIIIII)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    :goto_107
    if-gt v1, v7, :cond_115

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/f;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    :cond_115
    rem-int/lit16 v0, v10, 0x5a0

    sub-int v0, v10, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int v2, v0, v9

    sub-int/2addr v10, v0

    new-instance v3, Lc/f;

    invoke-virtual {v8}, Lc/f;->f()I

    move-result v13

    invoke-virtual {v8}, Lc/f;->d()I

    move-result v14

    add-int/lit8 v15, v0, 0x1

    invoke-virtual {v8}, Lc/f;->i()I

    move-result v16

    invoke-virtual {v8}, Lc/f;->a()I

    move-result v17

    invoke-virtual {v8}, Lc/f;->c()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    add-int/2addr v2, v10

    int-to-float v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v8}, Lc/f;->e()I

    move-result v19

    invoke-virtual {v8}, Lc/f;->g()I

    move-result v20

    move-object v12, v3

    move/from16 v18, v0

    invoke-direct/range {v12 .. v20}, Lc/f;-><init>(IIIIIIII)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catchall {:try_start_48 .. :try_end_14e} :catchall_170

    monitor-exit p0

    return-object v11

    :cond_150
    :goto_150
    :try_start_150
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerInfo data Errors, endIdx : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16e
    .catchall {:try_start_150 .. :try_end_16e} :catchall_170

    monitor-exit p0

    return-object v7

    :catchall_170
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 35

    move-object/from16 v0, p1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f;

    invoke-virtual {v4}, Lc/f;->d()I

    move-result v4

    move v5, v3

    :goto_15
    const/4 v6, -0x1

    if-ltz v5, :cond_2d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/f;

    invoke-virtual {v7}, Lc/f;->d()I

    move-result v8

    if-eq v8, v4, :cond_2a

    invoke-virtual {v7}, Lc/f;->d()I

    move-result v4

    move v8, v4

    goto :goto_2e

    :cond_2a
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    :cond_2d
    move v8, v6

    :goto_2e
    sget-object v4, Lc/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Debug targetDay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v7, 0x0

    if-ge v2, v5, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerInfo size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_193

    monitor-exit p0

    return-object v7

    :cond_5e
    move v4, v6

    :goto_5f
    const/4 v5, 0x1

    if-ltz v3, :cond_7b

    :try_start_62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/f;

    invoke-virtual {v9}, Lc/f;->d()I

    move-result v9

    if-ne v9, v8, :cond_74

    if-gez v4, :cond_72

    add-int/lit8 v4, v3, 0x1

    :cond_72
    move v6, v5

    goto :goto_78

    :cond_74
    if-ne v6, v5, :cond_78

    move v1, v3

    goto :goto_7b

    :cond_78
    :goto_78
    add-int/lit8 v3, v3, -0x1

    goto :goto_5f

    :cond_7b
    :goto_7b
    if-ltz v4, :cond_173

    if-lt v4, v2, :cond_81

    goto/16 :goto_173

    :cond_81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/f;

    invoke-virtual {v2}, Lc/f;->h()I

    move-result v3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lc/f;

    invoke-virtual {v15}, Lc/f;->h()I

    move-result v6

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/f;

    invoke-virtual {v7}, Lc/f;->h()I

    move-result v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f;

    invoke-virtual {v4}, Lc/f;->h()I

    move-result v13

    rem-int/lit16 v7, v6, 0x5a0

    sub-int v9, v6, v7

    sub-int v3, v9, v3

    sub-int v12, v6, v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lc/f;

    invoke-virtual {v2}, Lc/f;->f()I

    move-result v7

    invoke-virtual {v2}, Lc/f;->i()I

    move-result v17

    invoke-virtual {v2}, Lc/f;->a()I

    move-result v18

    invoke-virtual {v2}, Lc/f;->c()I

    move-result v19

    invoke-virtual {v2}, Lc/f;->e()I

    move-result v20

    invoke-virtual {v2}, Lc/f;->g()I

    move-result v2

    move-object v6, v10

    move-object v5, v10

    move/from16 v10, v17

    move-object/from16 v17, v4

    move-object v4, v11

    move/from16 v11, v18

    move v0, v12

    move/from16 v12, v19

    move/from16 v22, v13

    move/from16 v13, v20

    move/from16 v23, v14

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lc/f;-><init>(IIIIIIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc/f;

    invoke-virtual {v15}, Lc/f;->f()I

    move-result v25

    invoke-virtual {v15}, Lc/f;->d()I

    move-result v26

    invoke-virtual {v15}, Lc/f;->h()I

    move-result v27

    invoke-virtual {v15}, Lc/f;->i()I

    move-result v28

    invoke-virtual {v15}, Lc/f;->a()I

    move-result v29

    invoke-virtual {v15}, Lc/f;->c()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v5, v0

    float-to-int v0, v5

    invoke-virtual {v15}, Lc/f;->e()I

    move-result v31

    invoke-virtual {v15}, Lc/f;->g()I

    move-result v32

    move-object/from16 v24, v2

    move/from16 v30, v0

    invoke-direct/range {v24 .. v32}, Lc/f;-><init>(IIIIIIII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    move/from16 v0, v23

    :goto_125
    if-gt v1, v0, :cond_135

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/f;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_125

    :cond_135
    move/from16 v0, v22

    rem-int/lit16 v13, v0, 0x5a0

    sub-int v13, v0, v13

    const/4 v1, 0x1

    sub-int/2addr v13, v1

    sub-int v2, v13, v16

    sub-int/2addr v0, v13

    new-instance v3, Lc/f;

    invoke-virtual/range {v17 .. v17}, Lc/f;->f()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lc/f;->d()I

    move-result v20

    add-int/lit8 v21, v13, 0x1

    invoke-virtual/range {v17 .. v17}, Lc/f;->i()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Lc/f;->a()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Lc/f;->c()I

    move-result v1

    int-to-float v1, v1

    int-to-float v5, v2

    mul-float/2addr v1, v5

    add-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual/range {v17 .. v17}, Lc/f;->e()I

    move-result v25

    invoke-virtual/range {v17 .. v17}, Lc/f;->g()I

    move-result v26

    move-object/from16 v18, v3

    move/from16 v24, v0

    invoke-direct/range {v18 .. v26}, Lc/f;-><init>(IIIIIIII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_171
    .catchall {:try_start_62 .. :try_end_171} :catchall_193

    monitor-exit p0

    return-object v4

    :cond_173
    :goto_173
    :try_start_173
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerInfo data Errors, endIdx : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_191
    .catchall {:try_start_173 .. :try_end_191} :catchall_193

    monitor-exit p0

    return-object v7

    :catchall_193
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/high16 v2, 0x42700000    # 60.0f

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-ge v1, v4, :cond_22

    :try_start_a
    iget-object v4, p0, Lc/a;->c:[I

    aget v4, v4, v1

    if-lez v4, :cond_17

    iget-object v3, p0, Lc/a;->b:[I

    aget v3, v3, v1

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    :cond_17
    iget-object v4, p0, Lc/a;->d:[I

    mul-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_20
    move-exception v0

    goto :goto_57

    :cond_22
    move v1, v0

    :goto_23
    if-ge v1, v4, :cond_3d

    iget-object v5, p0, Lc/a;->f:[I

    aget v5, v5, v1

    if-lez v5, :cond_33

    iget-object v6, p0, Lc/a;->e:[I

    aget v6, v6, v1

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    goto :goto_34

    :cond_33
    move v6, v3

    :goto_34
    iget-object v5, p0, Lc/a;->g:[I

    mul-float/2addr v6, v2

    float-to-int v6, v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3d
    :goto_3d
    if-ge v0, v4, :cond_59

    iget-object v1, p0, Lc/a;->i:[I

    aget v1, v1, v0

    if-lez v1, :cond_4d

    iget-object v5, p0, Lc/a;->h:[I

    aget v5, v5, v0

    int-to-float v5, v5

    int-to-float v1, v1

    div-float/2addr v5, v1

    goto :goto_4e

    :cond_4d
    move v5, v3

    :goto_4e
    iget-object v1, p0, Lc/a;->j:[I

    mul-float/2addr v5, v2

    float-to-int v5, v5

    aput v5, v1, v0
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :goto_57
    monitor-exit p0

    throw v0

    :cond_59
    monitor-exit p0

    return-void
.end method

.method public f()[I
    .registers 1

    iget-object p0, p0, Lc/a;->d:[I

    return-object p0
.end method

.method public g()[I
    .registers 1

    iget-object p0, p0, Lc/a;->g:[I

    return-object p0
.end method

.method public h()[I
    .registers 1

    iget-object p0, p0, Lc/a;->j:[I

    return-object p0
.end method

.method public i()I
    .registers 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public j()[I
    .registers 1

    iget-object p0, p0, Lc/a;->c:[I

    return-object p0
.end method

.method public k()[I
    .registers 1

    iget-object p0, p0, Lc/a;->f:[I

    return-object p0
.end method

.method public l()[I
    .registers 1

    iget-object p0, p0, Lc/a;->i:[I

    return-object p0
.end method

.method public m(I)I
    .registers 2

    rem-int/lit8 p0, p1, 0x3c

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x3c

    return p1
.end method

.method public n()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public o()I
    .registers 1

    const/16 p0, 0x3c

    return p0
.end method

.method public p()I
    .registers 1

    iget p0, p0, Lc/a;->k:I

    return p0
.end method

.method public q()[I
    .registers 1

    iget-object p0, p0, Lc/a;->b:[I

    return-object p0
.end method

.method public r()[I
    .registers 1

    iget-object p0, p0, Lc/a;->e:[I

    return-object p0
.end method

.method public s()[I
    .registers 1

    iget-object p0, p0, Lc/a;->h:[I

    return-object p0
.end method

.method public declared-synchronized t()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/16 v2, 0x18

    if-ge v1, v2, :cond_31

    :try_start_7
    iget-object v2, p0, Lc/a;->b:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->c:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->d:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->e:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->f:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->g:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->h:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->i:[I

    aput v0, v2, v1

    iget-object v2, p0, Lc/a;->j:[I

    aput v0, v2, v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BattUsageSlotInfo  name ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized u()V
    .registers 11

    monitor-enter p0

    :try_start_1
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Print "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " avgUsage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v2, 0x18

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5c

    sget-object v2, Lc/a;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avgUsage["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/a;->d:[I

    aget v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_5c
    sget-object v1, Lc/a;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Print "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " avgUsageByDay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_7c
    if-ge v1, v2, :cond_b3

    sget-object v4, Lc/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "avgUsageByDay["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lc/a;->g:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_b3
    sget-object v1, Lc/a;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Print "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " avgUsageByDay_N"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_d3
    if-ge v1, v2, :cond_10a

    sget-object v4, Lc/a;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "avgUsageByDay_N["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02d"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lc/a;->j:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catchall {:try_start_1 .. :try_end_107} :catchall_10c

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :cond_10a
    monitor-exit p0

    return-void

    :catchall_10c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()V
    .registers 9

    monitor-enter p0

    :try_start_1
    sget-object v0, Lc/a;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Print "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Batt Usage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v2, 0x18

    if-ge v1, v2, :cond_5c

    sget-object v2, Lc/a;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/a;->b:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_5e

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_5c
    monitor-exit p0

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lc/a;->l:Ljava/lang/String;

    return-void
.end method

.method public x(I)V
    .registers 2

    iput p1, p0, Lc/a;->k:I

    return-void
.end method
