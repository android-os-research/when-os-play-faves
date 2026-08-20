.class public La/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/g;,
        La/h;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "i"

.field private static b:Landroid/content/Context; = null

.field private static c:La/i; = null

.field private static d:Z = false

.field private static e:La/f; = null

.field private static f:Lh/c; = null

.field private static volatile g:La/h; = null

.field private static volatile h:La/g; = null

.field private static i:La/d; = null

.field private static j:I = 0x0

.field private static k:I = 0x0

.field private static l:I = 0x0

.field private static m:Ljava/lang/String; = "None"

.field private static final n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x18894

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, La/i;->n:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, La/i;->b:Landroid/content/Context;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object p0

    sput-object p0, La/i;->i:La/d;

    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    move-result-object p0

    sput-object p0, La/i;->f:Lh/c;

    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    move-result-object p0

    sput-object p0, La/i;->e:La/f;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, La/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, La/i;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()I
    .registers 1

    sget v0, La/i;->j:I

    return v0
.end method

.method static synthetic d(I)I
    .registers 1

    sput p0, La/i;->j:I

    return p0
.end method

.method static synthetic e()I
    .registers 1

    sget v0, La/i;->k:I

    return v0
.end method

.method static synthetic f(I)I
    .registers 1

    sput p0, La/i;->k:I

    return p0
.end method

.method static synthetic g()Ljava/lang/String;
    .registers 1

    sget-object v0, La/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()I
    .registers 1

    sget v0, La/i;->l:I

    return v0
.end method

.method static synthetic i(I)I
    .registers 1

    sput p0, La/i;->l:I

    return p0
.end method

.method static synthetic j()Lh/c;
    .registers 1

    sget-object v0, La/i;->f:Lh/c;

    return-object v0
.end method

.method static synthetic k()La/d;
    .registers 1

    sget-object v0, La/i;->i:La/d;

    return-object v0
.end method

.method static synthetic l()Z
    .registers 1

    sget-boolean v0, La/i;->d:Z

    return v0
.end method

.method static synthetic m()La/f;
    .registers 1

    sget-object v0, La/i;->e:La/f;

    return-object v0
.end method

.method static synthetic n()Z
    .registers 1

    sget-boolean v0, La/i;->n:Z

    return v0
.end method

.method public static o()I
    .registers 1

    sget v0, La/i;->l:I

    return v0
.end method

.method public static declared-synchronized p(Landroid/content/Context;)La/i;
    .registers 3

    const-class v0, La/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/i;->c:La/i;

    if-nez v1, :cond_e

    new-instance v1, La/i;

    invoke-direct {v1, p0}, La/i;-><init>(Landroid/content/Context;)V

    sput-object v1, La/i;->c:La/i;

    :cond_e
    sget-object p0, La/i;->c:La/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static q()I
    .registers 1

    sget v0, La/i;->j:I

    return v0
.end method

.method public static s(Landroid/os/Handler;)V
    .registers 3

    sget-object v0, La/i;->g:La/h;

    if-nez v0, :cond_d

    new-instance v0, La/h;

    sget-object v1, La/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, La/h;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, La/i;->g:La/h;

    :cond_d
    sget-object v0, La/i;->h:La/g;

    if-nez v0, :cond_1a

    new-instance v0, La/g;

    sget-object v1, La/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, La/g;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, La/i;->h:La/g;

    :cond_1a
    return-void
.end method

.method public static t(Z)V
    .registers 1

    sput-boolean p0, La/i;->d:Z

    return-void
.end method


# virtual methods
.method public r()Z
    .registers 3

    sget-object p0, La/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSavingModeValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, La/i;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, La/i;->j:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public u(Ljava/lang/String;I)V
    .registers 3

    sput-object p1, La/i;->m:Ljava/lang/String;

    return-void
.end method
