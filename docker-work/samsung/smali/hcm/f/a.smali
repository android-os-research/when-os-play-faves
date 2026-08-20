.class public Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:La/d;

.field private static c:Lf/a;

.field private static d:Lc/d;

.field private static e:La/f;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object p0

    sput-object p0, Lf/a;->b:La/d;

    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object p0

    sput-object p0, Lf/a;->d:Lc/d;

    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    move-result-object p0

    sput-object p0, Lf/a;->e:La/f;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lf/a;
    .registers 3

    const-class v0, Lf/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lf/a;->c:Lf/a;

    if-nez v1, :cond_e

    new-instance v1, Lf/a;

    invoke-direct {v1, p0}, Lf/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf/a;->c:Lf/a;

    :cond_e
    sget-object p0, Lf/a;->c:Lf/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(IIII)V
    .registers 7

    sget-object v0, Lf/a;->e:La/f;

    const-string v1, "QFEM"

    const-string v2, "ph"

    invoke-virtual {v0, v1, v2}, La/f;->f(Ljava/lang/String;Ljava/lang/String;)La/e;

    move-result-object v0

    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p0}, La/e;->b(Ljava/lang/String;I)V

    const-string p0, "CTIME"

    invoke-virtual {v0, p0, p1}, La/e;->b(Ljava/lang/String;I)V

    const-string p0, "ETIME"

    invoke-virtual {v0, p0, p2}, La/e;->b(Ljava/lang/String;I)V

    const-string p0, "DATE"

    invoke-virtual {v0, p0, p3}, La/e;->b(Ljava/lang/String;I)V

    invoke-virtual {v0}, La/e;->e()V

    return-void
.end method

.method public static c()V
    .registers 6

    sget-object v0, Lf/a;->a:Ljava/lang/String;

    const-string v1, "* Qfinder_evaluation_start: start"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lf/a;->d:Lc/d;

    invoke-virtual {v1}, Lc/d;->c()I

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Lf/a;->d:Lc/d;

    invoke-virtual {v1}, Lc/d;->B()V

    :cond_14
    sget-object v1, Lf/a;->d:Lc/d;

    invoke-virtual {v1}, Lc/d;->z()[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the date : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lf/a;->d:Lc/d;

    invoke-virtual {v3}, Lc/d;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "best all idx : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lf/a;->d:Lc/d;

    invoke-virtual {v3}, Lc/d;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "best the date idx : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lf/a;->d:Lc/d;

    invoke-virtual {v3}, Lc/d;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lf/a;->d:Lc/d;

    invoke-virtual {v0}, Lc/d;->a()I

    move-result v0

    sget-object v2, Lf/a;->d:Lc/d;

    invoke-virtual {v2}, Lc/d;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9d

    aget v4, v1, v0

    const/4 v5, 0x5

    if-eq v4, v3, :cond_84

    if-gt v4, v5, :cond_84

    if-nez v4, :cond_82

    const/4 v4, 0x1

    goto :goto_85

    :cond_82
    const/4 v4, 0x2

    goto :goto_85

    :cond_84
    const/4 v4, 0x0

    :goto_85
    if-eq v2, v3, :cond_94

    if-nez v4, :cond_94

    aget v1, v1, v2

    if-eq v1, v3, :cond_94

    if-gt v1, v5, :cond_94

    if-nez v1, :cond_93

    const/4 v4, 0x3

    goto :goto_94

    :cond_93
    const/4 v4, 0x4

    :cond_94
    :goto_94
    sget-object v1, Lf/a;->d:Lc/d;

    invoke-virtual {v1}, Lc/d;->c()I

    move-result v1

    invoke-static {v4, v2, v0, v1}, Lf/a;->b(IIII)V

    :cond_9d
    return-void
.end method
