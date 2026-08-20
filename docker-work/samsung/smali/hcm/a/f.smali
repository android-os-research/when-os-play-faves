.class public La/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static b:Landroid/content/Context;

.field private static c:La/f;

.field private static d:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, La/f;->a:Ljava/lang/String;

    const-string v0, "LogManager Start"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, La/f;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, La/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Landroid/os/SemHqmManager;
    .registers 1

    sget-object v0, La/f;->d:Landroid/os/SemHqmManager;

    return-object v0
.end method

.method static synthetic c(Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;
    .registers 1

    sput-object p0, La/f;->d:Landroid/os/SemHqmManager;

    return-object p0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    sget-object v0, La/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)La/f;
    .registers 3

    const-class v0, La/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/f;->c:La/f;

    if-nez v1, :cond_e

    new-instance v1, La/f;

    invoke-direct {v1, p0}, La/f;-><init>(Landroid/content/Context;)V

    sput-object v1, La/f;->c:La/f;

    :cond_e
    sget-object p0, La/f;->c:La/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;)La/e;
    .registers 3

    new-instance p0, La/e;

    invoke-direct {p0, p1, p2}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public g([II[III)V
    .registers 11

    new-instance p0, La/e;

    const-string v0, "CPTN"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DAY"

    invoke-virtual {p0, v0, p5}, La/e;->b(Ljava/lang/String;I)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "TOT"

    invoke-virtual {p0, v0, p5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x1

    if-lt p2, p5, :cond_fa

    if-ge p4, p5, :cond_1e

    goto/16 :goto_fa

    :cond_1e
    sub-int/2addr p2, p5

    aget v0, p1, p2

    sub-int/2addr p4, p5

    aget v1, p3, p4

    if-le v0, v1, :cond_34

    const-string v0, "CB01"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CT01"

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_35

    :cond_34
    move v0, p5

    :goto_35
    const/16 v1, 0xa

    const-string v2, "0"

    if-ltz p2, :cond_98

    const-string v3, "CB"

    const-string v4, "CT"

    if-ge v0, v1, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget v3, p1, p2

    rem-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    aget v1, p1, p2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_35

    :cond_98
    :goto_98
    if-ltz p4, :cond_f7

    const-string p1, "DB"

    const-string p2, "DT"

    if-ge p5, v1, :cond_be

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget v0, p3, p4

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    aget p1, p3, p4

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_98

    :cond_f7
    invoke-virtual {p0}, La/e;->e()V

    :cond_fa
    :goto_fa
    return-void
.end method

.method public h([III)V
    .registers 6

    new-instance p0, La/e;

    const-string p3, "SPTN"

    const-string v0, "ph"

    invoke-direct {p0, p3, v0}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_a
    if-ge p3, p2, :cond_3e

    const-string v0, "S"

    const/16 v1, 0xa

    if-ge p3, v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v1, p1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_3e
    invoke-virtual {p0}, La/e;->e()V

    return-void
.end method

.method public i(I[II[III)V
    .registers 10

    new-instance p0, La/e;

    const-string v0, "UPTN"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DAY"

    invoke-virtual {p0, v0, p6}, La/e;->b(Ljava/lang/String;I)V

    const-string p6, "AIMENU"

    invoke-virtual {p0, p6, p1}, La/e;->b(Ljava/lang/String;I)V

    const/4 p1, 0x0

    move p6, p1

    :goto_15
    const-string v0, "0"

    const/16 v1, 0xa

    if-ge p6, p3, :cond_49

    const-string v2, "W"

    if-ge p6, v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v1, p2, p6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_15

    :cond_49
    :goto_49
    if-ge p1, p5, :cond_79

    const-string p2, "U"

    if-ge p1, v1, :cond_5e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aget p3, p4, p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    :cond_79
    invoke-virtual {p0}, La/e;->e()V

    return-void
.end method

.method public j(IIIILjava/lang/String;I)V
    .registers 9

    new-instance p0, La/e;

    const-string v0, "PSMS"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ATIME"

    invoke-virtual {p0, v0, p1}, La/e;->b(Ljava/lang/String;I)V

    const-string p1, "AIMENU"

    invoke-virtual {p0, p1, p2}, La/e;->b(Ljava/lang/String;I)V

    const-string p1, "PSMV"

    invoke-virtual {p0, p1, p3}, La/e;->b(Ljava/lang/String;I)V

    const-string p1, "PSMT"

    invoke-virtual {p0, p1, p4}, La/e;->b(Ljava/lang/String;I)V

    const-string p1, "ACTION"

    invoke-virtual {p0, p1, p5}, La/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BATT"

    invoke-virtual {p0, p1, p6}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {p0}, La/e;->e()V

    return-void
.end method
