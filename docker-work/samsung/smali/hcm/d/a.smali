.class public Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:La/d;

.field private static c:Ld/a;

.field private static d:Ld/c;

.field private static e:Ld/b;

.field private static f:Lc/d;


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

    sput-object p0, Ld/a;->b:La/d;

    invoke-static {p1}, Ld/c;->a(Landroid/content/Context;)Ld/c;

    move-result-object p0

    sput-object p0, Ld/a;->d:Ld/c;

    invoke-static {p1}, Ld/b;->d(Landroid/content/Context;)Ld/b;

    move-result-object p0

    sput-object p0, Ld/a;->e:Ld/b;

    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object p0

    sput-object p0, Ld/a;->f:Lc/d;

    return-void
.end method

.method public static a()V
    .registers 1

    sget-object v0, Ld/a;->e:Ld/b;

    invoke-virtual {v0}, Ld/b;->c()V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ld/a;
    .registers 3

    const-class v0, Ld/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ld/a;->c:Ld/a;

    if-nez v1, :cond_e

    new-instance v1, Ld/a;

    invoke-direct {v1, p0}, Ld/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld/a;->c:Ld/a;

    :cond_e
    sget-object p0, Ld/a;->c:Ld/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(II)V
    .registers 4

    sget-object v0, Ld/a;->f:Lc/d;

    invoke-virtual {v0}, Lc/d;->A()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    sget-object p0, Ld/a;->b:La/d;

    const-string p1, "DataMgr"

    const-string v0, "Model-training : start"

    invoke-virtual {p0, p1, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ld/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ld/a;->d(I)V

    const-string p1, "Model-training : finish"

    :goto_1c
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_20
    const/4 v0, 0x3

    if-eq p1, v0, :cond_56

    const/4 v0, 0x5

    if-ne p1, v0, :cond_27

    goto :goto_56

    :cond_27
    sget-object p1, Lc/d;->u:[I

    aget p1, p1, v1

    add-int/lit8 v0, p1, 0x46

    if-lt p0, v0, :cond_45

    add-int/lit8 p1, p1, 0x46

    sget-object p0, Ld/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model-inference : stop (Battery Level over. :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_45
    sget-object p0, Ld/a;->a:Ljava/lang/String;

    const-string p1, "Model-inference : start"

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ld/a;->d(I)V

    invoke-static {}, Ld/a;->e()V

    const-string p1, "Model-inference : finish"

    goto :goto_1c

    :cond_56
    :goto_56
    sget-object p0, Ld/a;->a:Ljava/lang/String;

    const-string p1, "Model-inference : stop (charing...)"

    goto :goto_1c

    :goto_5b
    return-void
.end method

.method public static d(I)V
    .registers 2

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_f

    :cond_6
    sget-object p0, Ld/a;->e:Ld/b;

    invoke-virtual {p0}, Ld/b;->m()V

    goto :goto_f

    :cond_c
    invoke-static {}, Ld/c;->d()V

    :goto_f
    return-void
.end method

.method public static e()V
    .registers 1

    sget-object v0, Ld/a;->e:Ld/b;

    invoke-virtual {v0}, Ld/b;->e()I

    return-void
.end method
