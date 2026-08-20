.class public Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/g;
    }
.end annotation


# static fields
.field private static final A:I = 0xa

.field private static final B:I = 0x5a

.field private static final C:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field private static final D:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field private static final E:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field private static final F:Ljava/lang/String; = "android.intent.action.HCM_TEST"

.field private static G:I = -0x1

.field private static H:I = -0x1

.field private static final I:I = 0x0

.field private static final J:I = 0x1

.field private static final K:I = 0x2

.field private static final L:I = 0x9

.field private static final M:I = 0xa

.field private static final c:Ljava/lang/String; = "h"

.field private static d:Landroid/content/Context; = null

.field private static e:Lh/h; = null

.field private static f:Ld/a; = null

.field private static g:La/d; = null

.field private static h:Lh/a; = null

.field private static i:Lh/c; = null

.field private static j:Lb/d; = null

.field private static k:Lc/d; = null

.field private static l:Lg/b; = null

.field private static m:Landroid/os/Handler; = null

.field private static n:Landroid/os/HandlerThread; = null

.field private static o:Z = false

.field private static final p:I = 0xa

.field private static final q:I = 0x3

.field private static r:I = 0x0

.field private static final s:J = 0x3e8L

.field private static final t:J = 0xea60L

.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x2

.field private static final x:I = 0x3

.field private static final y:I = 0x4

.field private static final z:I = 0x5


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/f;

    invoke-direct {v0, p0}, Lh/f;-><init>(Lh/h;)V

    iput-object v0, p0, Lh/h;->b:Landroid/content/BroadcastReceiver;

    sget-object v0, Lh/h;->c:Ljava/lang/String;

    const-string v1, "SystemParameter Start"

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lh/h;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    move v3, v2

    :cond_22
    sput-boolean v3, Lh/h;->o:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemParameter mProvisioned : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lh/h;->o:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hcm System Thread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/h;->n:Landroid/os/HandlerThread;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object v0

    sput-object v0, Lh/h;->g:La/d;

    sget-object v0, Lh/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lh/h;->a:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lh/a;->c(Landroid/content/Context;)Lh/a;

    move-result-object p0

    sput-object p0, Lh/h;->h:Lh/a;

    invoke-static {p1}, Lh/c;->e(Landroid/content/Context;)Lh/c;

    move-result-object p0

    sput-object p0, Lh/h;->i:Lh/c;

    invoke-static {p1}, Ld/a;->b(Landroid/content/Context;)Ld/a;

    move-result-object p0

    sput-object p0, Lh/h;->f:Ld/a;

    invoke-static {p1}, Lb/d;->d(Landroid/content/Context;)Lb/d;

    move-result-object p0

    sput-object p0, Lh/h;->j:Lb/d;

    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object p0

    sput-object p0, Lh/h;->k:Lc/d;

    invoke-static {p1}, Lg/b;->l(Landroid/content/Context;)Lg/b;

    move-result-object p0

    sput-object p0, Lh/h;->l:Lg/b;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lh/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lh/g;)V
    .registers 1

    invoke-static {p0}, Lh/h;->l(Lh/g;)V

    return-void
.end method

.method static synthetic c(I)V
    .registers 1

    invoke-static {p0}, Lh/h;->k(I)V

    return-void
.end method

.method static synthetic d()V
    .registers 0

    invoke-static {}, Lh/h;->i()V

    return-void
.end method

.method static synthetic e(II)V
    .registers 2

    invoke-static {p0, p1}, Lh/h;->t(II)V

    return-void
.end method

.method static synthetic f()Lc/d;
    .registers 1

    sget-object v0, Lh/h;->k:Lc/d;

    return-object v0
.end method

.method static synthetic g()Z
    .registers 1

    invoke-static {}, Lh/h;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private static i()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh/h;->t(II)V

    sget-object v1, Lh/h;->m:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lh/h;->q()V

    return-void
.end method

.method private static k(I)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lh/h;->t(II)V

    return-void
.end method

.method private static l(Lh/g;)V
    .registers 4

    invoke-virtual {p0}, Lh/g;->b()I

    move-result v0

    sget v1, Lh/h;->r:I

    if-ne v0, v1, :cond_2f

    :try_start_8
    sget-object v0, Lh/h;->h:Lh/a;

    iget-object p0, p0, Lh/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lh/a;->b(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_47

    :catch_10
    move-exception p0

    sget-object v0, Lh/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :cond_2f
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lh/g;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not used for 1 min"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method public static declared-synchronized m(Landroid/content/Context;)Lh/h;
    .registers 3

    const-class v0, Lh/h;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lh/h;->e:Lh/h;

    if-nez v1, :cond_20

    new-instance v1, Lh/h;

    invoke-direct {v1, p0}, Lh/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lh/h;->e:Lh/h;

    sget-object p0, Lh/h;->n:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p0, Lh/e;

    sget-object v1, Lh/h;->n:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lh/e;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lh/h;->m:Landroid/os/Handler;

    :cond_20
    sget-object p0, Lh/h;->e:Lh/h;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private n(I)J
    .registers 6

    div-int/lit8 p0, p1, 0xa

    const-wide/32 v0, 0xea60

    sget-object p0, Lh/h;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "delay :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private o(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lh/h;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    array-length p1, p0

    if-lez p1, :cond_f

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method private static p()Z
    .registers 4

    sget-boolean v0, Lh/h;->o:Z

    if-nez v0, :cond_4d

    sget-object v0, Lh/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    sput-boolean v0, Lh/h;->o:Z

    sget-object v0, Lh/h;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceProvisioned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lh/h;->o:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lh/h;->o:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lh/h;->g:La/d;

    const-string v1, "MAIN"

    const-string v3, "Device Provisioned"

    invoke-virtual {v0, v1, v3}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lh/h;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4c
    return v2

    :cond_4d
    return v0
.end method

.method public static q()V
    .registers 2

    sget-object v0, Lh/h;->i:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v0

    sget-object v1, Lh/h;->i:Lh/c;

    invoke-virtual {v1}, Lh/c;->d()I

    move-result v1

    invoke-static {v0, v1}, Ld/a;->c(II)V

    return-void
.end method

.method private s()V
    .registers 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.HCM_TEST"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lh/h;->d:Landroid/content/Context;

    iget-object v1, p0, Lh/h;->b:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private static t(II)V
    .registers 12

    invoke-static {}, Lh/h;->p()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lh/h;->i:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v6

    invoke-static {}, La/j;->i()I

    move-result v4

    invoke-static {}, La/j;->b()I

    move-result v3

    const/4 v5, 0x0

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-nez p0, :cond_24

    sput v4, Lh/h;->G:I

    :cond_1f
    move p0, v2

    move v8, p0

    move v9, v8

    goto/16 :goto_96

    :cond_24
    if-ne p0, v1, :cond_2e

    sput v4, Lh/h;->G:I

    move p0, v2

    move v8, p0

    move v9, v8

    move v2, v1

    goto/16 :goto_96

    :cond_2e
    if-ne p0, v0, :cond_37

    sput v4, Lh/h;->G:I

    move p0, v2

    move v8, p0

    move v9, v8

    move v2, v0

    goto :goto_96

    :cond_37
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_63

    sget p0, Lh/h;->H:I

    sub-int v2, p0, v6

    sget p0, Lh/h;->G:I

    sub-int p0, v4, p0

    sget-object v7, Lh/h;->h:Lh/a;

    invoke-virtual {v7, v1}, Lh/a;->a(I)I

    move-result v1

    sput v4, Lh/h;->G:I

    if-eq p1, v0, :cond_53

    const/4 v0, 0x3

    if-eq p1, v0, :cond_53

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5e

    :cond_53
    sget-object v0, Lh/h;->j:Lb/d;

    invoke-virtual {v0, p1}, Lb/d;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Ld/a;->a()V

    :cond_5e
    move v8, p0

    move v9, v1

    :goto_60
    move p0, v2

    move v2, p1

    goto :goto_96

    :cond_63
    if-ne p0, v1, :cond_1f

    sget-object p0, Lh/h;->i:Lh/c;

    invoke-virtual {p0}, Lh/c;->b()Z

    move-result p0

    if-eqz p0, :cond_7f

    sget-object p0, Lh/h;->c:Ljava/lang/String;

    const-string v0, "EVENT_TYPE_STATUS_CHECKING with charging"

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh/h;->j:Lb/d;

    invoke-virtual {p0, p1}, Lb/d;->i(I)Z

    move-result p0

    if-eqz p0, :cond_7f

    invoke-static {}, Ld/a;->a()V

    :cond_7f
    sget-object p0, Lh/h;->i:Lh/c;

    invoke-virtual {p0}, Lh/c;->d()I

    move-result p1

    sget p0, Lh/h;->H:I

    sub-int v2, p0, v6

    sget p0, Lh/h;->G:I

    sub-int p0, v4, p0

    sget-object v0, Lh/h;->h:Lh/a;

    invoke-virtual {v0, v1}, Lh/a;->a(I)I

    move-result v0

    move v8, p0

    move v9, v0

    goto :goto_60

    :goto_96
    sput v6, Lh/h;->H:I

    new-instance p1, Lc/f;

    mul-int/lit8 v7, p0, 0x64

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lc/f;-><init>(IIIIIIII)V

    sget-object p0, Lh/h;->k:Lc/d;

    invoke-virtual {p0, p1}, Lc/d;->M(Lc/f;)V

    return-void
.end method

.method private static v(I)V
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    sget-object p0, Lh/h;->l:Lg/b;

    invoke-virtual {p0}, Lg/b;->f()V

    goto :goto_f

    :cond_9
    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    invoke-static {}, Lg/b;->d()V

    :cond_f
    :goto_f
    return-void
.end method

.method private w()V
    .registers 4

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lh/h;->t(II)V

    sget-object p0, Lh/h;->m:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x3

    iput v0, p0, Landroid/os/Message;->what:I

    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static y()V
    .registers 2

    sget-object v0, Lh/h;->i:Lh/c;

    invoke-virtual {v0}, Lh/c;->c()I

    move-result v0

    const/16 v1, 0x46

    if-lt v0, v1, :cond_1e

    sget-object v0, Lh/h;->c:Ljava/lang/String;

    const-string v1, "start_prediction_release - exe"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh/h;->j:Lb/d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lb/d;->i(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Ld/a;->a()V

    goto :goto_25

    :cond_1e
    sget-object v0, Lh/h;->c:Ljava/lang/String;

    const-string v1, "start_prediction_release - none"

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public j()V
    .registers 2

    sget-object p0, Lh/h;->i:Lh/c;

    invoke-virtual {p0}, Lh/c;->b()Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lh/h;->m:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lh/h;->m:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1c
    return-void
.end method

.method public r(IIIIIIII)V
    .registers 19

    new-instance v9, Lc/f;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lc/f;-><init>(IIIIIIII)V

    sget-object v0, Lh/h;->k:Lc/d;

    invoke-virtual {v0, v9}, Lc/d;->M(Lc/f;)V

    return-void
.end method

.method public u()V
    .registers 2

    const/16 p0, 0x9

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lh/h;->t(II)V

    invoke-static {}, Lh/h;->p()Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lh/h;->k:Lc/d;

    invoke-virtual {p0}, Lc/d;->P()V

    :cond_11
    return-void
.end method

.method public x()V
    .registers 1

    invoke-direct {p0}, Lh/h;->s()V

    invoke-direct {p0}, Lh/h;->w()V

    invoke-virtual {p0}, Lh/h;->j()V

    return-void
.end method
