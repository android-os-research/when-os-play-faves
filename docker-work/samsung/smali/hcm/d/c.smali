.class public Ld/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Ld/c;

.field private static c:La/d;

.field private static d:Lc/d;


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

    sput-object p0, Ld/c;->c:La/d;

    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object p0

    sput-object p0, Ld/c;->d:Lc/d;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld/c;
    .registers 3

    const-class v0, Ld/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ld/c;->b:Ld/c;

    if-nez v1, :cond_e

    new-instance v1, Ld/c;

    invoke-direct {v1, p0}, Ld/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/c;->b:Ld/c;

    :cond_e
    sget-object p0, Ld/c;->b:Ld/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()V
    .registers 0

    return-void
.end method

.method public static c()V
    .registers 1

    sget-object v0, Ld/c;->d:Lc/d;

    invoke-virtual {v0}, Lc/d;->h()V

    return-void
.end method

.method public static d()V
    .registers 4

    invoke-static {}, La/j;->b()I

    move-result v0

    sget-object v1, Ld/c;->d:Lc/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/d;->K(I)V

    sget-object v1, Ld/c;->d:Lc/d;

    invoke-virtual {v1}, Lc/d;->F()V

    sget-object v1, Ld/c;->d:Lc/d;

    invoke-virtual {v1}, Lc/d;->D()V

    sget-object v1, Ld/c;->d:Lc/d;

    invoke-virtual {v1, v2, v2}, Lc/d;->G(II)V

    sget-object v1, Ld/c;->d:Lc/d;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lc/d;->G(II)V

    invoke-static {}, Ld/c;->c()V

    sget-object v0, Ld/c;->d:Lc/d;

    invoke-virtual {v0}, Lc/d;->q()V

    sget-object v0, Ld/c;->d:Lc/d;

    invoke-virtual {v0, v2}, Lc/d;->O(Z)V

    return-void
.end method
