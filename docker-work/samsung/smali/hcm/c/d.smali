.class public Lc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static D:I = 0x0

.field private static E:I = 0x0

.field private static F:I = 0x0

.field private static G:I = 0x0

.field private static H:I = 0x0

.field private static I:I = 0x0

.field private static J:[I = null

.field private static K:[I = null

.field private static L:[I = null

.field private static M:[I = null

.field private static N:[I = null

.field private static O:[[I = null

.field private static P:[I = null

.field private static Q:[I = null

.field private static R:[[I = null

.field private static S:Z = false

.field private static T:[I = null

.field private static U:[I = null

.field private static V:[I = null

.field private static W:I = 0x0

.field private static X:I = 0x0

.field private static Y:I = 0x0

.field private static Z:I = 0x0

.field private static a0:I = 0x0

.field private static b0:I = 0x0

.field private static c0:I = 0x0

.field private static final e:Ljava/lang/String; = "d"

.field private static f:Landroid/content/Context;

.field private static g:Lc/d;

.field private static h:Lc/e;

.field private static i:Lg/c;

.field private static j:Lg/b;

.field private static k:Ljava/util/ArrayList;

.field public static l:Lc/a;

.field public static m:Lc/a;

.field private static n:[I

.field private static o:[I

.field public static p:[I

.field public static q:[I

.field public static r:[I

.field public static s:[I

.field public static t:[I

.field public static u:[I

.field public static v:I

.field public static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# instance fields
.field private a:La/d;

.field private b:La/f;

.field private final c:I

.field private d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/d;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sput-object v1, Lc/d;->l:Lc/a;

    sput-object v1, Lc/d;->m:Lc/a;

    const/16 v1, 0x18

    new-array v2, v1, [I

    sput-object v2, Lc/d;->n:[I

    new-array v2, v1, [I

    sput-object v2, Lc/d;->o:[I

    new-array v2, v1, [I

    sput-object v2, Lc/d;->p:[I

    new-array v2, v1, [I

    sput-object v2, Lc/d;->q:[I

    new-array v2, v1, [I

    sput-object v2, Lc/d;->r:[I

    new-array v2, v1, [I

    sput-object v2, Lc/d;->s:[I

    new-array v2, v1, [I

    sput-object v2, Lc/d;->t:[I

    const/16 v2, 0x8

    new-array v2, v2, [I

    sput-object v2, Lc/d;->u:[I

    const/4 v2, 0x0

    sput v2, Lc/d;->v:I

    sput v2, Lc/d;->w:I

    const/4 v3, -0x1

    sput v3, Lc/d;->x:I

    sput v3, Lc/d;->y:I

    sput v3, Lc/d;->z:I

    sput v3, Lc/d;->A:I

    sput v3, Lc/d;->B:I

    sput v3, Lc/d;->C:I

    sput v3, Lc/d;->D:I

    sput v3, Lc/d;->E:I

    sput v3, Lc/d;->F:I

    sput v2, Lc/d;->G:I

    sput v2, Lc/d;->H:I

    sput v2, Lc/d;->I:I

    const/16 v4, 0x19

    new-array v4, v4, [I

    sput-object v4, Lc/d;->J:[I

    const/16 v4, 0x14

    new-array v5, v4, [I

    sput-object v5, Lc/d;->K:[I

    new-array v4, v4, [I

    sput-object v4, Lc/d;->L:[I

    new-array v4, v1, [I

    sput-object v4, Lc/d;->M:[I

    new-array v4, v1, [I

    sput-object v4, Lc/d;->N:[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_b4

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    sput-object v5, Lc/d;->O:[[I

    new-array v5, v1, [I

    sput-object v5, Lc/d;->P:[I

    new-array v5, v1, [I

    sput-object v5, Lc/d;->Q:[I

    new-array v4, v4, [I

    fill-array-data v4, :array_bc

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lc/d;->R:[[I

    sput-boolean v2, Lc/d;->S:Z

    new-array v0, v1, [I

    sput-object v0, Lc/d;->T:[I

    new-array v0, v1, [I

    sput-object v0, Lc/d;->U:[I

    new-array v0, v1, [I

    sput-object v0, Lc/d;->V:[I

    sput v3, Lc/d;->W:I

    sput v3, Lc/d;->X:I

    sput v2, Lc/d;->Y:I

    sput v3, Lc/d;->Z:I

    invoke-static {}, La/j;->i()I

    move-result v0

    sput v0, Lc/d;->a0:I

    invoke-static {}, La/j;->i()I

    move-result v0

    sput v0, Lc/d;->b0:I

    const v0, 0x7fffffff

    sput v0, Lc/d;->c0:I

    return-void

    nop

    :array_b4
    .array-data 4
        0x18
        0x12c
    .end array-data

    :array_bc
    .array-data 4
        0x18
        0x12c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d;->a:La/d;

    iput-object v0, p0, Lc/d;->b:La/f;

    const/16 v0, 0x14

    iput v0, p0, Lc/d;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d;->d:Ljava/util/HashMap;

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    const-string v1, "DataManager Start"

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lc/d;->f:Landroid/content/Context;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object v0

    iput-object v0, p0, Lc/d;->a:La/d;

    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    move-result-object v0

    iput-object v0, p0, Lc/d;->b:La/f;

    invoke-static {p1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    move-result-object p0

    sput-object p0, Lc/d;->h:Lc/e;

    invoke-static {p1}, Lg/c;->h(Landroid/content/Context;)Lg/c;

    move-result-object p0

    sput-object p0, Lc/d;->i:Lg/c;

    invoke-static {p1}, Lg/b;->l(Landroid/content/Context;)Lg/b;

    move-result-object p0

    sput-object p0, Lc/d;->j:Lg/b;

    sget-object p0, Lc/d;->J:[I

    const/4 p1, -0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    sget-object p0, Lc/d;->u:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    new-instance p0, Lc/a;

    const-string v0, "DailyBattUsageSlot"

    invoke-direct {p0, v0}, Lc/a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lc/d;->m:Lc/a;

    new-instance p0, Lc/a;

    const-string v0, "AvgBattUsageSlot"

    invoke-direct {p0, v0}, Lc/a;-><init>(Ljava/lang/String;)V

    sput-object p0, Lc/d;->l:Lc/a;

    sget-object v0, Lc/d;->h:Lc/e;

    invoke-static {}, La/j;->m()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lc/e;->j(Lc/a;I)V

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->u()V

    sget-object p0, Lc/d;->h:Lc/e;

    sget-object v0, Lc/d;->p:[I

    array-length v1, v0

    const-string v2, "ECHGSLOT"

    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    move-result p0

    sput p0, Lc/d;->v:I

    sget-object p0, Lc/d;->h:Lc/e;

    sget-object v0, Lc/d;->r:[I

    array-length v1, v0

    const-string v2, "EBATTSLOT"

    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    move-result p0

    sput p0, Lc/d;->v:I

    sget-object p0, Lc/d;->h:Lc/e;

    sget-object v0, Lc/d;->q:[I

    array-length v1, v0

    const-string v2, "DCHGSLOT"

    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    move-result p0

    sput p0, Lc/d;->w:I

    sget-object p0, Lc/d;->h:Lc/e;

    sget-object v0, Lc/d;->s:[I

    array-length v1, v0

    const-string v2, "DBATTSLOT"

    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    move-result p0

    sput p0, Lc/d;->w:I

    sget-object p0, Lc/d;->h:Lc/e;

    sget-object v0, Lc/d;->t:[I

    array-length v1, v0

    const-string v2, "DNBATTSLOT"

    invoke-virtual {p0, v2, v0, v1}, Lc/e;->m(Ljava/lang/String;[II)I

    move-result p0

    sput p0, Lc/d;->w:I

    sget-object p0, Lc/d;->T:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    invoke-static {}, La/j;->a()I

    move-result p0

    sput p0, Lc/d;->c0:I

    return-void
.end method

.method public static H(III)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const-string v2, "] :"

    if-ge v0, p1, :cond_6c

    const-string v3, "]["

    const/4 v4, 0x1

    if-ne p2, v4, :cond_3a

    sget-object v4, Lc/d;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chg_his_buffer["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/d;->O:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lc/d;->O:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    goto :goto_68

    :cond_3a
    sget-object v4, Lc/d;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chg_his_buffer_N["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/d;->R:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lc/d;->R:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    :goto_68
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6c
    sget-object p2, Lc/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sum ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    div-int/2addr v1, p1

    return v1
.end method

.method public static Q(IIII)I
    .registers 7

    const/4 v0, 0x2

    if-ge p1, v0, :cond_4

    return p2

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v0, p1, :cond_1e

    const/4 v2, 0x1

    if-ne p3, v2, :cond_12

    sget-object v2, Lc/d;->O:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    goto :goto_18

    :cond_12
    sget-object v2, Lc/d;->R:[[I

    aget-object v2, v2, p0

    aget v2, v2, v0

    :goto_18
    sub-int/2addr v2, p2

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    int-to-double p2, v1

    int-to-double p0, p1

    div-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private i(I)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    sget-object p1, Lc/d;->o:[I

    array-length p1, p1

    if-ge p0, p1, :cond_2b

    sget-object p1, Lc/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Charging time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/d;->o:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2b
    return-void
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Lc/d;
    .registers 3

    const-class v0, Lc/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lc/d;->g:Lc/d;

    if-nez v1, :cond_e

    new-instance v1, Lc/d;

    invoke-direct {v1, p0}, Lc/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/d;->g:Lc/d;

    :cond_e
    sget-object p0, Lc/d;->g:Lc/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private y()I
    .registers 2

    invoke-static {}, La/j;->b()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    const/4 p0, 0x7

    goto :goto_a

    :cond_9
    sub-int/2addr p0, v0

    :goto_a
    return p0
.end method


# virtual methods
.method public A()Z
    .registers 1

    sget-boolean p0, Lc/d;->S:Z

    return p0
.end method

.method public B()V
    .registers 5

    invoke-static {}, La/j;->i()I

    move-result p0

    invoke-static {p0}, La/j;->c(I)I

    move-result p0

    invoke-static {}, La/j;->i()I

    move-result v0

    add-int/lit16 v0, v0, -0x5a0

    invoke-static {v0}, La/j;->c(I)I

    move-result v0

    sput v0, Lc/d;->Y:I

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load_Qfinder_Db- theDate :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/d;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget-object v1, Lc/d;->U:[I

    array-length v2, v1

    const-string v3, "QALLAVG"

    invoke-virtual {v0, v3, p0, v1, v2}, Lc/e;->l(Ljava/lang/String;I[II)I

    move-result p0

    sput p0, Lc/d;->W:I

    sget-object p0, Lc/d;->h:Lc/e;

    sget v0, Lc/d;->Y:I

    sget-object v1, Lc/d;->V:[I

    array-length v2, v1

    const-string v3, "QDDAYAVG"

    invoke-virtual {p0, v3, v0, v1, v2}, Lc/e;->l(Ljava/lang/String;I[II)I

    move-result p0

    sput p0, Lc/d;->X:I

    return-void
.end method

.method public C(III)V
    .registers 9

    invoke-static {}, La/j;->i()I

    move-result p0

    invoke-static {p0}, La/j;->c(I)I

    move-result p0

    invoke-static {}, Lg/c;->i()Ljava/util/ArrayList;

    :goto_b
    if-lez p3, :cond_6b

    invoke-static {p1}, La/j;->h(I)I

    move-result v0

    invoke-static {p1}, La/j;->c(I)I

    move-result v1

    invoke-static {p2}, La/j;->h(I)I

    move-result v2

    invoke-static {p2}, La/j;->c(I)I

    move-result v3

    if-ne v1, p0, :cond_27

    sget-object p0, Lc/d;->e:Ljava/lang/String;

    const-string p1, "This data is today\'s."

    :goto_23
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_27
    invoke-static {v1}, Lg/c;->g(I)Lg/d;

    move-result-object v4

    if-ne v0, v2, :cond_55

    if-ne v1, v3, :cond_55

    const/16 v1, 0x3c

    if-le p3, v1, :cond_47

    sget-object p0, Lc/d;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error delta > 60, deltaTime = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_47
    invoke-virtual {v4}, Lg/d;->a()[I

    move-result-object v1

    aget v2, v1, v0

    add-int/2addr v2, p3

    aput v2, v1, v0

    const/4 p3, 0x0

    invoke-virtual {v4, v1}, Lg/d;->c([I)V

    goto :goto_b

    :cond_55
    add-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v2, p1, 0x3c

    sub-int/2addr v1, v2

    sub-int p1, v1, p1

    sub-int/2addr p3, p1

    invoke-virtual {v4}, Lg/d;->a()[I

    move-result-object v2

    aget v3, v2, v0

    add-int/2addr v3, p1

    aput v3, v2, v0

    invoke-virtual {v4, v2}, Lg/d;->c([I)V

    move p1, v1

    goto :goto_b

    :cond_6b
    :goto_6b
    return-void
.end method

.method public D()V
    .registers 15

    invoke-static {}, La/j;->i()I

    move-result v6

    invoke-direct {p0}, Lc/d;->y()I

    move-result v13

    invoke-virtual {p0}, Lc/d;->e()V

    iget-object v7, p0, Lc/d;->b:La/f;

    sget-object p0, Lc/d;->f:Landroid/content/Context;

    invoke-static {p0}, La/i;->p(Landroid/content/Context;)La/i;

    invoke-static {}, La/i;->o()I

    move-result v8

    sget-object v9, Lc/d;->n:[I

    sget-object p0, Lc/d;->m:Lc/a;

    invoke-virtual {p0}, Lc/a;->q()[I

    move-result-object v11

    const/16 v10, 0x18

    const/16 v12, 0x18

    invoke-virtual/range {v7 .. v13}, La/f;->i(I[II[III)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->f()[I

    move-result-object v2

    const-string v1, "BATTAVG"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lc/e;->a(Ljava/lang/String;[IIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->g()[I

    move-result-object v2

    const-string v1, "BATTAVGBYDAY"

    invoke-virtual/range {v0 .. v5}, Lc/e;->a(Ljava/lang/String;[IIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->h()[I

    move-result-object v2

    const-string v1, "BATTAVGBYDAY_N"

    invoke-virtual/range {v0 .. v5}, Lc/e;->a(Ljava/lang/String;[IIII)V

    return-void
.end method

.method public E()V
    .registers 11

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    const-string v1, "makeDailyChargingPattern"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/j;->i()I

    move-result v0

    invoke-static {v0}, La/j;->c(I)I

    move-result v0

    sget-object v1, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    move v3, v2

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f;

    invoke-virtual {v4}, Lc/f;->h()I

    move-result v5

    invoke-static {v5}, La/j;->d(I)Ljava/lang/String;

    invoke-virtual {v4}, Lc/f;->f()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    move v3, v5

    goto :goto_17

    :cond_33
    invoke-virtual {v4}, Lc/f;->f()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_42

    invoke-virtual {v4}, Lc/f;->f()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_17

    :cond_42
    if-le v3, v5, :cond_4c

    sget-object v3, Lc/d;->e:Ljava/lang/String;

    const-string v4, "can\'t handle, reverse order."

    :goto_48
    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_4c
    if-nez v3, :cond_53

    sget-object v3, Lc/d;->e:Ljava/lang/String;

    const-string v4, "can\'t handle, CHARGING_FINISH twice in a row."

    goto :goto_48

    :cond_53
    invoke-static {v3}, La/j;->c(I)I

    move-result v6

    if-ne v6, v0, :cond_5a

    goto :goto_9b

    :cond_5a
    sub-int v6, v5, v3

    sget-object v7, Lc/d;->e:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makeChgSlotData, ev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lc/f;->f()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, La/j;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, La/j;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v5, v6}, Lc/d;->C(III)V

    goto/16 :goto_16

    :cond_9b
    :goto_9b
    invoke-static {}, Lg/c;->l()V

    invoke-static {}, Lg/c;->a()V

    sget-object p0, Lc/d;->i:Lg/c;

    invoke-virtual {p0}, Lg/c;->n()V

    invoke-static {}, Lg/c;->c()V

    sget-object p0, Lc/d;->e:Ljava/lang/String;

    const-string v0, "makeDailyChargingPattern - end"

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F()V
    .registers 13

    invoke-direct {p0}, Lc/d;->y()I

    move-result v5

    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    const/16 v3, 0x18

    if-ge v2, v3, :cond_17

    sget-object v3, Lc/d;->n:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v4, -0x1

    move v7, v1

    move v6, v4

    move v4, v7

    :goto_1d
    const-string v8, " / "

    if-lez v0, :cond_bb

    sget-object v9, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/f;

    invoke-virtual {v9}, Lc/f;->d()I

    move-result v10

    if-ne v10, v5, :cond_b4

    invoke-virtual {v9}, Lc/f;->f()I

    move-result v6

    const/4 v10, 0x3

    if-eq v6, v10, :cond_88

    invoke-virtual {v9}, Lc/f;->f()I

    move-result v6

    const/4 v10, 0x4

    if-eq v6, v10, :cond_88

    invoke-virtual {v9}, Lc/f;->f()I

    move-result v6

    const/4 v10, 0x5

    if-ne v6, v10, :cond_45

    goto :goto_88

    :cond_45
    invoke-virtual {v9}, Lc/f;->f()I

    move-result v6

    const/16 v8, 0x14

    if-ne v6, v2, :cond_67

    if-ge v4, v8, :cond_b2

    invoke-virtual {v9}, Lc/f;->h()I

    move-result v6

    invoke-static {v6}, La/j;->j(I)I

    move-result v6

    sget-object v8, Lc/d;->K:[I

    add-int/lit8 v10, v4, 0x1

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v9}, Lc/f;->a()I

    move-result v9

    add-int/2addr v6, v9

    aput v6, v8, v4

    move v6, v2

    move v4, v10

    goto :goto_b7

    :cond_67
    invoke-virtual {v9}, Lc/f;->f()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_b2

    if-ge v7, v8, :cond_b2

    invoke-virtual {v9}, Lc/f;->h()I

    move-result v6

    invoke-static {v6}, La/j;->j(I)I

    move-result v6

    sget-object v8, Lc/d;->L:[I

    add-int/lit8 v10, v7, 0x1

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v9}, Lc/f;->a()I

    move-result v9

    add-int/2addr v6, v9

    aput v6, v8, v7

    move v6, v2

    move v7, v10

    goto :goto_b7

    :cond_88
    :goto_88
    invoke-virtual {v9}, Lc/f;->h()I

    move-result v6

    invoke-static {v6}, La/j;->h(I)I

    move-result v9

    sget-object v10, Lc/d;->n:[I

    aget v11, v10, v9

    add-int/2addr v11, v2

    aput v11, v10, v9

    sget-object v10, Lc/d;->e:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, La/j;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    move v6, v2

    goto :goto_b7

    :cond_b4
    if-ne v6, v2, :cond_b7

    goto :goto_bb

    :cond_b7
    :goto_b7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1d

    :cond_bb
    :goto_bb
    if-ge v1, v3, :cond_e0

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active slot : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lc/d;->n:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_e0
    iget-object v0, p0, Lc/d;->b:La/f;

    sget-object v1, Lc/d;->K:[I

    sget-object v3, Lc/d;->L:[I

    move v2, v4

    move v4, v7

    invoke-virtual/range {v0 .. v5}, La/f;->g([II[III)V

    return-void
.end method

.method public G(II)V
    .registers 7

    const/16 v0, 0x18

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2}, Lc/d;->u(II)V

    sget p2, Lc/d;->z:I

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2b

    sget p2, Lc/d;->C:I

    if-ne p2, v3, :cond_15

    goto :goto_2b

    :cond_15
    invoke-virtual {p0, p1, v1}, Lc/d;->x(I[I)[I

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v2, v1}, Lc/d;->v(I[II)[I

    move-result-object v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_27

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v2}, Lc/d;->v(I[II)[I

    move-result-object v0

    :cond_27
    invoke-virtual {p0, p1, p2, v1, v0}, Lc/d;->T(I[I[I[I)V

    return-void

    :cond_2b
    :goto_2b
    sget-object p2, Lc/d;->e:Ljava/lang/String;

    const-string v3, "There is no Data to make table!!"

    invoke-static {p2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p1, :cond_38

    sput p2, Lc/d;->v:I

    goto :goto_3a

    :cond_38
    sput p2, Lc/d;->w:I

    :goto_3a
    invoke-virtual {p0, p1, v1, v2, v0}, Lc/d;->T(I[I[I[I)V

    return-void
.end method

.method public I(Ljava/io/PrintWriter;)V
    .registers 3

    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f;

    invoke-virtual {v0}, Lc/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public J(Ljava/io/PrintWriter;)V
    .registers 5

    sget-object p0, Lc/d;->h:Lc/e;

    invoke-static {}, La/j;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/e;->n(I)I

    move-result p0

    int-to-long v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB-size:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public K(I)V
    .registers 5

    sget-object p0, Lc/d;->e:Ljava/lang/String;

    const-string v0, "readPowerInfo"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lc/d;->h:Lc/e;

    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-static {}, La/j;->m()I

    move-result v1

    invoke-static {}, La/j;->a()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lc/e;->k(Ljava/util/ArrayList;III)V

    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/f;

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lc/f;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_37
    return-void
.end method

.method public declared-synchronized L(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget v0, Lc/d;->b0:I

    invoke-static {v0}, La/j;->h(I)I

    move-result v0

    if-ltz v0, :cond_23

    if-ltz p1, :cond_23

    if-ge v0, p1, :cond_23

    sub-int v1, p1, v0

    if-lez v1, :cond_23

    const/16 v2, 0x18

    if-gt v1, v2, :cond_23

    :goto_15
    if-ge v0, p1, :cond_23

    sget-object v1, Lc/d;->T:[I

    aget v2, v1, v0

    if-gez v2, :cond_20

    const/4 v2, 0x0

    aput v2, v1, v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public M(Lc/f;)V
    .registers 5

    iget-object p0, p0, Lc/d;->a:La/d;

    invoke-virtual {p1}, Lc/f;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataMgr"

    invoke-virtual {p0, v1, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lc/d;->h:Lc/e;

    invoke-static {}, La/j;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/e;->n(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_19

    return-void

    :cond_19
    const/16 v0, 0x2328

    const/4 v1, 0x0

    if-ge p0, v0, :cond_28

    sget-object p0, Lc/d;->h:Lc/e;

    invoke-static {}, La/j;->m()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lc/e;->b(Lc/f;III)V

    goto :goto_32

    :cond_28
    sget-object p0, Lc/d;->h:Lc/e;

    invoke-static {}, La/j;->m()I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lc/e;->b(Lc/f;III)V

    :goto_32
    return-void
.end method

.method public N(I)V
    .registers 5

    sget p0, Lc/d;->a0:I

    invoke-static {p0}, La/j;->h(I)I

    move-result p0

    invoke-static {p1}, La/j;->h(I)I

    sget p1, Lc/d;->a0:I

    rem-int/lit8 p1, p1, 0x3c

    rsub-int/lit8 p1, p1, 0x3c

    sget-object v0, Lc/d;->T:[I

    aget v1, v0, p0

    const/4 v2, 0x0

    if-gez v1, :cond_18

    aput v2, v0, p0

    :cond_18
    aget v1, v0, p0

    add-int/2addr v1, p1

    aput v1, v0, p0

    :goto_1d
    add-int/lit8 p0, p0, 0x1

    const/16 p1, 0x18

    if-ge p0, p1, :cond_32

    sget-object p1, Lc/d;->T:[I

    aget v0, p1, p0

    if-gez v0, :cond_2b

    aput v2, p1, p0

    :cond_2b
    aget v0, p1, p0

    add-int/lit8 v0, v0, 0x3c

    aput v0, p1, p0

    goto :goto_1d

    :cond_32
    return-void
.end method

.method public O(Z)V
    .registers 5

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataManager setNeedDailyPattern : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lc/d;->d()V

    :cond_1c
    sput-boolean p1, Lc/d;->S:Z

    return-void
.end method

.method public declared-synchronized P()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {}, La/j;->i()I

    move-result v0

    invoke-static {v0}, La/j;->c(I)I

    move-result v0

    sget-object v1, Lc/d;->g:Lc/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/d;->m(Z)V

    sget-object v1, Lc/d;->g:Lc/d;

    invoke-virtual {v1, v0}, Lc/d;->n(I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public R()V
    .registers 1

    return-void
.end method

.method public S(III[I[I)V
    .registers 14

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1a

    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "QALLAVG"

    move v2, p2

    move-object v3, p4

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p5

    const-string v1, "QALLSD"

    move-object v3, p5

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    goto :goto_44

    :cond_1a
    const/4 v1, 0x5

    if-ne p1, v1, :cond_34

    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "QNDAYAVG"

    move v2, p2

    move-object v3, p4

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p5

    const-string v1, "QNDDAYSD"

    move-object v3, p5

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    goto :goto_44

    :cond_34
    const/4 v1, 0x4

    if-ne p1, v1, :cond_44

    sget-object v0, Lc/d;->h:Lc/e;

    array-length v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "QDDAYAVG"

    move v2, p2

    move-object v3, p4

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->e(Ljava/lang/String;I[IIIII)V

    :cond_44
    :goto_44
    return-void
.end method

.method public T(I[I[I[I)V
    .registers 13

    invoke-static {}, La/j;->i()I

    move-result p0

    sget-object v0, Lc/d;->h:Lc/e;

    if-nez p1, :cond_20

    sget v2, Lc/d;->v:I

    array-length v4, p2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "ECHGSLOT"

    move-object v3, p2

    move v5, p0

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->v:I

    array-length v4, p3

    const-string v1, "EBATTSLOT"

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    goto :goto_42

    :cond_20
    sget v2, Lc/d;->w:I

    array-length v4, p2

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v1, "DCHGSLOT"

    move-object v3, p2

    move v5, p0

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->w:I

    array-length v4, p3

    const-string v1, "DBATTSLOT"

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget v2, Lc/d;->w:I

    array-length v4, p4

    const-string v1, "DNBATTSLOT"

    move-object v3, p4

    invoke-virtual/range {v0 .. v7}, Lc/e;->h(Ljava/lang/String;I[IIIII)V

    :goto_42
    return-void
.end method

.method public a()I
    .registers 1

    sget p0, Lc/d;->W:I

    return p0
.end method

.method public b()I
    .registers 1

    sget p0, Lc/d;->X:I

    return p0
.end method

.method public c()I
    .registers 1

    sget p0, Lc/d;->Y:I

    return p0
.end method

.method public d()V
    .registers 12

    invoke-static {}, La/j;->i()I

    move-result v0

    invoke-static {v0}, La/j;->c(I)I

    move-result v0

    sput v0, Lc/d;->Y:I

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update_Qfinder_ToDb- theDate :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/d;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/d;->h:Lc/e;

    sget v1, Lc/d;->Y:I

    sget-object v2, Lc/d;->U:[I

    array-length v3, v2

    const-string v4, "QALLAVG"

    invoke-virtual {v0, v4, v1, v2, v3}, Lc/e;->l(Ljava/lang/String;I[II)I

    move-result v0

    sput v0, Lc/d;->W:I

    sget-object v0, Lc/d;->h:Lc/e;

    sget v1, Lc/d;->Y:I

    sget-object v2, Lc/d;->V:[I

    array-length v3, v2

    const-string v4, "QNDAYAVG"

    invoke-virtual {v0, v4, v1, v2, v3}, Lc/e;->l(Ljava/lang/String;I[II)I

    move-result v7

    sput v7, Lc/d;->X:I

    const/4 v0, -0x1

    if-eq v7, v0, :cond_4e

    const/4 v6, 0x4

    sget v8, Lc/d;->Y:I

    sget-object v9, Lc/d;->V:[I

    sget-object v10, Lc/d;->U:[I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lc/d;->S(III[I[I)V

    :cond_4e
    return-void
.end method

.method public e()V
    .registers 4

    sget-object p0, Lc/d;->e:Ljava/lang/String;

    const-string v0, "buildingDailyTimeTable()"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "building Lastday batt Usage data"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/d;->m:Lc/a;

    sget-object v1, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lc/a;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    sget-object v1, Lc/d;->m:Lc/a;

    invoke-virtual {v1}, Lc/a;->t()V

    sget-object v1, Lc/d;->m:Lc/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc/a;->b(Ljava/util/ArrayList;I)V

    sget-object v0, Lc/d;->m:Lc/a;

    invoke-virtual {v0}, Lc/a;->v()V

    :cond_26
    const-string v0, "building average batt Usage data"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->t()V

    sget-object p0, Lc/d;->l:Lc/a;

    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lc/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->e()V

    sget-object p0, Lc/d;->l:Lc/a;

    invoke-virtual {p0}, Lc/a;->u()V

    return-void
.end method

.method public declared-synchronized f(II)V
    .registers 17

    move-object v7, p0

    monitor-enter p0

    :try_start_2
    new-instance v0, Lc/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/c;-><init>(Lc/d;Lc/b;)V

    new-instance v8, Lc/c;

    invoke-direct {v8, p0, v1}, Lc/c;-><init>(Lc/d;Lc/b;)V

    sget-object v2, Lc/d;->e:Ljava/lang/String;

    const-string v3, "calCpuRuntimeComputing list"

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v9, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/c;

    sget-object v10, Lc/d;->e:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lc/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    :goto_54
    if-ge v3, v4, :cond_79

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v3

    if-ltz v10, :cond_76

    invoke-static {v0}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    aget v11, v10, v3

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v12

    aget v12, v12, v3

    add-int/2addr v11, v12

    aput v11, v10, v3

    invoke-static {v0}, Lc/c;->b(Lc/c;)[I

    move-result-object v10

    aget v11, v10, v3

    add-int/2addr v11, v6

    aput v11, v10, v3

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_79
    invoke-static {v9}, Lc/c;->c(Lc/c;)I

    move-result v3

    move v10, p1

    if-ne v3, v10, :cond_1e

    :goto_80
    if-ge v5, v4, :cond_1e

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v3

    aget v3, v3, v5

    if-ltz v3, :cond_a2

    invoke-static {v8}, Lc/c;->a(Lc/c;)[I

    move-result-object v3

    aget v11, v3, v5

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v12

    aget v12, v12, v5

    add-int/2addr v11, v12

    aput v11, v3, v5

    invoke-static {v8}, Lc/c;->b(Lc/c;)[I

    move-result-object v3

    aget v11, v3, v5

    add-int/2addr v11, v6

    aput v11, v3, v5

    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_a5
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    const-string v3, "crDateAvgAll"

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "V: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/c;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/c;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "crDateAvgDow"

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "V: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lc/c;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lc/c;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7fffffff

    move v3, v2

    move v9, v5

    :goto_116
    if-ge v9, v4, :cond_171

    invoke-static {v0}, Lc/c;->b(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v9

    if-lez v10, :cond_135

    invoke-static {v0}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    invoke-static {v0}, Lc/c;->a(Lc/c;)[I

    move-result-object v11

    aget v11, v11, v9

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v0}, Lc/c;->b(Lc/c;)[I

    move-result-object v12

    aget v12, v12, v9

    div-int/2addr v11, v12

    aput v11, v10, v9

    :cond_135
    invoke-static {v0}, Lc/c;->b(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v9

    if-le v2, v10, :cond_143

    invoke-static {v0}, Lc/c;->b(Lc/c;)[I

    move-result-object v2

    aget v2, v2, v9

    :cond_143
    invoke-static {v8}, Lc/c;->b(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v9

    if-lez v10, :cond_160

    invoke-static {v8}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    invoke-static {v8}, Lc/c;->a(Lc/c;)[I

    move-result-object v11

    aget v11, v11, v9

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v8}, Lc/c;->b(Lc/c;)[I

    move-result-object v12

    aget v12, v12, v9

    div-int/2addr v11, v12

    aput v11, v10, v9

    :cond_160
    invoke-static {v8}, Lc/c;->b(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v9

    if-le v3, v10, :cond_16e

    invoke-static {v8}, Lc/c;->b(Lc/c;)[I

    move-result-object v3

    aget v3, v3, v9

    :cond_16e
    add-int/lit8 v9, v9, 0x1

    goto :goto_116

    :cond_171
    const/4 v9, 0x7

    if-lt v2, v9, :cond_176

    move v2, v6

    goto :goto_177

    :cond_176
    move v2, v5

    :goto_177
    const/4 v9, 0x4

    if-lt v3, v9, :cond_17b

    goto :goto_17c

    :cond_17b
    move v6, v5

    :goto_17c
    sget-object v3, Lc/d;->e:Ljava/lang/String;

    const-string v9, "print average"

    invoke-static {v3, v9}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "crDateAvgAll Avg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "crDateAvgDow Avg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lc/c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lc/c;

    invoke-direct {v3, p0, v1}, Lc/c;-><init>(Lc/d;Lc/b;)V

    if-eqz v2, :cond_23e

    iget-object v2, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/c;

    goto :goto_1c4

    :cond_1d9
    iget-object v2, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/c;

    move v10, v5

    :goto_1f8
    if-ge v10, v4, :cond_1e3

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v11

    aget v11, v11, v10

    if-ltz v11, :cond_21b

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v11

    aget v11, v11, v10

    mul-int/lit8 v11, v11, 0xa

    invoke-static {v0}, Lc/c;->a(Lc/c;)[I

    move-result-object v12

    aget v12, v12, v10

    sub-int/2addr v11, v12

    invoke-static {v3}, Lc/c;->a(Lc/c;)[I

    move-result-object v12

    aget v13, v12, v10

    mul-int/2addr v11, v11

    add-int/2addr v13, v11

    aput v13, v12, v10

    :cond_21b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f8

    :cond_21e
    move v2, v5

    :goto_21f
    if-ge v2, v4, :cond_23e

    invoke-static {v3}, Lc/c;->a(Lc/c;)[I

    move-result-object v9

    invoke-static {v3}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v2

    int-to-double v10, v10

    invoke-static {v0}, Lc/c;->b(Lc/c;)[I

    move-result-object v12

    aget v12, v12, v2

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    aput v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21f

    :cond_23e
    sget-object v2, Lc/d;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "crDateAllStd : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lc/c;

    invoke-direct {v9, p0, v1}, Lc/c;-><init>(Lc/d;Lc/b;)V

    if-eqz v6, :cond_2c3

    iget-object v1, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_269
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v6, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c;

    move v6, v5

    :goto_27e
    if-ge v6, v4, :cond_269

    invoke-static {v2}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v6

    if-ltz v10, :cond_2a1

    invoke-static {v2}, Lc/c;->a(Lc/c;)[I

    move-result-object v10

    aget v10, v10, v6

    mul-int/lit8 v10, v10, 0xa

    invoke-static {v8}, Lc/c;->a(Lc/c;)[I

    move-result-object v11

    aget v11, v11, v6

    sub-int/2addr v10, v11

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v11

    aget v12, v11, v6

    mul-int/2addr v10, v10

    add-int/2addr v12, v10

    aput v12, v11, v6

    :cond_2a1
    add-int/lit8 v6, v6, 0x1

    goto :goto_27e

    :cond_2a4
    :goto_2a4
    if-ge v5, v4, :cond_2c3

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v1

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v2

    aget v2, v2, v5

    int-to-double v10, v2

    invoke-static {v8}, Lc/c;->b(Lc/c;)[I

    move-result-object v2

    aget v2, v2, v5

    int-to-double v12, v2

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v2, v10

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a4

    :cond_2c3
    sget-object v1, Lc/d;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crDateDowStd : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lc/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lc/d;->g(Lc/c;Lc/c;)I

    move-result v4

    invoke-virtual {p0, v8, v9}, Lc/d;->g(Lc/c;Lc/c;)I

    move-result v10

    const/4 v2, 0x3

    invoke-static {v0}, Lc/c;->a(Lc/c;)[I

    move-result-object v5

    invoke-static {v3}, Lc/c;->a(Lc/c;)[I

    move-result-object v6

    move-object v1, p0

    move v3, v4

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lc/d;->S(III[I[I)V

    const/4 v2, 0x5

    invoke-static {v8}, Lc/c;->a(Lc/c;)[I

    move-result-object v5

    invoke-static {v9}, Lc/c;->a(Lc/c;)[I

    move-result-object v6

    move-object v1, p0

    move v3, v10

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lc/d;->S(III[I[I)V

    iget-object v0, v7, Lc/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_30a
    .catchall {:try_start_2 .. :try_end_30a} :catchall_30c

    monitor-exit p0

    return-void

    :catchall_30c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Lc/c;Lc/c;)I
    .registers 9

    monitor-enter p0

    const/16 v0, 0x3c

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    const/16 v4, 0x18

    if-ge v2, v4, :cond_43

    :try_start_a
    invoke-static {p1}, Lc/c;->a(Lc/c;)[I

    move-result-object v4

    aget v4, v4, v2

    if-gt v4, v0, :cond_40

    if-nez v2, :cond_1c

    invoke-static {p1}, Lc/c;->a(Lc/c;)[I

    move-result-object v0

    aget v0, v0, v2

    move v3, v1

    goto :goto_40

    :cond_1c
    invoke-static {p1}, Lc/c;->a(Lc/c;)[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v0, :cond_39

    invoke-static {p2}, Lc/c;->a(Lc/c;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-static {p2}, Lc/c;->a(Lc/c;)[I

    move-result-object v5

    aget v5, v5, v3

    if-ge v4, v5, :cond_40

    invoke-static {p1}, Lc/c;->a(Lc/c;)[I

    move-result-object v0

    aget v0, v0, v2

    goto :goto_3f

    :cond_39
    invoke-static {p1}, Lc/c;->a(Lc/c;)[I

    move-result-object v0

    aget v0, v0, v2

    :goto_3f
    move v3, v2

    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_43
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    const-string p2, "---print best --"

    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "crDateAvg best idx: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_a .. :try_end_5e} :catchall_60

    monitor-exit p0

    return v3

    :catchall_60
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h()V
    .registers 20

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    invoke-static {}, La/j;->b()I

    move-result v0

    sget-object v2, Lc/d;->e:Ljava/lang/String;

    const-string v3, "calCpuRuntimeStats - start"

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/j;->i()I

    move-result v3

    add-int/lit16 v3, v3, -0x5a0

    invoke-static {v3}, La/j;->c(I)I

    move-result v3

    invoke-static {}, La/j;->i()I

    move-result v4

    add-int/lit16 v4, v4, 0x5a0

    invoke-static {v4}, La/j;->c(I)I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-ne v0, v5, :cond_28

    move v5, v6

    goto :goto_2a

    :cond_28
    add-int/lit8 v5, v0, 0x1

    :goto_2a
    sget-object v7, Lc/d;->k:Ljava/util/ArrayList;

    if-nez v7, :cond_35

    const-string v0, "Debug calCpuRuntimeStats null"

    invoke-static {v2, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_1a7

    monitor-exit p0

    return-void

    :cond_35
    :try_start_35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "theNDate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", currentDow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", targetDow = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_77
    if-lez v0, :cond_197

    sget-object v10, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/f;

    invoke-virtual {v10}, Lc/f;->h()I

    move-result v11

    invoke-static {v11}, La/j;->h(I)I

    move-result v12

    invoke-static {v11}, La/j;->c(I)I

    move-result v13

    if-nez v7, :cond_92

    if-gt v13, v3, :cond_92

    move v7, v6

    :cond_92
    if-eqz v7, :cond_193

    invoke-virtual {v10}, Lc/f;->f()I

    move-result v14

    const/4 v15, 0x3

    const/4 v2, 0x0

    if-eq v14, v15, :cond_143

    invoke-virtual {v10}, Lc/f;->f()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_143

    invoke-virtual {v10}, Lc/f;->f()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_ac

    goto/16 :goto_143

    :cond_ac
    invoke-virtual {v10}, Lc/f;->f()I

    move-result v10

    const/16 v14, 0x9

    if-ne v10, v14, :cond_191

    move v10, v13

    :goto_b5
    if-gt v10, v8, :cond_191

    iget-object v14, v1, Lc/d;->d:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d0

    iget-object v14, v1, Lc/d;->d:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/c;

    goto :goto_e7

    :cond_d0
    new-instance v14, Lc/c;

    invoke-direct {v14, v1, v2}, Lc/c;-><init>(Lc/d;Lc/b;)V

    invoke-static {v11}, La/j;->f(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc/c;->f(Lc/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v14}, Lc/c;->e(Lc/c;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, La/j;->e(Ljava/lang/String;)I

    move-result v15

    invoke-static {v14, v15}, Lc/c;->d(Lc/c;I)I

    :goto_e7
    if-ne v10, v13, :cond_fb

    if-ne v10, v8, :cond_fb

    move v15, v12

    :goto_ec
    if-gt v15, v9, :cond_135

    invoke-static {v14}, Lc/c;->a(Lc/c;)[I

    move-result-object v16

    aget v17, v16, v15

    add-int/lit8 v17, v17, -0x1

    aput v17, v16, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_ec

    :cond_fb
    const/16 v15, 0x18

    if-ne v10, v13, :cond_10f

    move v2, v12

    :goto_100
    if-ge v2, v15, :cond_135

    invoke-static {v14}, Lc/c;->a(Lc/c;)[I

    move-result-object v17

    aget v18, v17, v2

    add-int/lit8 v18, v18, -0x1

    aput v18, v17, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_100

    :cond_10f
    if-ne v10, v8, :cond_121

    const/4 v2, 0x0

    :goto_112
    if-gt v2, v9, :cond_135

    invoke-static {v14}, Lc/c;->a(Lc/c;)[I

    move-result-object v15

    aget v17, v15, v2

    add-int/lit8 v17, v17, -0x1

    aput v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    :cond_121
    if-ge v13, v10, :cond_135

    if-ge v10, v8, :cond_135

    const/4 v2, 0x0

    :goto_126
    if-ge v2, v15, :cond_135

    invoke-static {v14}, Lc/c;->a(Lc/c;)[I

    move-result-object v17

    aget v18, v17, v2

    add-int/lit8 v18, v18, -0x1

    aput v18, v17, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    :cond_135
    iget-object v2, v1, Lc/d;->d:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto/16 :goto_b5

    :cond_143
    :goto_143
    iget-object v2, v1, Lc/d;->d:Ljava/util/HashMap;

    if-eqz v2, :cond_191

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    iget-object v2, v1, Lc/d;->d:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c;

    goto :goto_176

    :cond_15e
    new-instance v2, Lc/c;

    const/4 v8, 0x0

    invoke-direct {v2, v1, v8}, Lc/c;-><init>(Lc/d;Lc/b;)V

    invoke-static {v11}, La/j;->f(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lc/c;->f(Lc/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lc/c;->e(Lc/c;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, La/j;->e(Ljava/lang/String;)I

    move-result v8

    invoke-static {v2, v8}, Lc/c;->d(Lc/c;I)I

    :goto_176
    invoke-static {v2}, Lc/c;->a(Lc/c;)[I

    move-result-object v8

    aget v9, v8, v12

    add-int/2addr v9, v6

    aput v9, v8, v12

    const/4 v8, 0x6

    if-le v9, v8, :cond_188

    invoke-static {v2}, Lc/c;->a(Lc/c;)[I

    move-result-object v9

    aput v8, v9, v12

    :cond_188
    iget-object v8, v1, Lc/d;->d:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_191
    move v9, v12

    move v8, v13

    :cond_193
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_77

    :cond_197
    iget-object v0, v1, Lc/d;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_19e

    invoke-virtual {v1, v5, v4}, Lc/d;->f(II)V

    :cond_19e
    sget-object v0, Lc/d;->e:Ljava/lang/String;

    const-string v2, "Debug calCpuRuntimeStats - end"

    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a5
    .catchall {:try_start_35 .. :try_end_1a5} :catchall_1a7

    monitor-exit p0

    return-void

    :catchall_1a7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j(Lc/f;)V
    .registers 8

    invoke-virtual {p1}, Lc/f;->f()I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_26

    invoke-virtual {p1}, Lc/f;->a()I

    move-result p0

    sput p0, Lc/d;->x:I

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    sput p0, Lc/d;->A:I

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    sput p0, Lc/d;->H:I

    sput v1, Lc/d;->E:I

    sget p0, Lc/d;->z:I

    if-ne p0, v0, :cond_26

    sget p0, Lc/d;->A:I

    sput p0, Lc/d;->z:I

    :cond_26
    sget p0, Lc/d;->A:I

    if-eq p0, v0, :cond_de

    sget p0, Lc/d;->E:I

    if-ne p0, v1, :cond_de

    invoke-virtual {p1}, Lc/f;->f()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_de

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    sget v2, Lc/d;->H:I

    sub-int/2addr p0, v2

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge p0, v2, :cond_44

    sput v3, Lc/d;->E:I

    return-void

    :cond_44
    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    sput p0, Lc/d;->C:I

    sput v3, Lc/d;->E:I

    sget p0, Lc/d;->A:I

    rem-int/lit8 p0, p0, 0x18

    sget v2, Lc/d;->x:I

    if-eq v2, v0, :cond_c7

    sget-object v3, Lc/d;->M:[I

    aget v4, v3, p0

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_6a

    sget-object v5, Lc/d;->O:[[I

    aget-object v5, v5, p0

    aput v2, v5, v4

    aget v2, v3, p0

    add-int/2addr v2, v1

    aput v2, v3, p0

    goto :goto_81

    :cond_6a
    rem-int/2addr v4, v5

    aput v4, v3, p0

    sget-object v4, Lc/d;->N:[I

    aget v5, v4, p0

    add-int/2addr v5, v1

    aput v5, v4, p0

    sget-object v4, Lc/d;->O:[[I

    aget-object v4, v4, p0

    aget v5, v3, p0

    aput v2, v4, v5

    aget v2, v3, p0

    add-int/2addr v2, v1

    aput v2, v3, p0

    :goto_81
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charging slot - time s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lc/d;->H:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lc/d;->A:I

    rem-int/lit8 v4, v4, 0x18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] / time e "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lc/d;->C:I

    rem-int/lit8 p1, p1, 0x18

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] / batt:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lc/d;->x:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lc/d;->x:I

    :cond_c7
    sget p0, Lc/d;->A:I

    :goto_c9
    sget p1, Lc/d;->C:I

    if-gt p0, p1, :cond_d9

    sget-object p1, Lc/d;->o:[I

    rem-int/lit8 v0, p0, 0x18

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_c9

    :cond_d9
    sget p0, Lc/d;->G:I

    add-int/2addr p0, v1

    sput p0, Lc/d;->G:I

    :cond_de
    return-void
.end method

.method public k(Lc/f;)V
    .registers 8

    invoke-virtual {p1}, Lc/f;->f()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1d

    invoke-virtual {p1}, Lc/f;->a()I

    move-result p0

    sput p0, Lc/d;->y:I

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    sput p0, Lc/d;->B:I

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    sput p0, Lc/d;->I:I

    sput v0, Lc/d;->F:I

    :cond_1d
    sget p0, Lc/d;->B:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_bf

    sget p0, Lc/d;->F:I

    if-ne p0, v0, :cond_bf

    invoke-virtual {p1}, Lc/f;->f()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_bf

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    sget v2, Lc/d;->I:I

    sub-int/2addr p0, v2

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge p0, v2, :cond_3c

    sput v3, Lc/d;->F:I

    return-void

    :cond_3c
    invoke-virtual {p1}, Lc/f;->h()I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    sput p0, Lc/d;->D:I

    sput v3, Lc/d;->F:I

    sget p0, Lc/d;->B:I

    rem-int/lit8 p0, p0, 0x18

    sget v2, Lc/d;->y:I

    if-eq v2, v1, :cond_bf

    sget-object v3, Lc/d;->P:[I

    aget v4, v3, p0

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_62

    sget-object v5, Lc/d;->R:[[I

    aget-object v5, v5, p0

    aput v2, v5, v4

    aget v2, v3, p0

    add-int/2addr v2, v0

    aput v2, v3, p0

    goto :goto_79

    :cond_62
    rem-int/2addr v4, v5

    aput v4, v3, p0

    sget-object v4, Lc/d;->Q:[I

    aget v5, v4, p0

    add-int/2addr v5, v0

    aput v5, v4, p0

    sget-object v4, Lc/d;->R:[[I

    aget-object v4, v4, p0

    aget v5, v3, p0

    aput v2, v4, v5

    aget v2, v3, p0

    add-int/2addr v2, v0

    aput v2, v3, p0

    :goto_79
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "charging slot N - time s: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/d;->I:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lc/d;->B:I

    rem-int/lit8 v3, v3, 0x18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] / time e "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/f;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lc/d;->D:I

    rem-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] / batt:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lc/d;->y:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput v1, Lc/d;->y:I

    :cond_bf
    return-void
.end method

.method public l()V
    .registers 5

    sget-object p0, Lc/d;->h:Lc/e;

    invoke-virtual {p0}, Lc/e;->i()V

    invoke-static {}, La/j;->i()I

    move-result p0

    invoke-static {p0}, La/j;->c(I)I

    move-result p0

    sget-object v0, Lc/d;->h:Lc/e;

    sget-object v1, Lc/d;->T:[I

    array-length v2, v1

    const-string v3, "SCREEN"

    invoke-virtual {v0, v3, v1, v2, p0}, Lc/e;->t(Ljava/lang/String;[III)V

    return-void
.end method

.method public declared-synchronized m(Z)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-static {}, La/j;->i()I

    move-result v0

    div-int/lit16 v1, v0, 0x5a0

    sget-object v2, Lc/d;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkScreenTime screenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lc/d;->Z:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lc/d;->c0:I

    sub-int v4, v1, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x5a0

    if-ne v4, v5, :cond_a4

    sput v1, Lc/d;->c0:I

    const/16 v1, 0x18

    if-nez p1, :cond_4a

    invoke-virtual {p0, v0}, Lc/d;->N(I)V

    sget v3, Lc/d;->a0:I

    add-int/2addr v3, v7

    sput v3, Lc/d;->a0:I

    rem-int/lit16 v4, v3, 0x5a0

    sub-int/2addr v3, v4

    sput v3, Lc/d;->a0:I

    goto :goto_57

    :cond_4a
    invoke-virtual {p0, v1}, Lc/d;->L(I)V

    sget v3, Lc/d;->b0:I

    add-int/2addr v3, v7

    sput v3, Lc/d;->b0:I

    rem-int/lit16 v4, v3, 0x5a0

    sub-int/2addr v3, v4

    sput v3, Lc/d;->b0:I

    :goto_57
    invoke-direct {p0}, Lc/d;->y()I

    move-result v3

    invoke-static {}, La/j;->i()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v4}, La/j;->c(I)I

    move-result v4

    sget-object v8, Lc/d;->g:Lc/d;

    invoke-virtual {v8, v4}, Lc/d;->n(I)V

    const-string v4, "ScreenTime Day report"

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v6

    :goto_6f
    if-ge v2, v1, :cond_96

    sget-object v4, Lc/d;->e:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenSlot["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lc/d;->T:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_96
    iget-object v2, p0, Lc/d;->b:La/f;

    sget-object v4, Lc/d;->T:[I

    invoke-virtual {v2, v4, v1, v3}, La/f;->h([III)V

    sget-object v1, Lc/d;->T:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_a8

    :cond_a4
    if-eq v3, v1, :cond_a8

    sput v1, Lc/d;->c0:I

    :cond_a8
    :goto_a8
    if-eqz p1, :cond_b5

    sput v0, Lc/d;->a0:I

    invoke-static {v0}, La/j;->h(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc/d;->L(I)V

    goto/16 :goto_143

    :cond_b5
    sget p1, Lc/d;->a0:I

    if-le p1, v0, :cond_da

    sget-object p1, Lc/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/d;->a0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d6
    invoke-static {p1, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_143

    :cond_da
    sput v0, Lc/d;->b0:I

    sub-int v1, v0, p1

    if-ge v1, v7, :cond_12f

    invoke-static {p1}, La/j;->h(I)I

    move-result p1

    invoke-static {v0}, La/j;->h(I)I

    move-result v2

    if-ne p1, v2, :cond_f8

    sget-object v0, Lc/d;->T:[I

    aget v2, v0, p1

    if-gez v2, :cond_f2

    aput v6, v0, p1

    :cond_f2
    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    goto :goto_143

    :cond_f8
    sget v1, Lc/d;->a0:I

    rem-int/lit8 v1, v1, 0x3c

    rsub-int/lit8 v1, v1, 0x3c

    sget-object v3, Lc/d;->T:[I

    aget v4, v3, p1

    if-gez v4, :cond_106

    aput v6, v3, p1

    :cond_106
    aget v4, v3, p1

    add-int/2addr v4, v1

    aput v4, v3, p1

    add-int/2addr p1, v5

    :goto_10c
    if-ge p1, v2, :cond_11f

    sget-object v1, Lc/d;->T:[I

    aget v3, v1, p1

    if-gez v3, :cond_116

    aput v6, v1, p1

    :cond_116
    aget v3, v1, p1

    add-int/lit8 v3, v3, 0x3c

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10c

    :cond_11f
    rem-int/lit8 v0, v0, 0x3c

    sget-object p1, Lc/d;->T:[I

    aget v1, p1, v2

    if-gez v1, :cond_129

    aput v6, p1, v2

    :cond_129
    aget v1, p1, v2

    add-int/2addr v1, v0

    aput v1, p1, v2

    goto :goto_143

    :cond_12f
    sget-object p1, Lc/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle, deltaTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_142
    .catchall {:try_start_1 .. :try_end_142} :catchall_145

    goto :goto_d6

    :goto_143
    monitor-exit p0

    return-void

    :catchall_145
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized n(I)V
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-object v0, Lc/d;->h:Lc/e;

    const-string v1, "QFIND_"

    invoke-static {}, La/j;->m()I

    move-result v2

    const-string v3, "SCREEN"

    invoke-virtual {v0, v1, v2, v3}, Lc/e;->o(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_46

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    sget-object v2, Lc/d;->h:Lc/e;

    const-string v3, "SCREEN"

    invoke-static {}, La/j;->m()I

    move-result v4

    sget-object v5, Lc/d;->T:[I

    const/4 v7, 0x3

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lc/e;->f(Ljava/lang/String;I[III)V

    const/16 p1, 0x5a

    if-lt v0, p1, :cond_44

    sget-object p1, Lc/d;->h:Lc/e;

    const-string v0, "QFIND_"

    const-string v1, "SCREEN"

    invoke-static {}, La/j;->m()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lc/e;->w(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v6, v0

    sget-object v2, Lc/d;->h:Lc/e;

    const-string v3, "SCREEN"

    invoke-static {}, La/j;->m()I

    move-result v4

    sget-object v5, Lc/d;->T:[I

    const/4 v7, 0x2

    invoke-virtual/range {v2 .. v7}, Lc/e;->f(Ljava/lang/String;I[III)V
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_46

    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized o()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lc/d;->Z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v1}, Lc/d;->m(Z)V

    goto :goto_10

    :cond_a
    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/d;->m(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    :try_start_6
    sput v0, Lc/d;->Z:I

    invoke-static {v0}, Lg/b;->o(I)V

    invoke-virtual {p0, p1}, Lc/d;->m(Z)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public q()V
    .registers 2

    sget-object p0, Lc/d;->e:Ljava/lang/String;

    const-string v0, "clearPowerInfo"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public r(II)V
    .registers 3

    if-gez p1, :cond_e

    const/4 p0, 0x7

    if-ne p1, p0, :cond_6

    goto :goto_e

    :cond_6
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    const-string p1, "please select 1 ~ 7 value for option."

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_e
    :goto_e
    sget-object p0, Lc/d;->u:[I

    aput p2, p0, p1

    :goto_12
    return-void
.end method

.method public t(I)I
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_6

    add-int/2addr p1, p0

    return p1

    :cond_6
    return p0
.end method

.method public u(II)V
    .registers 9

    invoke-static {}, La/j;->b()I

    move-result v0

    invoke-static {}, La/j;->a()I

    move-result v1

    const/4 v2, -0x1

    sput v2, Lc/d;->x:I

    sput v2, Lc/d;->z:I

    sput v2, Lc/d;->A:I

    sput v2, Lc/d;->C:I

    sput v2, Lc/d;->E:I

    const/4 v3, 0x0

    sput v3, Lc/d;->G:I

    sput v2, Lc/d;->y:I

    sput v2, Lc/d;->B:I

    sput v2, Lc/d;->D:I

    sput v2, Lc/d;->F:I

    sget-object v2, Lc/d;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUMBL the date : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :goto_35
    sget-object v4, Lc/d;->M:[I

    array-length v5, v4

    if-ge v2, v5, :cond_4b

    aput v3, v4, v2

    sget-object v4, Lc/d;->N:[I

    aput v3, v4, v2

    sget-object v4, Lc/d;->P:[I

    aput v3, v4, v2

    sget-object v4, Lc/d;->Q:[I

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4b
    move v2, v3

    :goto_4c
    sget-object v4, Lc/d;->o:[I

    array-length v5, v4

    if-ge v2, v5, :cond_56

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_56
    const/4 v2, 0x1

    if-nez p1, :cond_79

    sget-object v0, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5f
    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/f;

    invoke-virtual {v3}, Lc/f;->h()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    div-int/lit8 v4, v4, 0x18

    if-ge v4, v1, :cond_5f

    invoke-virtual {p0, v3}, Lc/d;->j(Lc/f;)V

    goto :goto_5f

    :cond_79
    if-ne p1, v2, :cond_a1

    sget-object v3, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_81
    :goto_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f;

    invoke-virtual {v4}, Lc/f;->h()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    div-int/lit8 v5, v5, 0x18

    if-ge v5, v1, :cond_81

    invoke-virtual {v4}, Lc/f;->d()I

    move-result v5

    if-ne v5, v0, :cond_81

    invoke-virtual {p0, v4}, Lc/d;->j(Lc/f;)V

    goto :goto_81

    :cond_a1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f5

    invoke-virtual {p0, p2}, Lc/d;->t(I)I

    move-result v0

    sget-object v3, Lc/d;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To day: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " The Next day: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lc/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_cc
    :goto_cc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f;

    invoke-virtual {v4}, Lc/f;->h()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    div-int/lit8 v5, v5, 0x18

    if-ge v5, v1, :cond_cc

    invoke-virtual {v4}, Lc/f;->d()I

    move-result v5

    if-ne v5, p2, :cond_eb

    invoke-virtual {p0, v4}, Lc/d;->j(Lc/f;)V

    :cond_eb
    invoke-virtual {v4}, Lc/f;->d()I

    move-result v5

    if-ne v5, v0, :cond_cc

    invoke-virtual {p0, v4}, Lc/d;->k(Lc/f;)V

    goto :goto_cc

    :cond_f5
    sget v0, Lc/d;->G:I

    if-le v0, v2, :cond_fc

    invoke-direct {p0, v0}, Lc/d;->i(I)V

    :cond_fc
    sget-object p0, Lc/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "option : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(I[II)[I
    .registers 12

    sget-object p2, Lc/d;->M:[I

    sget-object v0, Lc/d;->N:[I

    const/4 v1, 0x1

    if-nez p1, :cond_a

    sget-object v2, Lc/d;->r:[I

    goto :goto_15

    :cond_a
    if-ne p3, v1, :cond_f

    sget-object v2, Lc/d;->s:[I

    goto :goto_15

    :cond_f
    sget-object v2, Lc/d;->t:[I

    sget-object p2, Lc/d;->P:[I

    sget-object v0, Lc/d;->Q:[I

    :goto_15
    const/4 v3, 0x0

    move v4, v3

    :goto_17
    array-length v5, v2

    if-ge v4, v5, :cond_1f

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1f
    :goto_1f
    array-length v4, v2

    if-ge v3, v4, :cond_80

    aget v4, p2, v3

    if-lez v4, :cond_30

    aget v5, v0, v3

    if-nez v5, :cond_2b

    goto :goto_2d

    :cond_2b
    const/16 v4, 0x12c

    :goto_2d
    invoke-virtual {p0, v3, v4, v2, p3}, Lc/d;->w(II[II)V

    :cond_30
    const-string v4, "] :"

    sget-object v5, Lc/d;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    if-nez p1, :cond_55

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battLev E portion["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lc/d;->r:[I

    aget v4, v4, v3

    :goto_4a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :cond_55
    if-ne p3, v1, :cond_6a

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battLev D portion["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lc/d;->s:[I

    aget v4, v4, v3

    goto :goto_4a

    :cond_6a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battLev D-N portion["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lc/d;->t:[I

    aget v4, v4, v3

    goto :goto_4a

    :goto_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_80
    return-object v2
.end method

.method public w(II[II)V
    .registers 8

    invoke-static {p1, p2, p4}, Lc/d;->H(III)I

    move-result p0

    sget-object v0, Lc/d;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mean ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p0, p4}, Lc/d;->Q(IIII)I

    move-result p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sd_t ["

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p0, p2, :cond_46

    sub-int/2addr p0, p2

    aput p0, p3, p1

    goto :goto_49

    :cond_46
    const/4 p0, 0x0

    aput p0, p3, p1

    :goto_49
    return-void
.end method

.method public x(I[I)[I
    .registers 9

    sget p0, Lc/d;->z:I

    rem-int/lit8 p2, p0, 0x18

    sget v0, Lc/d;->C:I

    rem-int/lit8 v1, v0, 0x18

    const/16 v2, 0x18

    rsub-int/lit8 v1, v1, 0x18

    if-nez p1, :cond_18

    add-int/2addr v0, v1

    sub-int/2addr v0, p0

    add-int/2addr v0, p2

    div-int/2addr v0, v2

    sget-object p0, Lc/d;->p:[I

    sput v0, Lc/d;->v:I

    move v3, v2

    goto :goto_2a

    :cond_18
    const/16 v3, 0xa8

    add-int/2addr v0, v1

    sub-int/2addr v0, p0

    add-int/2addr v0, p2

    int-to-float p0, v0

    int-to-float v0, v3

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget-object p0, Lc/d;->q:[I

    sput v0, Lc/d;->w:I

    :goto_2a
    sget-object v1, Lc/d;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t_cnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " denomi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chg_eTime:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lc/d;->C:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chg_fTime:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lc/d;->z:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-gt v0, v1, :cond_61

    move v0, v1

    move p2, v2

    :cond_61
    const/4 v1, 0x0

    move v2, v1

    :goto_63
    array-length v3, p0

    if-ge v2, v3, :cond_6b

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_6b
    :goto_6b
    array-length v2, p0

    if-ge v1, v2, :cond_c1

    const/high16 v2, 0x42c80000    # 100.0f

    sget-object v3, Lc/d;->o:[I

    if-ge v1, p2, :cond_7e

    aget v3, v3, v1

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, p0, v1

    goto :goto_89

    :cond_7e
    aget v3, v3, v1

    int-to-float v3, v3

    add-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    aput v2, p0, v1

    :goto_89
    const-string v2, "] :"

    const-string v3, "charging portion["

    sget-object v4, Lc/d;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    if-nez p1, :cond_a4

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/d;->p:[I

    aget v2, v2, v1

    goto :goto_b4

    :cond_a4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/d;->q:[I

    aget v2, v2, v1

    :goto_b4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_c1
    return-object p0
.end method

.method public z()[I
    .registers 6

    const/16 p0, 0x18

    new-array v0, p0, [I

    invoke-static {}, La/j;->i()I

    move-result v1

    add-int/lit16 v1, v1, -0x5a0

    invoke-static {v1}, La/j;->c(I)I

    move-result v1

    sget-object v2, Lc/d;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen info - targetDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lc/d;->h:Lc/e;

    const-string v3, "SCREEN"

    invoke-virtual {v2, v3, v0, p0, v1}, Lc/e;->t(Ljava/lang/String;[III)V

    return-object v0
.end method
