.class public abstract Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:Z

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/util/ArrayList;

.field protected j:Ljava/util/ArrayList;

.field protected k:Ljava/util/ArrayList;

.field protected l:Ljava/util/LinkedHashMap;

.field protected m:Ljava/util/LinkedHashMap;

.field protected n:Ljava/util/LinkedHashMap;

.field protected o:La/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lc/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a;->b:Z

    iput-boolean v0, p0, Lc/a;->c:Z

    const-string v0, "sample"

    iput-object v0, p0, Lc/a;->d:Ljava/lang/String;

    const-string v0, "sm"

    iput-object v0, p0, Lc/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc/a;->l:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc/a;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a;->o:La/f;

    return-void
.end method

.method private declared-synchronized p(I)Z
    .registers 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, v1, Lc/a;->b:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d3

    const/4 v2, 0x0

    if-nez v0, :cond_a

    monitor-exit p0

    return v2

    :cond_a
    :try_start_a
    const-string v0, ""

    const-string v3, ""

    const-string v4, ""

    sget-boolean v5, La/g;->i:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    invoke-static {}, La/s;->k()Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v0, v1, Lc/a;->a:Ljava/lang/String;

    const-string v3, "HAL init fail"

    invoke-static {v0, v3}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_d3

    monitor-exit p0

    return v2

    :cond_24
    :try_start_24
    sget v5, Lc/k;->F:I

    sget v7, Lc/b;->E:I

    if-eq v5, v7, :cond_64

    sget v5, Lc/k;->F:I

    sget v7, Lc/b;->G:I

    if-ne v5, v7, :cond_31

    goto :goto_64

    :cond_31
    sget v5, Lc/k;->F:I

    sget v7, Lc/b;->F:I

    if-eq v5, v7, :cond_3d

    sget v5, Lc/k;->F:I

    sget v7, Lc/b;->H:I

    if-ne v5, v7, :cond_7c

    :cond_3d
    invoke-virtual/range {p0 .. p1}, Lc/a;->k(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v1, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Lc/a;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7c

    :cond_4a
    iget-object v0, v1, Lc/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendK(DQ) - failed to read...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lc/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_d3

    monitor-exit p0

    return v2

    :cond_64
    :goto_64
    :try_start_64
    invoke-virtual/range {p0 .. p1}, Lc/a;->l(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, v1, Lc/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Lc/a;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Lc/a;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lc/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Lc/a;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    :cond_7c
    :goto_7c
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v4

    iget-object v0, v1, Lc/a;->o:La/f;

    if-nez v0, :cond_8a

    invoke-static {}, La/f;->w()La/f;

    move-result-object v0

    iput-object v0, v1, Lc/a;->o:La/f;

    :cond_8a
    sget v0, Lc/b;->L:I

    move/from16 v3, p1

    if-ne v3, v0, :cond_a5

    iget-object v7, v1, Lc/a;->o:La/f;

    if-eqz v7, :cond_a3

    const/4 v8, 0x0

    iget-object v9, v1, Lc/a;->d:Ljava/lang/String;

    iget-object v10, v1, Lc/a;->e:Ljava/lang/String;

    iget-object v11, v1, Lc/a;->f:Ljava/lang/String;

    iget-object v12, v1, Lc/a;->g:Ljava/lang/String;

    iget-object v13, v1, Lc/a;->h:Ljava/lang/String;

    :goto_9f
    invoke-virtual/range {v7 .. v16}, La/f;->R(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a2
    .catchall {:try_start_64 .. :try_end_a2} :catchall_d3

    goto :goto_b5

    :cond_a3
    monitor-exit p0

    return v2

    :cond_a5
    :try_start_a5
    iget-object v7, v1, Lc/a;->o:La/f;

    if-eqz v7, :cond_b7

    const/4 v8, 0x1

    iget-object v9, v1, Lc/a;->d:Ljava/lang/String;

    iget-object v10, v1, Lc/a;->e:Ljava/lang/String;

    iget-object v11, v1, Lc/a;->f:Ljava/lang/String;

    iget-object v12, v1, Lc/a;->g:Ljava/lang/String;

    iget-object v13, v1, Lc/a;->h:Ljava/lang/String;
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_d3

    goto :goto_9f

    :goto_b5
    monitor-exit p0

    return v6

    :cond_b7
    monitor-exit p0

    return v2

    :cond_b9
    :try_start_b9
    iget-object v0, v1, Lc/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendK(DV) - failed to read...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lc/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_b9 .. :try_end_d1} :catchall_d3

    monitor-exit p0

    return v2

    :catchall_d3
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget v3, Lc/b;->L:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v6, p3

    if-ne v6, v3, :cond_10

    move v3, v4

    goto :goto_11

    :cond_10
    move v3, v5

    :goto_11
    move v6, v5

    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_11a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La/p;

    invoke-virtual {v7}, La/p;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/p;

    invoke-virtual {v8}, La/p;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La/p;

    invoke-virtual {v9}, La/p;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La/p;

    invoke-virtual {v10}, La/p;->e()Z

    move-result v10

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La/p;

    invoke-virtual {v11}, La/p;->c()Ljava/lang/String;

    move-result-object v11

    sget-boolean v12, La/g;->i:Z

    const-string v13, "system"

    if-ne v12, v4, :cond_5d

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d

    iget-object v12, v0, Lc/a;->a:Ljava/lang/String;

    invoke-static {v12, v9}, La/s;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_63

    :cond_5d
    iget-object v12, v0, Lc/a;->a:Ljava/lang/String;

    invoke-static {v12, v9}, La/s;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_63
    const-string v14, ""

    const-string v15, "S"

    if-eqz v12, :cond_109

    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_74

    invoke-virtual {v2, v8, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e9

    :cond_74
    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e9

    const-string v7, "\",\""

    const-string v8, "\\{"

    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\":\""

    const-string v15, "\\}"

    invoke-virtual {v7, v12, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "\""

    invoke-virtual {v7, v12, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_97
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v14, 0x2

    if-ne v8, v14, :cond_ba

    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ba

    aget-object v8, v7, v5

    aget-object v7, v7, v4

    invoke-virtual {v2, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    goto :goto_e6

    :cond_ba
    iget-object v8, v0, Lc/a;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error node : "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v7

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, v7, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e6
    move v5, v4

    const/4 v4, 0x1

    goto :goto_97

    :cond_e9
    :goto_e9
    move v4, v5

    if-eqz v3, :cond_107

    if-eqz v10, :cond_107

    sget-boolean v5, La/g;->i:Z

    const-string v7, "c"

    const/4 v10, 0x1

    if-ne v5, v10, :cond_101

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_101

    iget-object v5, v0, Lc/a;->a:Ljava/lang/String;

    invoke-static {v5, v9, v7}, La/s;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_114

    :cond_101
    iget-object v5, v0, Lc/a;->a:Ljava/lang/String;

    invoke-static {v5, v9, v7}, La/s;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_114

    :cond_107
    const/4 v10, 0x1

    goto :goto_114

    :cond_109
    move v10, v4

    move v4, v5

    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_114

    invoke-virtual {v2, v8, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_114
    :goto_114
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    move v4, v10

    goto/16 :goto_12

    :cond_11a
    return-void
.end method

.method public b(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez p0, :cond_a5

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    add-int/lit8 v3, p0, -0x1

    const-string v4, "\":\""

    const-string v5, "####"

    const-string v6, "\""

    if-ge v1, v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6b

    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_a2

    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_a2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sysfsNode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, La/g;->j:Z

    if-eqz v0, :cond_149

    const/4 v0, 0x0

    move v1, v0

    :goto_33
    iget-object v2, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, ": "

    const-string v4, " "

    if-ge v1, v2, :cond_92

    iget-object v2, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/p;

    invoke-virtual {v2}, La/p;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/p;

    invoke-virtual {v5}, La/p;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/p;

    invoke-virtual {v6}, La/p;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "     D "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_92
    move v1, v0

    :goto_93
    iget-object v2, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ee

    iget-object v2, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/p;

    invoke-virtual {v2}, La/p;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/p;

    invoke-virtual {v5}, La/p;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/p;

    invoke-virtual {v6}, La/p;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "     C "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_ee
    :goto_ee
    iget-object v1, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_149

    iget-object v1, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/p;

    invoke-virtual {v1}, La/p;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/p;

    invoke-virtual {v2}, La/p;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/p;

    invoke-virtual {v5}, La/p;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "     P "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    :cond_149
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lc/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_3e

    goto :goto_2e

    :sswitch_e
    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v1, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "sm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_2e

    :cond_22
    const/4 v1, 0x1

    goto :goto_2e

    :sswitch_24
    const-string v0, "ph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    packed-switch v1, :pswitch_data_4c

    const-string p0, "None"

    goto :goto_3c

    :pswitch_34
    const-string p0, "Threshold"

    goto :goto_3c

    :pswitch_37
    const-string p0, "Alarm 24H"

    goto :goto_3c

    :pswitch_3a
    const-string p0, "Performance"

    :goto_3c
    return-object p0

    nop

    :sswitch_data_3e
    .sparse-switch
        0xdf8 -> :sswitch_24
        0xe5a -> :sswitch_19
        0xe74 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch
.end method

.method public f()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object p3, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-eqz p2, :cond_e

    iget-object p1, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    iget-object p1, p0, Lc/a;->k:Ljava/util/ArrayList;

    if-eqz p1, :cond_15

    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_15
    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/a;->b:Z

    iget-object p0, p0, Lc/a;->a:Ljava/lang/String;

    const-string p1, "parameter setting - OK"

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method k(I)Z
    .registers 6

    iget-boolean v0, p0, Lc/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lc/a;->c:Z

    iget-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    iget-boolean p0, p0, Lc/a;->c:Z

    return p0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v2, p1}, Lc/a;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object p1, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget-object v0, p0, Lc/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CF totalValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    iput-boolean v1, p0, Lc/a;->c:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    iget-boolean p0, p0, Lc/a;->c:Z

    return p0
.end method

.method l(I)Z
    .registers 6

    iget-boolean v0, p0, Lc/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-boolean v1, p0, Lc/a;->c:Z

    iget-object v0, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_23

    iget-boolean p0, p0, Lc/a;->c:Z

    return p0

    :cond_23
    :try_start_23
    iget-object v0, p0, Lc/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lc/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lc/a;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lc/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v2, p1}, Lc/a;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v2, p1}, Lc/a;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object v0, p0, Lc/a;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lc/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v2, p1}, Lc/a;->a(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object p1, p0, Lc/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget-object v0, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lc/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lc/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DV totalValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_74

    const/4 v1, 0x1

    :cond_74
    iput-boolean v1, p0, Lc/a;->c:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7b
    iget-boolean p0, p0, Lc/a;->c:Z

    return p0
.end method

.method public m()Z
    .registers 4

    iget-boolean v0, p0, Lc/a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget v0, Lc/k;->F:I

    sget v2, Lc/b;->D:I

    if-ne v0, v2, :cond_d

    return v1

    :cond_d
    sget v0, Lc/b;->L:I

    invoke-direct {p0, v0}, Lc/a;->p(I)Z

    iget-object p0, p0, Lc/a;->a:Ljava/lang/String;

    const-string v0, "send() - OK!"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method n()V
    .registers 2

    iget-object v0, p0, Lc/a;->l:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lc/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_f
    iget-object v0, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lc/a;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1e
    iget-object v0, p0, Lc/a;->n:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2d

    iget-object v0, p0, Lc/a;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2d
    iget-object v0, p0, Lc/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, p0, Lc/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3c
    iget-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    iget-object v0, p0, Lc/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4b
    iget-object v0, p0, Lc/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5a

    iget-object p0, p0, Lc/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5a
    return-void
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lc/a;->b:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    sget v0, Lc/b;->M:I

    invoke-direct {p0, v0}, Lc/a;->p(I)Z

    iget-object p0, p0, Lc/a;->a:Ljava/lang/String;

    const-string v0, "updateHWParam() - OK!"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
