.class public Lcom/samsung/android/hcm/HcmManagerService;
.super Landroid/os/ISemHcmManager$Stub;
.source "SourceFile"


# static fields
.field private static A:Z = false

.field private static B:Z = false

.field private static C:Z = false

.field private static final D:I = 0x1

.field private static final o:Ljava/lang/String;

.field private static p:Landroid/content/Context;

.field private static q:Le/a;

.field private static r:Lh/h;

.field private static s:Lc/e;

.field private static t:Lc/d;

.field private static u:La/i;

.field private static v:Lb/d;

.field private static w:Lb/b;

.field private static x:Lg/c;

.field private static y:Lg/b;

.field private static z:La/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:J

.field private final l:J

.field private m:La/d;

.field n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/hcm/HcmManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->q:Le/a;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->s:Lc/e;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->u:La/i;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->v:Lb/d;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->w:Lb/b;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->x:Lg/c;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->y:Lg/b;

    sput-object v0, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->A:Z

    sput-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->B:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/ISemHcmManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    const/16 v1, 0x65

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->c:I

    const/16 v1, 0x12d

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->d:I

    const/16 v1, 0x12e

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->e:I

    const/16 v1, 0x1f5

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->f:I

    const/16 v1, 0x1f6

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->g:I

    const/16 v1, 0x259

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->h:I

    const/16 v1, 0x321

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->i:I

    const/16 v1, 0x322

    iput v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->j:I

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->k:J

    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->l:J

    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    new-instance v0, Lcom/samsung/android/hcm/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/hcm/b;-><init>(Lcom/samsung/android/hcm/HcmManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->n:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    return-void

    :cond_44
    sput-boolean v1, Lcom/samsung/android/hcm/HcmManagerService;->A:Z

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    const-string v2, "HCM Start"

    invoke-static {v0, v2}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Hcm Main Thread"

    invoke-direct {v2, v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    invoke-static {v1}, Lh/h;->m(Landroid/content/Context;)Lh/h;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    invoke-static {v1}, Lc/e;->r(Landroid/content/Context;)Lc/e;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->s:Lc/e;

    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    invoke-static {v1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    invoke-static {v1}, La/i;->p(Landroid/content/Context;)La/i;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->u:La/i;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1}, La/i;->s(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lb/d;->e(Landroid/content/Context;Landroid/os/Looper;)Lb/d;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->v:Lb/d;

    invoke-static {p1}, Lb/b;->a(Landroid/content/Context;)Lb/b;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->w:Lb/b;

    invoke-static {}, La/b;->b()La/b;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    invoke-static {p1}, Lg/c;->h(Landroid/content/Context;)Lg/c;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hcm/HcmManagerService;->x:Lg/c;

    invoke-static {p1}, Lg/b;->l(Landroid/content/Context;)Lg/b;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/hcm/HcmManagerService;->y:Lg/b;

    new-instance p1, Lcom/samsung/android/hcm/a;

    iget-object v1, p0, Lcom/samsung/android/hcm/HcmManagerService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/hcm/a;-><init>(Lcom/samsung/android/hcm/HcmManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/hcm/HcmManagerService;->i()V

    const-string p1, "HcmManagerService is created."

    invoke-static {v0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/hcm/HcmManagerService;->j()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Lc/d;
    .registers 1

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    return-object v0
.end method

.method static synthetic c()Lb/b;
    .registers 1

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->w:Lb/b;

    return-object v0
.end method

.method static synthetic d()Lg/b;
    .registers 1

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->y:Lg/b;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/android/hcm/HcmManagerService;)La/d;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/hcm/HcmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hcm/HcmManagerService;->j()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/hcm/HcmManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h()Lh/h;
    .registers 1

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    return-object v0
.end method

.method private i()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/hcm/HcmManagerService;->n:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized j()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    if-eqz v1, :cond_3b

    sget-boolean v0, Lcom/samsung/android/hcm/HcmManagerService;->B:Z

    if-nez v0, :cond_3b

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    const-string v1, "START SERVICE"

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    const-string v1, "MAIN"

    const-string v3, "START SERVICE"

    invoke-virtual {v0, v1, v3}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/samsung/android/hcm/HcmManagerService;->B:Z

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    invoke-virtual {v0}, Lh/h;->x()V

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v0}, Lc/d;->l()V

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->x:Lg/c;

    invoke-virtual {v0}, Lg/c;->b()V

    invoke-static {v2}, La/i;->t(Z)V

    sget-object v0, Lcom/samsung/android/hcm/HcmManagerService;->v:Lb/d;

    invoke-virtual {v0}, Lb/d;->n()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->p:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump HcmManagerService from from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " without permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    sget-boolean v3, Lcom/samsung/android/hcm/HcmManagerService;->A:Z

    if-nez v3, :cond_44

    const-string v0, "HCM is not enabled"

    goto :goto_39

    :cond_44
    sget-object v3, Lcom/samsung/android/hcm/HcmManagerService;->o:Ljava/lang/String;

    const-string v4, "dump - start"

    invoke-static {v3, v4}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Dump start"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_270

    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_270

    aget-object v4, v2, v3

    const-string v6, "TEST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_270

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :cond_74
    :goto_74
    add-int/2addr v3, v5

    :try_start_75
    array-length v4, v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_26b

    if-lt v3, v4, :cond_7c

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7c
    :try_start_7c
    aget-object v4, v2, v3

    const-string v8, "runestone"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x65

    iput v8, v4, Landroid/os/Message;->what:I

    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    :goto_92
    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_74

    :cond_96
    const-string v8, "db_size"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    sget-object v4, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v4, v1}, Lc/d;->J(Ljava/io/PrintWriter;)V

    goto :goto_74

    :cond_a4
    const-string v8, "db"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x12d

    iput v8, v4, Landroid/os/Message;->what:I

    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    goto :goto_92

    :cond_b9
    const-string v8, "wifi"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x1f5

    iput v8, v4, Landroid/os/Message;->what:I

    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    goto :goto_92

    :cond_ce
    const-string v8, "umbl"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_d4
    .catchall {:try_start_7c .. :try_end_d4} :catchall_26b

    const/4 v9, 0x4

    const-string v10, "0"

    if-eqz v8, :cond_108

    :try_start_d9
    array-length v4, v2

    if-ne v4, v9, :cond_e5

    add-int/lit8 v4, v3, 0x1

    aget-object v10, v2, v4

    add-int/lit8 v4, v3, 0x2

    aget-object v4, v2, v4

    goto :goto_e6

    :cond_e5
    move-object v4, v10

    :goto_e6
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x12e

    iput v9, v8, Landroid/os/Message;->what:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    :goto_103
    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_74

    :cond_108
    const-string v8, "psmode"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13b

    array-length v4, v2

    if-ne v4, v9, :cond_11c

    add-int/lit8 v4, v3, 0x1

    aget-object v10, v2, v4

    add-int/lit8 v4, v3, 0x2

    aget-object v4, v2, v4

    goto :goto_11d

    :cond_11c
    move-object v4, v10

    :goto_11d
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x259

    iput v9, v8, Landroid/os/Message;->what:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    goto :goto_103

    :cond_13b
    const-string v8, "printdb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14a

    sget-object v4, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v4, v1}, Lc/d;->I(Ljava/io/PrintWriter;)V

    goto/16 :goto_74

    :cond_14a
    const-string v8, "adddb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19e

    array-length v4, v2

    const/16 v8, 0xa

    if-ne v4, v8, :cond_74

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v4, v3, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v4, v3, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v4, v3, 0x4

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v4, v3, 0x5

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v4, v3, 0x6

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v4, v3, 0x7

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v4, v3, 0x8

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    sget-object v8, Lcom/samsung/android/hcm/HcmManagerService;->r:Lh/h;

    invoke-virtual/range {v8 .. v16}, Lh/h;->r(IIIIIIII)V

    goto/16 :goto_74

    :cond_19e
    const-string v8, "ftraining"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b0

    sget-object v4, Lcom/samsung/android/hcm/HcmManagerService;->t:Lc/d;

    invoke-virtual {v4, v5}, Lc/d;->O(Z)V

    invoke-static {}, Lh/h;->q()V

    goto/16 :goto_74

    :cond_1b0
    const-string v8, "time"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d2

    invoke-static {}, La/j;->g()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hour = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_74

    :cond_1d2
    const-string v8, "ipc"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_221

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x1f6

    iput v8, v4, Landroid/os/Message;->what:I

    array-length v8, v2
    :try_end_1e5
    .catchall {:try_start_d9 .. :try_end_1e5} :catchall_26b

    const-string v10, ""

    if-ne v8, v9, :cond_1f2

    add-int/lit8 v8, v3, 0x1

    :try_start_1eb
    aget-object v10, v2, v8

    add-int/lit8 v8, v3, 0x2

    aget-object v8, v2, v8

    goto :goto_1f3

    :cond_1f2
    move-object v8, v10

    :goto_1f3
    if-eqz v10, :cond_203

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_203

    if-eqz v8, :cond_203

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_207

    :cond_203
    const-string v10, "dm"

    const-string v8, "normal"

    :cond_207
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    goto/16 :goto_92

    :cond_221
    const-string v8, "smartchg"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_255

    array-length v4, v2

    if-ne v4, v9, :cond_235

    add-int/lit8 v4, v3, 0x1

    aget-object v10, v2, v4

    add-int/lit8 v4, v3, 0x2

    aget-object v4, v2, v4

    goto :goto_236

    :cond_235
    move-object v4, v10

    :goto_236
    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/16 v9, 0x321

    iput v9, v8, Landroid/os/Message;->what:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    goto/16 :goto_103

    :cond_255
    const-string v8, "smartchg_db"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x322

    iput v8, v4, Landroid/os/Message;->what:I

    iget-object v8, v0, Lcom/samsung/android/hcm/HcmManagerService;->a:Landroid/os/Handler;
    :try_end_269
    .catchall {:try_start_1eb .. :try_end_269} :catchall_26b

    goto/16 :goto_92

    :catchall_26b
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_270
    const-string v2, "Ver : 20210802-S1"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    if-eqz v2, :cond_293

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FuncLevel : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/hcm/HcmManagerService;->z:La/b;

    invoke-virtual {v4}, La/b;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_293
    sget-object v2, Lcom/samsung/android/hcm/HcmManagerService;->u:La/i;

    if-eqz v2, :cond_2c7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApmSwitch : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->o()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSM : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/i;->q()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c7
    const-string v2, "printHistoryLog"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/hcm/HcmManagerService;->m:La/d;

    if-eqz v0, :cond_2d3

    invoke-virtual {v0, v1, v3}, La/d;->c(Ljava/io/PrintWriter;Z)V

    :cond_2d3
    return-void
.end method

.method public getHcmEnable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
