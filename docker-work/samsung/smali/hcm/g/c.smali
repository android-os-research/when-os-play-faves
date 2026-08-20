.class public Lg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lg/c;

.field private static d:La/d;

.field private static e:La/f;

.field private static f:Lc/e;

.field private static g:[I

.field private static h:I

.field private static i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lg/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lg/c;->c:Lg/c;

    sput-object v0, Lg/c;->d:La/d;

    sput-object v0, Lg/c;->e:La/f;

    const/16 v0, 0x18

    new-array v0, v0, [I

    sput-object v0, Lg/c;->g:[I

    const/4 v0, 0x0

    sput v0, Lg/c;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lg/c;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lg/c;->b:Landroid/content/Context;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object p0

    sput-object p0, Lg/c;->d:La/d;

    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    move-result-object p0

    sput-object p0, Lg/c;->e:La/f;

    invoke-static {p1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    move-result-object p0

    sput-object p0, Lg/c;->f:Lc/e;

    return-void
.end method

.method public static a()V
    .registers 9

    sget-object v0, Lg/c;->a:Ljava/lang/String;

    const-string v1, "calAvgChargeInfo"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/c;->k()V

    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/d;

    invoke-virtual {v1}, Lg/d;->a()[I

    move-result-object v1

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_10

    sget-object v5, Lg/c;->g:[I

    aget v6, v5, v4

    aget v7, v1, v4

    const/16 v8, 0x37

    if-lt v7, v8, :cond_32

    const/4 v7, 0x1

    goto :goto_33

    :cond_32
    move v7, v3

    :goto_33
    add-int/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_39
    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lg/c;->h:I

    if-lez v0, :cond_54

    move v0, v3

    :goto_44
    if-ge v0, v2, :cond_54

    sget-object v1, Lg/c;->g:[I

    aget v4, v1, v0

    mul-int/lit8 v4, v4, 0x64

    sget v5, Lg/c;->h:I

    div-int/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_54
    sget-boolean v0, La/k;->b:Z

    if-eqz v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "smartChgPct size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lg/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6f
    if-ge v3, v2, :cond_80

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lg/c;->g:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_80
    sget-object v1, Lg/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    return-void
.end method

.method public static c()V
    .registers 1

    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static d()V
    .registers 0

    return-void
.end method

.method public static e()V
    .registers 0

    return-void
.end method

.method public static f(I)I
    .registers 6

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-lt p0, v0, :cond_a

    move p0, v1

    move v2, p0

    goto :goto_b

    :cond_a
    move v2, v1

    :cond_b
    :goto_b
    sget-object v3, Lg/c;->g:[I

    aget v3, v3, p0

    const/16 v4, 0x55

    if-lt v3, v4, :cond_1b

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p0, p0, 0x1

    if-lt p0, v0, :cond_b

    move p0, v1

    goto :goto_b

    :cond_1b
    return v2
.end method

.method public static g(I)Lg/d;
    .registers 4

    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/d;

    invoke-virtual {v1}, Lg/d;->b()I

    move-result v2

    if-ne v2, p0, :cond_6

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_26

    new-instance v1, Lg/d;

    invoke-direct {v1, p0}, Lg/d;-><init>(I)V

    sget-object p0, Lg/c;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    return-object v1
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lg/c;
    .registers 3

    const-class v0, Lg/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lg/c;->c:Lg/c;

    if-nez v1, :cond_e

    new-instance v1, Lg/c;

    invoke-direct {v1, p0}, Lg/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg/c;->c:Lg/c;

    :cond_e
    sget-object p0, Lg/c;->c:Lg/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static i()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static j()V
    .registers 0

    return-void
.end method

.method public static k()V
    .registers 2

    sget-object v0, Lg/c;->g:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public static l()V
    .registers 3

    sget-object v0, Lg/c;->a:Ljava/lang/String;

    const-string v1, "printSmartChargeInfolist"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lg/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/d;

    sget-object v2, Lg/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lg/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_23
    return-void
.end method

.method public static m()V
    .registers 2

    sget-object v0, Lg/c;->a:Ljava/lang/String;

    const-string v1, "start_smart_charging_training"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    invoke-static {}, La/j;->i()I

    move-result p0

    invoke-static {p0}, La/j;->c(I)I

    move-result p0

    sget-object v0, Lg/c;->f:Lc/e;

    sget-object v1, Lg/c;->g:[I

    const-string v2, "SMARTCHGPCT"

    invoke-virtual {v0, v2, v1, p0}, Lc/e;->u(Ljava/lang/String;[II)I

    move-result p0

    sput p0, Lg/c;->h:I

    sget-boolean p0, La/k;->b:Z

    if-eqz p0, :cond_4c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "smartChgPct size="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lg/c;->h:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    const/16 v1, 0x18

    if-ge v0, v1, :cond_43

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lg/c;->g:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_43
    sget-object v0, Lg/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public n()V
    .registers 7

    invoke-static {}, La/j;->i()I

    move-result p0

    invoke-static {p0}, La/j;->c(I)I

    move-result v5

    sget-object v0, Lg/c;->f:Lc/e;

    sget v2, Lg/c;->h:I

    sget-object v3, Lg/c;->g:[I

    const-string v1, "SMARTCHGPCT"

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lc/e;->g(Ljava/lang/String;I[III)V

    return-void
.end method
