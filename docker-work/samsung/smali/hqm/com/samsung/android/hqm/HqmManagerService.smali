.class public Lcom/samsung/android/hqm/HqmManagerService;
.super Landroid/os/ISemHqmManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hqm/c;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;

.field private static q:Landroid/content/Context;

.field private static r:Lcom/samsung/android/hqm/HqmManagerService;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/HandlerThread;

.field private c:La/f;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:J

.field private final n:J

.field o:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/hqm/HqmManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/ISemHqmManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->d:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->e:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->f:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->g:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->h:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->j:I

    iput v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->k:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->l:I

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->m:J

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->n:J

    new-instance v2, Lcom/samsung/android/hqm/b;

    invoke-direct {v2, p0}, Lcom/samsung/android/hqm/b;-><init>(Lcom/samsung/android/hqm/HqmManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v3, "Start"

    invoke-static {v2, v3}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->w()V

    sget-boolean p1, Ld/a;->i:Z

    const-string v3, "Hqm - Disable"

    if-eqz p1, :cond_75

    const-string p1, "Hqm - Enable"

    invoke-static {v2, p1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    invoke-static {p1}, La/f;->x(Landroid/content/Context;)La/f;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    invoke-virtual {p1}, La/f;->J()Z

    move-result p1

    if-eqz p1, :cond_75

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "Hqm Thread1"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/samsung/android/hqm/a;

    iget-object v0, p0, Lcom/samsung/android/hqm/HqmManagerService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/hqm/a;-><init>(Lcom/samsung/android/hqm/HqmManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->p()V

    goto :goto_84

    :cond_75
    invoke-static {v2, v3}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lc/k;->p:Z

    sget p0, Lc/b;->D:I

    sput p0, Lc/k;->F:I

    sput-boolean v1, Lc/k;->q:Z

    sput-boolean v1, Lc/k;->r:Z

    sput-boolean v1, Lc/k;->s:Z

    :goto_84
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/hqm/HqmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->u()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/hqm/HqmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->t()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/hqm/HqmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->r()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/hqm/HqmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->q()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->o(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/hqm/HqmManagerService;Lcom/samsung/android/hqm/c;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->s(Lcom/samsung/android/hqm/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->l(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic j(Lcom/samsung/android/hqm/HqmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/hqm/HqmManagerService;->v()V

    return-void
.end method

.method static synthetic k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private l(Landroid/content/Intent;)V
    .registers 11

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v1, "checkSecurityInfo"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "ro.boot.warranty_bit"

    const-string v3, "-1"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ro.crypto.state"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ro.crypto.type"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "O"

    const-string v6, "C"

    const/4 v7, 0x2

    if-ne p1, v7, :cond_2d

    move-object v7, v6

    goto :goto_34

    :cond_2d
    const/4 v7, -0x1

    if-ne p1, v7, :cond_33

    const-string v7, "S"

    goto :goto_34

    :cond_33
    move-object v7, v5

    :goto_34
    const-string v8, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v5, v6

    :goto_3e
    const/4 v6, 0x3

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lc/k;->P:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz p0, :cond_7a

    invoke-virtual {p0, p1}, La/f;->a0(Ljava/lang/String;)V

    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkSecurityInfo "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lc/k;->P:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m()Lcom/samsung/android/hqm/HqmManagerService;
    .registers 1

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->r:Lcom/samsung/android/hqm/HqmManagerService;

    return-object v0
.end method

.method private n(Ljava/io/PrintWriter;)V
    .registers 3

    const-string p0, "Hqm Basic Setting :"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  enable="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lc/k;->p:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  usingDVS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lc/k;->q:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  usingDQS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lc/k;->r:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  usingCFS="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lc/k;->s:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  DQA="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lc/k;->w:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Server="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lc/k;->F:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private o(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2a

    const-string v1, "NON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v2, "HQM disable"

    invoke-static {v1, v2}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lc/b;->D:I

    sput v1, Lc/k;->F:I

    :cond_21
    sput-object v0, Lc/k;->R:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v0}, La/f;->Z(Ljava/lang/String;)V

    :cond_2a
    if-eqz p1, :cond_33

    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz p0, :cond_33

    invoke-virtual {p0, p1}, La/f;->i(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private q()V
    .registers 3

    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v0, "ACTION_DQA_SEND_REQ"

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.dqagent"

    const-string v1, "com.samsung.android.dqagent.receiver.DQASendReceiver"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.dqagent.ACTION_DQA_SEND_REQ"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    if-eqz v0, :cond_28

    const-string v1, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private r()V
    .registers 7

    sget-boolean p0, Lc/k;->z:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.dqagent"

    const-string v2, "com.samsung.android.dqagent.receiver.DQASettingReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.dqagent.ACTION_DQA_SETTING_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v2, Lc/k;->F:I

    sget v3, Lc/b;->H:I

    const-string v4, "AUT"

    const-string v5, "PUT"

    if-ne v2, v3, :cond_30

    sget-boolean v2, Lc/k;->A:Z

    if-eqz v2, :cond_27

    if-eqz p0, :cond_27

    sget p0, Lc/b;->E:I

    sput p0, Lc/k;->F:I

    goto :goto_47

    :cond_27
    sget-boolean p0, Ld/d;->b:Z

    if-eqz p0, :cond_2d

    :goto_2b
    move-object v4, v5

    goto :goto_47

    :cond_2d
    const-string v4, "USR"

    goto :goto_47

    :cond_30
    sget v2, Lc/k;->F:I

    sget v3, Lc/b;->E:I

    if-ne v2, v3, :cond_45

    sget-boolean v2, Lc/k;->A:Z

    if-eqz v2, :cond_3d

    if-eqz p0, :cond_3d

    goto :goto_47

    :cond_3d
    sget-boolean p0, Ld/d;->b:Z

    if-eqz p0, :cond_42

    goto :goto_2b

    :cond_42
    const-string v4, "DEV"

    goto :goto_47

    :cond_45
    const-string v4, "NON"

    :goto_47
    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DQA_SETTING_INFO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lc/k;->G:Ljava/lang/String;

    const-string p0, "mode"

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    if-eqz p0, :cond_77

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_77
    return-void
.end method

.method private s(Lcom/samsung/android/hqm/c;)Z
    .registers 15

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v1, "sendHWParamToHQM - msg "

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-nez v2, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    iget v3, p1, Lcom/samsung/android/hqm/c;->a:I

    iget-object v4, p1, Lcom/samsung/android/hqm/c;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/hqm/c;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/hqm/c;->f:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/hqm/c;->d:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/hqm/c;->c:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/android/hqm/c;->g:Ljava/lang/String;

    iget-object v10, p1, Lcom/samsung/android/hqm/c;->h:Ljava/lang/String;

    iget-object v11, p1, Lcom/samsung/android/hqm/c;->i:Ljava/lang/String;

    iget-object v12, p1, Lcom/samsung/android/hqm/c;->j:Ljava/lang/String;

    invoke-virtual/range {v2 .. v12}, La/f;->T(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private t()V
    .registers 2

    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v0, "sendHWUpdateIntent()"

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private u()V
    .registers 2

    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v0, "sendHwStatusAckIntent()"

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.android.intent.action.HQM_HW_STATUS_ACK"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_15
    return-void
.end method

.method private v()V
    .registers 2

    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v0, "sendHwStatusRefreshReqIntent()"

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_15
    return-void
.end method

.method private w()V
    .registers 1

    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object p0

    invoke-virtual {p0}, Ld/a;->b()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    sget-object p1, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_37

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump HqmManagerService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_37
    sget-object p1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v0, "dump - start"

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_9d

    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_9d

    aget-object v0, p3, p1

    const-string v2, "HWParam"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move v0, p1

    move v4, v0

    move v5, v4

    :cond_56
    :goto_56
    add-int/2addr p1, v1

    :try_start_57
    array-length v6, p3

    if-lt p1, v6, :cond_78

    if-eqz v0, :cond_74

    if-eqz v4, :cond_67

    iget-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz p1, :cond_67

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, La/f;->h0(J)V

    :cond_67
    if-eqz v5, :cond_74

    iget-object p1, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz p1, :cond_71

    invoke-virtual {p1, p2, v1}, La/f;->I(Ljava/io/PrintWriter;Z)V

    goto :goto_74

    :cond_71
    invoke-direct {p0, p2}, Lcom/samsung/android/hqm/HqmManagerService;->n(Ljava/io/PrintWriter;)V
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_98

    :cond_74
    :goto_74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_78
    :try_start_78
    aget-object v6, p3, p1

    sget v7, Lc/k;->F:I

    sget v8, Lc/b;->F:I

    if-eq v7, v8, :cond_8c

    const-string v7, "trigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    or-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_56

    :cond_8c
    const-string v7, "-D"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_98

    if-eqz v6, :cond_56

    or-int/lit8 v0, v0, 0x1

    move v5, v1

    goto :goto_56

    :catchall_98
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_9d
    iget-object p3, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz p3, :cond_a5

    invoke-virtual {p3, p2, p1}, La/f;->I(Ljava/io/PrintWriter;Z)V

    goto :goto_a8

    :cond_a5
    invoke-direct {p0, p2}, Lcom/samsung/android/hqm/HqmManagerService;->n(Ljava/io/PrintWriter;)V

    :goto_a8
    return-void
.end method

.method public getCFServerEnable()Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->getHqmEnable()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-boolean p0, Lc/k;->s:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getDVServerEnable()Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hqm/HqmManagerService;->getHqmEnable()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-boolean p0, Lc/k;->q:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getHqmEnable()Z
    .registers 1

    sget-boolean p0, Ld/a;->i:Z

    if-eqz p0, :cond_a

    sget-boolean p0, Lc/k;->p:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method p()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->q:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->o:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    if-nez p6, :cond_6

    goto :goto_35

    :cond_6
    sget-boolean v1, Lc/k;->p:Z

    if-nez v1, :cond_12

    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v2, "HQM disable"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_12
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v2, "sendHWParamServer - start"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    iget-object v1, v1, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    const-string v8, ""

    const-string v11, ""

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, La/f;->T(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_35
    :goto_35
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v2, "unformatted data"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27

    move-object/from16 v0, p0

    sget-boolean v1, Lc/k;->p:Z

    const/4 v2, 0x0

    if-nez v1, :cond_f

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v1, "HQM disable"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendHWParamToHQM - start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-nez v1, :cond_36

    return v2

    :cond_36
    const/4 v1, 0x2

    move/from16 v3, p1

    if-ne v3, v1, :cond_3d

    move v6, v2

    goto :goto_3e

    :cond_3d
    move v6, v3

    :goto_3e
    new-instance v1, Lcom/samsung/android/hqm/c;

    const/16 v16, 0x0

    const-string v15, ""

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/hqm/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/a;)V

    iget-object v2, v0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25

    move-object v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget-boolean v1, Lc/k;->p:Z

    const/4 v2, 0x0

    if-nez v1, :cond_12

    sget-object v0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string v1, "HQM disable"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_12
    sget-object v1, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendHWParamToHQMWithAppID - start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_6f

    if-eqz v4, :cond_6f

    if-nez p10, :cond_37

    goto :goto_6f

    :cond_37
    iget-object v1, v0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    const/4 v1, 0x2

    move v5, p1

    if-ne v5, v1, :cond_41

    goto :goto_42

    :cond_41
    move v2, v5

    :goto_42
    new-instance v13, Lcom/samsung/android/hqm/c;

    const/4 v12, 0x0

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/hqm/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hqm/a;)V

    iget-object v1, v0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v13, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/hqm/HqmManagerService;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    return v0

    :cond_6f
    :goto_6f
    const-string v0, "unformatted data"

    invoke-static {v1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lc/k;->p:Z

    if-nez v0, :cond_c

    sget-object p0, Lcom/samsung/android/hqm/HqmManagerService;->p:Ljava/lang/String;

    const-string p1, "HQM disable"

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object p0, p0, Lcom/samsung/android/hqm/HqmManagerService;->c:La/f;

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1, p2, p3}, La/f;->V(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
