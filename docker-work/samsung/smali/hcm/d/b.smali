.class public Ld/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "b"

.field private static f:Landroid/content/Context; = null

.field private static g:Ld/b; = null

.field private static h:Lh/h; = null

.field private static i:Lb/d; = null

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field private static q:Lh/c;


# instance fields
.field private a:La/d;

.field private b:Lc/d;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/IActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/b;->a:La/d;

    iput-object v0, p0, Ld/b;->b:Lc/d;

    iput-object v0, p0, Ld/b;->c:Landroid/os/Handler;

    iput-object v0, p0, Ld/b;->d:Landroid/app/IActivityManager;

    sget-object v0, Ld/b;->e:Ljava/lang/String;

    const-string v1, "ChargePrediction Start"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Ld/b;->f:Landroid/content/Context;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object v0

    iput-object v0, p0, Ld/b;->a:La/d;

    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    move-result-object v0

    sput-object v0, Ld/b;->q:Lh/c;

    invoke-static {p1}, Lb/d;->d(Landroid/content/Context;)Lb/d;

    move-result-object v0

    sput-object v0, Ld/b;->i:Lb/d;

    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object p1

    iput-object p1, p0, Ld/b;->b:Lc/d;

    return-void
.end method

.method private a(II)I
    .registers 7

    add-int/lit8 p0, p2, 0x1

    if-nez p1, :cond_b

    sget-object v0, Lc/d;->r:[I

    sget-object v1, Ld/b;->e:Ljava/lang/String;

    const-string v2, "cal_t_time from ALL-Day buffer in batt_H"

    goto :goto_11

    :cond_b
    sget-object v0, Lc/d;->s:[I

    sget-object v1, Ld/b;->e:Ljava/lang/String;

    const-string v2, "cal_t_time from D-Day buffer in batt_H"

    :goto_11
    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    if-ge p0, v1, :cond_24

    :goto_19
    if-ge p0, v1, :cond_24

    aget v3, v0, p0

    if-lez v3, :cond_21

    const/4 v1, 0x1

    goto :goto_26

    :cond_21
    add-int/lit8 p0, p0, 0x1

    goto :goto_19

    :cond_24
    move p0, v2

    move v1, p0

    :goto_26
    if-ne v1, v2, :cond_3e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2d

    sget-object v0, Lc/d;->t:[I

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    if-gt v2, p2, :cond_3e

    aget v3, v0, v2

    if-lez v3, :cond_3b

    if-ne p1, v1, :cond_39

    add-int/lit8 p0, v2, 0x64

    goto :goto_3e

    :cond_39
    move p0, v2

    goto :goto_3e

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_3e
    :goto_3e
    return p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ld/b;
    .registers 3

    const-class v0, Ld/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ld/b;->g:Ld/b;

    if-nez v1, :cond_e

    new-instance v1, Ld/b;

    invoke-direct {v1, p0}, Ld/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/b;->g:Ld/b;

    :cond_e
    sget-object p0, Ld/b;->g:Ld/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private f()V
    .registers 12

    sget v0, Lc/d;->v:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_bb

    sget-boolean v0, Ld/b;->j:Z

    if-nez v0, :cond_b6

    sget-object v0, Ld/b;->q:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v0

    sget-object v2, Lc/d;->l:Lc/a;

    invoke-virtual {v2}, Lc/a;->f()[I

    move-result-object v2

    invoke-static {}, La/j;->g()I

    move-result v3

    const/16 v4, 0x18

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ld/b;->b(II)I

    move-result p0

    const/4 v6, -0x1

    if-ne p0, v6, :cond_2a

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "No matched TT time - prediction_model_1(ALL Day)"

    goto/16 :goto_d0

    :cond_2a
    if-gt v3, p0, :cond_35

    move v4, v3

    :goto_2d
    if-ge v4, p0, :cond_48

    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_35
    move v6, v3

    move v7, v5

    :goto_37
    if-ge v6, v4, :cond_3f

    aget v8, v2, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_3f
    :goto_3f
    if-ge v5, p0, :cond_47

    aget v4, v2, v5

    add-int/2addr v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_47
    move v5, v7

    :cond_48
    div-int/lit8 v5, v5, 0x64

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c_time:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " t_time:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " total_usage:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " c_battLev:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v4, v0, v5

    const/4 v10, 0x5

    if-ge v4, v10, :cond_d3

    const-string v4, "Pre1-Deteced - Should be go the P.S mode"

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld/b;->i:Lb/d;

    const/16 v3, 0xa

    const-string v4, "Pre1"

    const-string v5, "ver01"

    invoke-virtual {v0, v4, v5, v3, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-boolean v1, Ld/b;->j:Z

    const-string p0, "prediction_model_1(ALL Day) start"

    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_b6
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_1(ALL Day)"

    goto :goto_d0

    :cond_bb
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop -NO Trained Data - prediction_model_1(ALL Day) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/d;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d0
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method private g()V
    .registers 6

    sget p0, Lc/d;->v:I

    const/4 v0, 0x1

    if-gt v0, p0, :cond_92

    sget-boolean p0, Ld/b;->k:Z

    if-nez p0, :cond_8d

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/j;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "hour:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/j;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/j;->g()I

    move-result v1

    rem-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prediction_model_2(ALL Day) start at : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4e

    const/16 v2, 0x17

    goto :goto_50

    :cond_4e
    add-int/lit8 v2, v1, -0x1

    :goto_50
    sget-object v3, Lc/d;->p:[I

    aget v3, v3, v2

    const/16 v4, 0x3c

    if-le v3, v4, :cond_aa

    const-string v3, "Pre2-Deteced - Should be go the P.S mode"

    invoke-static {p0, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c_time:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but not enter charged at:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/d;->p:[I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ld/b;->i:Lb/d;

    const/16 v2, 0xa

    const-string v3, "Pre2"

    const-string v4, "ver01"

    invoke-virtual {v1, v3, v4, v2, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-boolean v0, Ld/b;->k:Z

    goto :goto_aa

    :cond_8d
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_2(ALL Day)"

    goto :goto_a7

    :cond_92
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop -NO Trained Data - for prediction_model_2(ALL Day) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/d;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a7
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method private h()V
    .registers 11

    sget v0, Lc/d;->w:I

    const/4 v1, 0x2

    if-gt v1, v0, :cond_bc

    sget-boolean v0, Ld/b;->l:Z

    if-nez v0, :cond_b7

    sget-object v0, Ld/b;->q:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v0

    sget-object v2, Lc/d;->l:Lc/a;

    invoke-virtual {v2}, Lc/a;->g()[I

    move-result-object v2

    invoke-static {}, La/j;->g()I

    move-result v3

    const/16 v4, 0x18

    rem-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Ld/b;->b(II)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_29

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "No matched TT time - prediction_model_3(D Day)"

    goto/16 :goto_d1

    :cond_29
    const/4 v1, 0x0

    if-gt v3, p0, :cond_35

    move v4, v3

    :goto_2d
    if-ge v4, p0, :cond_48

    aget v5, v2, v4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_35
    move v6, v1

    move v5, v3

    :goto_37
    if-ge v5, v4, :cond_3f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_3f
    :goto_3f
    if-ge v1, p0, :cond_47

    aget v4, v2, v1

    add-int/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_47
    move v1, v6

    :cond_48
    div-int/lit8 v1, v1, 0x64

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c_time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t_time:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " total_usage:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " c_battLev:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v4, v0, v1

    const/4 v9, 0x5

    if-ge v4, v9, :cond_d4

    const-string v4, "Pre3-Deteced - Should be go the P.S mode"

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld/b;->i:Lb/d;

    const/16 v1, 0xa

    const-string v3, "Pre3"

    const-string v4, "ver01"

    invoke-virtual {v0, v3, v4, v1, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Ld/b;->l:Z

    const-string p0, "prediction_model_3(D Day) start"

    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d4

    :cond_b7
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_3(D Day)"

    goto :goto_d1

    :cond_bc
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop -NO Trained Data - for prediction_model_3(D Day) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/d;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    return-void
.end method

.method private i()V
    .registers 5

    sget p0, Lc/d;->w:I

    const/4 v0, 0x2

    if-gt v0, p0, :cond_93

    sget-boolean p0, Ld/b;->m:Z

    if-nez p0, :cond_8e

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/j;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "hour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/j;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/j;->g()I

    move-result v0

    rem-int/lit8 v0, v0, 0x18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prediction_model_4(D Day) start at : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4e

    const/16 v1, 0x17

    goto :goto_50

    :cond_4e
    add-int/lit8 v1, v0, -0x1

    :goto_50
    sget-object v2, Lc/d;->q:[I

    aget v2, v2, v1

    const/16 v3, 0x3c

    if-le v2, v3, :cond_ab

    const-string v2, "Pre4-Deteced - Should be go the P.S mode"

    invoke-static {p0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c_time:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but not enter charged at:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lc/d;->q:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld/b;->i:Lb/d;

    const/16 v1, 0xa

    const-string v2, "Pre4"

    const-string v3, "ver01"

    invoke-virtual {v0, v2, v3, v1, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Ld/b;->m:Z

    goto :goto_ab

    :cond_8e
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_4(D Day)"

    goto :goto_a8

    :cond_93
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop -NO Trained Data - for prediction_model_4(D Day) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/d;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a8
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    :goto_ab
    return-void
.end method

.method private j()V
    .registers 6

    sget-boolean p0, Ld/b;->n:Z

    if-nez p0, :cond_3f

    sget-object p0, Ld/b;->q:Lh/c;

    invoke-virtual {p0}, Lh/c;->c()I

    move-result p0

    const/16 v0, 0x11

    sget-object v1, Lc/d;->u:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    if-eqz v1, :cond_14

    move v0, v1

    :cond_14
    if-gt p0, v0, :cond_46

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v1, "Pre5-Deteced - Should be go the P.S mode"

    invoke-static {p0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS 5 mode triggered : batt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ld/b;->i:Lb/d;

    const/16 v2, 0xa

    const-string v3, "Pre5"

    const-string v4, "ver01"

    invoke-virtual {v1, v3, v4, v2, v0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Ld/b;->n:Z

    const-string v0, "prediction_model_5(V-Batt) start"

    goto :goto_43

    :cond_3f
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_5"

    :goto_43
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private k()V
    .registers 15

    sget v0, Lc/d;->v:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_da

    sget-boolean v0, Ld/b;->o:Z

    if-nez v0, :cond_d5

    sget-object v0, Ld/b;->q:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v0

    sget-object v2, Lc/d;->l:Lc/a;

    invoke-virtual {v2}, Lc/a;->f()[I

    move-result-object v2

    invoke-static {}, La/j;->g()I

    move-result v3

    const/16 v4, 0x18

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Ld/b;->a(II)I

    move-result p0

    const/4 v6, -0x1

    if-ne p0, v6, :cond_2a

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "No matched TT time - prediction_model_6(ALL Day)"

    goto/16 :goto_ef

    :cond_2a
    if-gt v3, p0, :cond_35

    move v4, v3

    :goto_2d
    if-ge v4, p0, :cond_48

    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_35
    move v6, v3

    move v7, v5

    :goto_37
    if-ge v6, v4, :cond_3f

    aget v8, v2, v6

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_3f
    :goto_3f
    if-ge v5, p0, :cond_47

    aget v4, v2, v5

    add-int/2addr v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_47
    move v5, v7

    :cond_48
    div-int/lit8 v5, v5, 0x64

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c_time:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " t_time:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " total_usage:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " c_battLev:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " t_battLev:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lc/d;->r:[I

    aget v11, v11, p0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v4, v0, v5

    sget-object v11, Lc/d;->r:[I

    aget v11, v11, p0

    sget-object v12, Lc/d;->u:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    if-ge v4, v11, :cond_f2

    const-string v4, "Pre6-Deteced - Should be go the P.S mode"

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lc/d;->r:[I

    aget p0, v0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld/b;->i:Lb/d;

    const/16 v3, 0xa

    const-string v4, "Pre6"

    const-string v5, "ver01"

    invoke-virtual {v0, v4, v5, v3, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-boolean v1, Ld/b;->o:Z

    const-string p0, "prediction_model_6(ALL Day) start"

    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    :cond_d5
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_6(ALL Day)"

    goto :goto_ef

    :cond_da
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop -NO Trained Data - for prediction_model_6(ALL Day) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/d;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ef
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    return-void
.end method

.method private l()V
    .registers 15

    sget v0, Lc/d;->w:I

    const/4 v1, 0x2

    if-gt v1, v0, :cond_110

    sget-boolean v0, Ld/b;->p:Z

    if-nez v0, :cond_10b

    sget-object v0, Ld/b;->q:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v0

    sget-object v2, Lc/d;->l:Lc/a;

    invoke-virtual {v2}, Lc/a;->g()[I

    move-result-object v2

    invoke-static {}, La/j;->g()I

    move-result v3

    const/16 v4, 0x18

    rem-int/2addr v3, v4

    invoke-direct {p0, v1, v3}, Ld/b;->a(II)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_29

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "No matched TT time - prediction_model_7(D Day)"

    goto/16 :goto_125

    :cond_29
    div-int/lit8 v1, p0, 0x64

    const/4 v5, 0x0

    if-lez v1, :cond_61

    add-int/lit8 p0, p0, -0x64

    move v1, v3

    move v6, v5

    :goto_32
    if-ge v1, v4, :cond_3a

    aget v7, v2, v1

    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3a
    :goto_3a
    if-ge v5, p0, :cond_48

    sget-object v1, Lc/d;->l:Lc/a;

    invoke-virtual {v1}, Lc/a;->h()[I

    move-result-object v1

    aget v1, v1, v5

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_48
    sget-object v1, Lc/d;->t:[I

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t_time D-N ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_61
    move v1, v3

    :goto_62
    if-ge v1, p0, :cond_6a

    aget v4, v2, v1

    add-int/2addr v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_6a
    sget-object v1, Lc/d;->s:[I

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t_time D ::"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    :goto_83
    div-int/lit8 v6, v6, 0x64

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c_time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " t_time:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " total_usage:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " c_battLev:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " t_battLev:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v1, p0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v4, v0, v6

    aget v11, v1, p0

    sget-object v12, Lc/d;->u:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    if-ge v4, v11, :cond_128

    const-string v4, "Pre7-Deteced - Should be go the P.S mode"

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v1, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld/b;->i:Lb/d;

    const/16 v1, 0xa

    const-string v3, "Pre7"

    const-string v4, "ver01"

    invoke-virtual {v0, v3, v4, v1, p0}, Lb/d;->m(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Ld/b;->p:Z

    const-string p0, "prediction_model_7(D Day) start"

    invoke-static {v2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_128

    :cond_10b
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Already predicted^^ - prediction_model_7(D Day)"

    goto :goto_125

    :cond_110
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop -NO Trained Data - for prediction_model_7(D Day) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lc/d;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_125
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_128
    :goto_128
    return-void
.end method

.method private n(I)V
    .registers 2

    packed-switch p1, :pswitch_data_20

    goto :goto_1f

    :pswitch_4
    invoke-direct {p0}, Ld/b;->l()V

    goto :goto_1f

    :pswitch_8
    invoke-direct {p0}, Ld/b;->k()V

    goto :goto_1f

    :pswitch_c
    invoke-direct {p0}, Ld/b;->j()V

    goto :goto_1f

    :pswitch_10
    invoke-direct {p0}, Ld/b;->i()V

    goto :goto_1f

    :pswitch_14
    invoke-direct {p0}, Ld/b;->h()V

    goto :goto_1f

    :pswitch_18
    invoke-direct {p0}, Ld/b;->g()V

    goto :goto_1f

    :pswitch_1c
    invoke-direct {p0}, Ld/b;->f()V

    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public b(II)I
    .registers 6

    if-nez p1, :cond_9

    sget-object p0, Lc/d;->p:[I

    sget-object p1, Ld/b;->e:Ljava/lang/String;

    const-string v0, "cal_t_time from ALL-Day buffer in charging_H"

    goto :goto_f

    :cond_9
    sget-object p0, Lc/d;->q:[I

    sget-object p1, Ld/b;->e:Ljava/lang/String;

    const-string v0, "cal_t_time from D-Day buffer in charging_H"

    :goto_f
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p2

    :goto_13
    const/16 v0, 0x18

    const/16 v1, 0x3c

    const/4 v2, -0x1

    if-ge p1, v0, :cond_23

    aget v0, p0, p1

    if-le v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_25

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_23
    move p1, v2

    move v0, p1

    :goto_25
    if-ne v0, v2, :cond_33

    const/4 v0, 0x0

    :goto_28
    if-ge v0, p2, :cond_33

    aget v2, p0, v0

    if-le v2, v1, :cond_30

    move p1, v0

    goto :goto_33

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_33
    :goto_33
    return p1
.end method

.method public c()V
    .registers 2

    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "Clear all status value"

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Ld/b;->j:Z

    sput-boolean p0, Ld/b;->k:Z

    sput-boolean p0, Ld/b;->l:Z

    sput-boolean p0, Ld/b;->m:Z

    sput-boolean p0, Ld/b;->n:Z

    sput-boolean p0, Ld/b;->o:Z

    sput-boolean p0, Ld/b;->p:Z

    return-void
.end method

.method public e()I
    .registers 2

    sget-boolean p0, Ld/b;->j:Z

    if-nez p0, :cond_26

    sget-boolean p0, Ld/b;->k:Z

    if-nez p0, :cond_26

    sget-boolean p0, Ld/b;->l:Z

    if-nez p0, :cond_26

    sget-boolean p0, Ld/b;->m:Z

    if-nez p0, :cond_26

    sget-boolean p0, Ld/b;->n:Z

    if-nez p0, :cond_26

    sget-boolean p0, Ld/b;->o:Z

    if-nez p0, :cond_26

    sget-boolean p0, Ld/b;->p:Z

    if-eqz p0, :cond_1d

    goto :goto_26

    :cond_1d
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "get prev status : false"

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_26
    :goto_26
    sget-object p0, Ld/b;->e:Ljava/lang/String;

    const-string v0, "get prev status : true"

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ld/b;->i:Lb/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/d;->p(Z)V

    return v0
.end method

.method public m()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Ld/b;->i:Lb/d;

    invoke-virtual {v0}, Lb/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Ld/b;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run predictor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ld/b;->n(I)V

    goto :goto_f

    :cond_39
    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method
