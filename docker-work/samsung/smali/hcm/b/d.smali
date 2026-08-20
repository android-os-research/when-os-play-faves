.class public Lb/d;
.super Lb/a;
.source "SourceFile"


# static fields
.field private static final A:I = 0x7

.field private static final B:J = 0x36ee80L

.field private static final C:Ljava/lang/Runnable;

.field private static final d:Ljava/lang/String; = "d"

.field private static e:Lh/c; = null

.field private static f:Landroid/content/Context; = null

.field private static g:Landroid/os/Handler; = null

.field private static h:Lb/b; = null

.field private static i:La/f; = null

.field private static j:Lb/d; = null

.field private static k:Lc/e; = null

.field private static l:La/d; = null

.field private static m:Landroid/telephony/TelephonyManager; = null

.field private static n:La/b; = null

.field private static o:I = 0x0

.field private static p:Z = true

.field private static q:Ljava/lang/String; = "None"

.field private static r:La/i; = null

.field private static s:Ljava/util/ArrayList; = null

.field private static t:Ljava/util/ArrayList; = null

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x3

.field private static final x:I = 0x4

.field private static final y:I = 0x5

.field private static final z:I = 0x6


# instance fields
.field private c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb/d;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb/d;->t:Ljava/util/ArrayList;

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    sput-object v0, Lb/d;->C:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lb/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/d;->c:Ljava/util/HashMap;

    sget-object v0, Lb/d;->d:Ljava/lang/String;

    const-string v1, "PredictionController Start"

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object v0

    sput-object v0, Lb/d;->l:La/d;

    invoke-static {p1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    move-result-object v0

    sput-object v0, Lb/d;->k:Lc/e;

    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    move-result-object v0

    sput-object v0, Lb/d;->e:Lh/c;

    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    move-result-object v0

    sput-object v0, Lb/d;->i:La/f;

    invoke-static {p1}, Lb/b;->a(Landroid/content/Context;)Lb/b;

    move-result-object v0

    sput-object v0, Lb/d;->h:Lb/b;

    invoke-static {p1}, La/i;->p(Landroid/content/Context;)La/i;

    move-result-object v0

    sput-object v0, Lb/d;->r:La/i;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    sput-object p1, Lb/d;->m:Landroid/telephony/TelephonyManager;

    invoke-static {}, La/b;->b()La/b;

    move-result-object p1

    sput-object p1, Lb/d;->n:La/b;

    invoke-direct {p0}, Lb/d;->g()V

    invoke-direct {p0}, Lb/d;->k()V

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    sget-boolean v0, Lb/d;->p:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .registers 1

    sput-boolean p0, Lb/d;->p:Z

    return p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lb/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lb/d;
    .registers 3

    const-class v0, Lb/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/d;->j:Lb/d;

    if-nez v1, :cond_e

    new-instance v1, Lb/d;

    invoke-direct {v1, p0}, Lb/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/d;->j:Lb/d;

    :cond_e
    sget-object p0, Lb/d;->j:Lb/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;Landroid/os/Looper;)Lb/d;
    .registers 4

    const-class v0, Lb/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/d;->j:Lb/d;

    if-nez v1, :cond_e

    new-instance v1, Lb/d;

    invoke-direct {v1, p0}, Lb/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/d;->j:Lb/d;

    :cond_e
    sget-object p0, Lb/d;->g:Landroid/os/Handler;

    if-nez p0, :cond_19

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lb/d;->g:Landroid/os/Handler;

    :cond_19
    sget-object p0, Lb/d;->j:Lb/d;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object p0

    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private g()V
    .registers 2

    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h()Z
    .registers 4

    sget-object v0, Lb/d;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    sget-object v1, Lb/d;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_20

    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0
.end method

.method private j()V
    .registers 16

    iget-object v0, p0, Lb/d;->c:Ljava/util/HashMap;

    if-nez v0, :cond_c

    sget-object p0, Lb/d;->d:Ljava/lang/String;

    const-string v0, "prediction list is null "

    :goto_8
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p0, Lb/d;->d:Ljava/lang/String;

    const-string v0, "prediction list is empty "

    goto :goto_8

    :cond_17
    sget-object v0, Lb/d;->i:La/f;

    const-string v1, "PSPR"

    const-string v2, "ph"

    invoke-virtual {v0, v1, v2}, La/f;->f(Ljava/lang/String;Ljava/lang/String;)La/e;

    move-result-object v0

    iget-object v1, p0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ATIME"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ABATT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ARES"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DTIME"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DBATT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DRES"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lb/e;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v5, v14}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/e;->a()I

    move-result v5

    invoke-virtual {v0, v7, v5}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lb/e;->d()I

    move-result v5

    invoke-virtual {v0, v8, v5}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lb/e;->b()I

    move-result v5

    invoke-virtual {v0, v9, v5}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lb/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/e;->g()I

    move-result v5

    invoke-virtual {v0, v11, v5}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lb/e;->e()I

    move-result v5

    invoke-virtual {v0, v12, v5}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lb/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v3, v2

    goto/16 :goto_2d

    :cond_11c
    invoke-virtual {v0}, La/e;->e()V

    return-void
.end method

.method private k()V
    .registers 5

    sget-object p0, Lb/d;->n:La/b;

    invoke-virtual {p0}, La/b;->a()I

    move-result p0

    sput p0, Lb/d;->o:I

    sget-object p0, Lb/d;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HCM Level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lb/d;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lb/d;->o:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-lez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/d;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_54
    sget-object p0, Lb/d;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lb/d;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable Function : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_7d
    return-void
.end method

.method public static l()V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lb/d;->p:Z

    sget-object v0, Lb/d;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set sendIpcToAppFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lb/d;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb/d;->g:Landroid/os/Handler;

    sget-object v1, Lb/d;->C:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public f()Ljava/util/ArrayList;
    .registers 1

    sget-object p0, Lb/d;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method public i(I)Z
    .registers 18

    move-object/from16 v0, p0

    sget-object v1, Lb/d;->d:Ljava/lang/String;

    const-string v2, "try releasePrediction"

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lb/d;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    const-string v0, "blocked releasePrediction"

    :goto_12
    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_16
    invoke-static {}, La/i;->q()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "Pre"

    const/4 v6, 0x1

    if-ne v2, v4, :cond_33

    invoke-static {}, La/i;->o()I

    move-result v2

    if-ne v2, v6, :cond_33

    const-string v2, "Intent send!! Disable power save mode."

    sget-object v4, Lb/d;->l:La/d;

    invoke-virtual {v4, v5, v2}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lb/d;->o(Z)V

    :cond_33
    iget-object v2, v0, Lb/d;->c:Ljava/util/HashMap;

    if-nez v2, :cond_3a

    const-string v0, "prediction list is null "

    goto :goto_12

    :cond_3a
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v0, "prediction list is empty "

    goto :goto_12

    :cond_43
    invoke-static {}, La/j;->i()I

    move-result v1

    sget-object v2, Lb/d;->e:Lh/c;

    invoke-virtual {v2}, Lh/c;->c()I

    move-result v2

    iget-object v3, v0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, v0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/e;

    invoke-virtual {v7, v1}, Lb/e;->p(I)V

    invoke-virtual {v7, v2}, Lb/e;->n(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lb/e;->o(Ljava/lang/String;)V

    sget-object v8, Lb/d;->s:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lb/e;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    sget-object v8, Lb/d;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable power save mode with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lb/e;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "releasePrediction : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lb/d;->d:Ljava/lang/String;

    invoke-static {v7, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lb/d;->l:La/d;

    invoke-virtual {v7, v5, v4}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_ba
    sget-object v8, Lb/d;->k:Lc/e;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x2

    const-string v9, ""

    const-string v10, ""

    const-string v14, ""

    invoke-virtual/range {v8 .. v15}, Lc/e;->d(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lb/d;->j()V

    iget-object v0, v0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "Release"

    sput-object v0, Lb/d;->q:Ljava/lang/String;

    sget-object v1, Lb/d;->r:La/i;

    move/from16 v2, p1

    invoke-virtual {v1, v0, v2}, La/i;->u(Ljava/lang/String;I)V

    return v6
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    invoke-static {}, La/j;->i()I

    move-result v6

    sget-object v0, Lb/d;->e:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v7

    invoke-static {}, Lb/d;->h()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object p0, Lb/d;->d:Ljava/lang/String;

    const-string p1, "blocked setPrediction"

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v8, Lb/e;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lb/e;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lb/d;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_55

    invoke-virtual {v8}, Lb/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lb/d;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alread have prediction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lb/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_4c
    iget-object v0, p0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v8}, Lb/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    :goto_55
    sget-object v0, Lb/d;->r:La/i;

    invoke-virtual {v0}, La/i;->r()Z

    move-result v0

    const-string v1, "Pre"

    if-nez v0, :cond_8d

    invoke-static {}, La/i;->o()I

    move-result v0

    if-lez v0, :cond_8d

    sget-object v0, Lb/d;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent send!! Enable power save mode with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lb/d;->l:La/d;

    invoke-virtual {v2, v1, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lb/d;->d:Ljava/lang/String;

    invoke-static {v2, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/d;->o(Z)V

    goto :goto_a3

    :cond_8d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent skip!! Enable power save mode with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lb/d;->l:La/d;

    invoke-virtual {v0, v1, p0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPrediction : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lb/d;->l:La/d;

    invoke-virtual {v0, v1, p0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb/d;->d:Ljava/lang/String;

    invoke-static {v0, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb/d;->k:Lc/e;

    const/4 p0, 0x3

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, v7

    move v5, p3

    move-object v6, p4

    move v7, p0

    invoke-virtual/range {v0 .. v7}, Lc/e;->d(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object p1, Lb/d;->q:Ljava/lang/String;

    sget-object p0, Lb/d;->r:La/i;

    invoke-virtual {p0, p1, p3}, La/i;->u(Ljava/lang/String;I)V

    return-void
.end method

.method public n()V
    .registers 2

    sget-object v0, Lb/d;->k:Lc/e;

    iget-object p0, p0, Lb/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Lc/e;->s(Ljava/util/HashMap;)V

    return-void
.end method

.method public o(Z)V
    .registers 2

    sget-object p0, Lb/d;->h:Lb/b;

    invoke-virtual {p0, p1}, Lb/b;->c(Z)V

    return-void
.end method

.method public p(Z)V
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_17

    sget-object p1, Lb/d;->r:La/i;

    invoke-virtual {p1}, La/i;->r()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {}, La/i;->o()I

    move-result p1

    if-lez p1, :cond_2b

    sget-object p1, Lb/d;->h:Lb/b;

    invoke-virtual {p1, p0}, Lb/b;->c(Z)V

    goto :goto_2b

    :cond_17
    sget-object p1, Lb/d;->r:La/i;

    invoke-virtual {p1}, La/i;->r()Z

    move-result p1

    if-ne p1, p0, :cond_2b

    invoke-static {}, La/i;->o()I

    move-result p0

    if-lez p0, :cond_2b

    sget-object p0, Lb/d;->h:Lb/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/b;->c(Z)V

    :cond_2b
    :goto_2b
    return-void
.end method
