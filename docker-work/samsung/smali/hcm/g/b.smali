.class public Lg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static final b:J = 0xea60L

.field private static final c:I = 0x1

.field private static d:Landroid/os/Handler; = null

.field private static e:Landroid/os/HandlerThread; = null

.field private static f:La/d; = null

.field private static g:Lg/c; = null

.field private static h:Lg/e; = null

.field private static i:La/f; = null

.field private static j:Lg/b; = null

.field private static k:Landroid/content/Context; = null

.field private static l:I = 0x0

.field private static m:Z = false

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, La/j;->i()I

    move-result v0

    sput v0, Lg/b;->n:I

    invoke-static {}, La/j;->i()I

    move-result v0

    sput v0, Lg/b;->o:I

    const/4 v0, -0x1

    sput v0, Lg/b;->p:I

    const/4 v0, 0x0

    sput v0, Lg/b;->q:I

    sput-boolean v0, Lg/b;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SmartChargeController Thread"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p0, Lg/b;->e:Landroid/os/HandlerThread;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object p0

    sput-object p0, Lg/b;->f:La/d;

    invoke-static {p1}, Lg/c;->h(Landroid/content/Context;)Lg/c;

    move-result-object p0

    sput-object p0, Lg/b;->g:Lg/c;

    invoke-static {p1}, Lg/e;->a(Landroid/content/Context;)Lg/e;

    move-result-object p0

    sput-object p0, Lg/b;->h:Lg/e;

    invoke-static {p1}, La/f;->e(Landroid/content/Context;)La/f;

    move-result-object p0

    sput-object p0, Lg/b;->i:La/f;

    sput-object p1, Lg/b;->k:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .registers 5

    invoke-static {}, La/j;->i()I

    move-result v0

    invoke-static {v0}, La/j;->h(I)I

    move-result v0

    invoke-static {v0}, Lg/c;->f(I)I

    move-result v1

    sget-object v2, Lg/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start_Judge_Smart_Charging current time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", persistent_hour: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-lt v1, v0, :cond_30

    invoke-static {v1}, Lg/b;->b(I)V

    :cond_30
    return-void
.end method

.method public static b(I)V
    .registers 3

    sget v0, Lg/b;->q:I

    const/4 v1, 0x1

    if-nez v0, :cond_c

    sget v0, Lg/b;->p:I

    if-ne v0, v1, :cond_c

    invoke-static {v1}, Lg/b;->k(Z)V

    :cond_c
    sget-object v0, Lg/b;->h:Lg/e;

    invoke-virtual {v0, v1, p0}, Lg/e;->b(II)V

    invoke-static {v1}, Lg/b;->n(Z)V

    sget-object p0, Lg/b;->a:Ljava/lang/String;

    const-string v0, "Start_Smart_Charging : "

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .registers 3

    invoke-static {}, La/j;->i()I

    move-result v0

    sget-object v1, Lg/b;->a:Ljava/lang/String;

    const-string v2, "Stop_Judge_Smart_Charging : "

    invoke-static {v1, v2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput v1, Lg/b;->q:I

    sget v1, Lg/b;->n:I

    sget v2, Lg/b;->o:I

    if-lt v1, v2, :cond_1b

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1b

    invoke-static {}, Lg/b;->d()V

    :cond_1b
    return-void
.end method

.method public static d()V
    .registers 3

    sget v0, Lg/b;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    invoke-static {v1}, Lg/b;->k(Z)V

    :cond_9
    invoke-static {}, Lg/b;->m()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lg/b;->h:Lg/e;

    invoke-virtual {v0, v1, v1}, Lg/e;->b(II)V

    invoke-static {v1}, Lg/b;->n(Z)V

    sget-object v0, Lg/b;->a:Ljava/lang/String;

    const-string v1, "Stop_Smart_Charging : "

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lg/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static k(Z)V
    .registers 4

    sget-object v0, Lg/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkScreenOnTimePeriod msg send: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_2c

    sput v0, Lg/b;->q:I

    sget-object p0, Lg/b;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    iput v0, p0, Landroid/os/Message;->what:I

    sget-object v0, Lg/b;->d:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_34

    :cond_2c
    sget-object p0, Lg/b;->d:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p0, 0x0

    sput p0, Lg/b;->q:I

    :goto_34
    return-void
.end method

.method public static declared-synchronized l(Landroid/content/Context;)Lg/b;
    .registers 3

    const-class v0, Lg/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lg/b;->j:Lg/b;

    if-nez v1, :cond_20

    new-instance v1, Lg/b;

    invoke-direct {v1, p0}, Lg/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lg/b;->j:Lg/b;

    sget-object p0, Lg/b;->e:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p0, Lg/a;

    sget-object v1, Lg/b;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lg/a;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lg/b;->d:Landroid/os/Handler;

    :cond_20
    sget-object p0, Lg/b;->j:Lg/b;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static m()Z
    .registers 1

    sget-boolean v0, Lg/b;->r:Z

    return v0
.end method

.method public static n(Z)V
    .registers 1

    sput-boolean p0, Lg/b;->r:Z

    return-void
.end method

.method public static o(I)V
    .registers 3

    invoke-static {}, La/j;->i()I

    move-result v0

    sput p0, Lg/b;->p:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    sput v0, Lg/b;->n:I

    invoke-static {}, Lg/b;->m()Z

    move-result p0

    if-eqz p0, :cond_23

    sget p0, Lg/b;->q:I

    if-nez p0, :cond_23

    invoke-static {v1}, Lg/b;->k(Z)V

    goto :goto_23

    :cond_19
    sput v0, Lg/b;->o:I

    sget p0, Lg/b;->q:I

    if-ne p0, v1, :cond_23

    const/4 p0, 0x0

    invoke-static {p0}, Lg/b;->k(Z)V

    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public e(II)V
    .registers 6

    sget-object v0, Lg/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartCharging - enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    invoke-virtual {p0, v0}, Lg/b;->i(Z)V

    sput p2, Lg/b;->l:I

    goto :goto_30

    :cond_27
    invoke-virtual {p0}, Lg/b;->g()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/b;->i(Z)V

    sput p1, Lg/b;->l:I

    :goto_30
    return-void
.end method

.method public f()V
    .registers 3

    sget-boolean p0, Lg/b;->m:Z

    if-eqz p0, :cond_27

    sget-object p0, Lg/b;->h:Lg/e;

    const/4 v0, 0x1

    sget v1, Lg/b;->l:I

    invoke-virtual {p0, v0, v1}, Lg/e;->b(II)V

    sget-object p0, Lg/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Test SmartCharging is started within ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lg/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] hour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_27
    sget-object p0, Lg/b;->a:Ljava/lang/String;

    const-string v0, "Test SmartCharging is not Enabled. Enable first..."

    :goto_2b
    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-virtual {p0}, Lg/b;->h()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lg/b;->h:Lg/e;

    const/4 v0, 0x0

    sget v1, Lg/b;->l:I

    invoke-virtual {p0, v0, v1}, Lg/e;->b(II)V

    sget-object p0, Lg/b;->a:Ljava/lang/String;

    const-string v0, "Test SmartCharging is stoped"

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public h()Z
    .registers 1

    sget-boolean p0, Lg/b;->m:Z

    return p0
.end method

.method public i(Z)V
    .registers 2

    sput-boolean p1, Lg/b;->m:Z

    return-void
.end method
