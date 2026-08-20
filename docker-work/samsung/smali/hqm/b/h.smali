.class public Lb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g;,
        Lb/f;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "h"

.field private static o:Lb/h; = null

.field private static p:Lb/n; = null

.field private static q:Lb/k; = null

.field private static r:Lb/c; = null

.field static final s:Ljava/lang/String; = "crash"

.field static final t:Ljava/lang/String; = "anr"

.field static final u:Ljava/lang/String; = "SYSTEM_TOMBSTONE"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:J

.field m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lb/h;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lb/h;->d:I

    const/4 v0, 0x3

    iput v0, p0, Lb/h;->e:I

    const/4 v0, 0x4

    iput v0, p0, Lb/h;->f:I

    const/4 v0, 0x5

    iput v0, p0, Lb/h;->g:I

    const/4 v0, 0x6

    iput v0, p0, Lb/h;->h:I

    const-string v0, "HQM"

    iput-object v0, p0, Lb/h;->i:Ljava/lang/String;

    const-string v0, "SHLD"

    iput-object v0, p0, Lb/h;->j:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lb/h;->k:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lb/h;->l:J

    new-instance v0, Lb/e;

    invoke-direct {v0, p0}, Lb/e;-><init>(Lb/h;)V

    iput-object v0, p0, Lb/h;->m:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lb/h;->a:Landroid/content/Context;

    invoke-static {p1}, Lb/n;->d(Landroid/content/Context;)Lb/n;

    move-result-object p1

    sput-object p1, Lb/h;->p:Lb/n;

    iget-object p1, p0, Lb/h;->a:Landroid/content/Context;

    invoke-static {p1}, Lb/k;->f(Landroid/content/Context;)Lb/k;

    move-result-object p1

    sput-object p1, Lb/h;->q:Lb/k;

    iget-object p1, p0, Lb/h;->a:Landroid/content/Context;

    invoke-static {p1}, Lb/c;->b(Landroid/content/Context;)Lb/c;

    move-result-object p1

    sput-object p1, Lb/h;->r:Lb/c;

    invoke-direct {p0}, Lb/h;->q()V

    new-instance p1, Lb/d;

    invoke-direct {p1, p0, p2}, Lb/d;-><init>(Lb/h;Landroid/os/Looper;)V

    iput-object p1, p0, Lb/h;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lb/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lb/h;Lb/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/h;->k(Lb/f;)V

    return-void
.end method

.method static synthetic c(Lb/h;Lb/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/h;->n(Lb/f;)V

    return-void
.end method

.method static synthetic d(Lb/h;Lb/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/h;->i(Lb/g;)V

    return-void
.end method

.method static synthetic e(Lb/h;)V
    .registers 1

    invoke-direct {p0}, Lb/h;->t()V

    return-void
.end method

.method static synthetic f(Lb/h;)V
    .registers 1

    invoke-direct {p0}, Lb/h;->m()V

    return-void
.end method

.method static synthetic g(Lb/h;)V
    .registers 1

    invoke-direct {p0}, Lb/h;->l()V

    return-void
.end method

.method static synthetic h(Lb/h;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private i(Lb/g;)V
    .registers 4

    sget-object p0, Lb/h;->p:Lb/n;

    iget v0, p1, Lb/g;->a:I

    iget-object v1, p1, Lb/g;->b:Ljava/lang/String;

    iget-object p1, p1, Lb/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lb/n;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j(Lb/f;)V
    .registers 5

    const-string v0, "sys.lwshld"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private k(Lb/f;)V
    .registers 4

    iget-object v0, p1, Lb/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "SHLD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Lb/h;->j(Lb/f;)V

    :goto_11
    return-void
.end method

.method private l()V
    .registers 1

    sget-object p0, Lb/h;->r:Lb/c;

    invoke-virtual {p0}, Lb/c;->a()V

    return-void
.end method

.method private m()V
    .registers 4

    sget-object v0, Lb/h;->q:Lb/k;

    invoke-virtual {v0}, Lb/k;->a()V

    iget-object v0, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private n(Lb/f;)V
    .registers 5

    iget v0, p1, Lb/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lb/f;->e:I

    sget-object v0, Lb/h;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResultFile  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lb/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lb/f;->d:Ljava/lang/String;

    invoke-static {v1}, La/s;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {p0, p1}, Lb/h;->r(Lb/f;)V

    goto :goto_58

    :cond_2a
    iget v1, p1, Lb/f;->e:I

    iget v2, p1, Lb/f;->f:I

    if-ge v1, v2, :cond_58

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check again  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lb/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_58
    :goto_58
    return-void
.end method

.method public static declared-synchronized o(Landroid/content/Context;Landroid/os/Looper;)Lb/h;
    .registers 4

    const-class v0, Lb/h;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/h;->o:Lb/h;

    if-nez v1, :cond_e

    new-instance v1, Lb/h;

    invoke-direct {v1, p0, p1}, Lb/h;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lb/h;->o:Lb/h;

    :cond_e
    sget-object p0, Lb/h;->o:Lb/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private q()V
    .registers 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lb/h;->n:Ljava/lang/String;

    const-string v1, "register intent ACTION_DROPBOX_ENTRY_ADDED"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/h;->m:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private r(Lb/f;)V
    .registers 7

    sget-object p0, Lb/h;->n:Ljava/lang/String;

    iget-object v0, p1, Lb/f;->d:Ljava/lang/String;

    invoke-static {p0, v0}, La/s;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBigDataLog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lb/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, La/i;

    iget-object v2, p1, Lb/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lb/f;->b:Ljava/lang/String;

    iget-object v4, p1, Lb/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, La/i;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, La/i;->d()V

    iget-object v0, p1, Lb/f;->d:Ljava/lang/String;

    invoke-static {v0}, La/s;->e(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lb/f;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .registers 1

    sget-object p0, Lb/h;->q:Lb/k;

    invoke-virtual {p0}, Lb/k;->h()V

    sget-object p0, Lb/h;->p:Lb/n;

    invoke-virtual {p0}, Lb/n;->h()V

    return-void
.end method


# virtual methods
.method public p(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lb/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lb/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lb/d;)V

    iget-object p1, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public s()V
    .registers 3

    iget-object v0, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .registers 10

    sget-object v0, Lb/h;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnalyze:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHLD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lb/f;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v2, "HQM"

    const-string v4, "ph"

    const-string v5, "/data/log/result_out.txt"

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lb/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILb/d;)V

    iget-object p1, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v1, 0x1

    iput v1, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    :goto_3c
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_57

    :cond_40
    const-string v0, "MEMI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p1, p0, Lb/h;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x5

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lb/h;->b:Landroid/os/Handler;

    const-wide/32 v0, 0x1b7740

    goto :goto_3c

    :cond_57
    :goto_57
    return-void
.end method
