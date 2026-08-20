.class public Lc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Z = false

.field public static B:Z = false

.field public static C:Z = false

.field public static D:Ljava/lang/String; = "none"

.field public static E:Ljava/lang/String; = "C"

.field public static F:I = 0x0

.field public static G:Ljava/lang/String; = null

.field public static H:Ljava/lang/String; = null

.field public static I:Ljava/lang/String; = null

.field public static J:Ljava/lang/String; = null

.field public static K:Ljava/lang/String; = null

.field public static L:Ljava/lang/String; = null

.field public static M:Ljava/lang/String; = null

.field public static N:Ljava/lang/String; = null

.field public static O:Ljava/lang/String; = null

.field public static P:Ljava/lang/String; = null

.field public static Q:Ljava/lang/String; = null

.field public static R:Ljava/lang/String; = null

.field public static S:Ljava/lang/String; = null

.field public static T:Ljava/lang/String; = null

.field public static U:Ljava/lang/String; = null

.field public static V:I = 0x0

.field public static W:Ljava/lang/String; = null

.field public static X:Ljava/lang/String; = null

.field private static Y:Ljava/lang/String; = null

.field private static Z:Ljava/lang/String; = null

.field private static a0:Ljava/lang/String; = null

.field private static b0:Ljava/lang/String; = null

.field private static c0:Ljava/lang/String; = null

.field private static d0:Ljava/lang/String; = null

.field private static e:Lc/k; = null

.field private static e0:Ljava/lang/String; = null

.field private static f:Landroid/content/Context; = null

.field public static final f0:Ljava/util/ArrayList;

.field private static final g:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static g0:Landroid/os/HqmStatsImpl; = null

.field private static final h:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static h0:Ljava/util/LinkedHashMap; = null

.field private static final i:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static i0:Ljava/util/LinkedHashMap; = null

.field private static final j:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field private static final k:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field private static final l:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field private static final m:Ljava/lang/String; = "ro.boot.revision"

.field private static final n:Ljava/lang/String; = "ro.soc.model"

.field private static final o:Ljava/lang/String; = "ro.hardware.chipname"

.field public static p:Z = false

.field public static q:Z = false

.field public static r:Z = false

.field public static s:Z = false

.field public static t:Z = false

.field public static u:Z = false

.field public static v:Z = false

.field public static w:Z = false

.field public static x:Z = false

.field public static y:Ljava/lang/String; = "RETAIL"

.field public static z:Z = false


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Lc/b;->D:I

    sput v0, Lc/k;->F:I

    const-string v0, "NONE"

    sput-object v0, Lc/k;->G:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lc/k;->H:Ljava/lang/String;

    sput-object v0, Lc/k;->I:Ljava/lang/String;

    sput-object v0, Lc/k;->J:Ljava/lang/String;

    sput-object v0, Lc/k;->K:Ljava/lang/String;

    sput-object v0, Lc/k;->L:Ljava/lang/String;

    sput-object v0, Lc/k;->M:Ljava/lang/String;

    const-string v1, "DEV"

    sput-object v1, Lc/k;->N:Ljava/lang/String;

    const-string v1, "none"

    sput-object v1, Lc/k;->O:Ljava/lang/String;

    sput-object v1, Lc/k;->P:Ljava/lang/String;

    sput-object v1, Lc/k;->Q:Ljava/lang/String;

    sput-object v1, Lc/k;->R:Ljava/lang/String;

    sput-object v1, Lc/k;->S:Ljava/lang/String;

    sput-object v0, Lc/k;->T:Ljava/lang/String;

    sput-object v0, Lc/k;->U:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lc/k;->V:I

    sput-object v1, Lc/k;->W:Ljava/lang/String;

    sput-object v1, Lc/k;->X:Ljava/lang/String;

    const-string v0, "com.samsung.android.dqagent"

    sput-object v0, Lc/k;->Y:Ljava/lang/String;

    const-string v0, "com.salab.act"

    sput-object v0, Lc/k;->Z:Ljava/lang/String;

    const-string v0, "com.salab.issuetracker"

    sput-object v0, Lc/k;->a0:Ljava/lang/String;

    const-string v0, "com.tbox.hookie"

    sput-object v0, Lc/k;->b0:Ljava/lang/String;

    const-string v0, "com.reliabilityteam.batterydrainer"

    sput-object v0, Lc/k;->c0:Ljava/lang/String;

    const-string v0, "com.samsung.rms.retailagent.global"

    sput-object v0, Lc/k;->d0:Ljava/lang/String;

    const-string v0, "io.ismconnect.att.devicealive"

    sput-object v0, Lc/k;->e0:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/k;->f0:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/HqmStatsImpl;

    invoke-direct {v0}, Landroid/os/HqmStatsImpl;-><init>()V

    sput-object v0, Lc/k;->g0:Landroid/os/HqmStatsImpl;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lc/k;->h0:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lc/k;->i0:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lc/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/k;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/k;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lc/k;->c:Ljava/util/ArrayList;

    new-instance v0, Lc/j;

    invoke-direct {v0, p0}, Lc/j;-><init>(Lc/k;)V

    iput-object v0, p0, Lc/k;->d:Landroid/content/BroadcastReceiver;

    sput-object p1, Lc/k;->f:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/k;->c:Ljava/util/ArrayList;

    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    sget-object v0, Lc/k;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    sget-object v0, Lc/k;->a0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    sget-object v0, Lc/k;->b0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/k;->b:Ljava/util/ArrayList;

    sget-object v0, Lc/k;->c0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/k;->c:Ljava/util/ArrayList;

    sget-object v0, Lc/k;->d0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/k;->c:Ljava/util/ArrayList;

    sget-object v0, Lc/k;->e0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lc/k;->l()V

    return-void
.end method

.method static synthetic a(Lc/k;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lc/k;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lc/k;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/k;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lc/k;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lc/k;->e0:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    sget-object v0, Lc/k;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xa200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lc/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apk Install : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_22} :catch_24

    const/4 p0, 0x1

    goto :goto_3b

    :catch_24
    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apk Not Install : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_3b
    return p0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    const-string p0, "ro.boot.revision"

    const-string v0, "none"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized h(Landroid/content/Context;)Lc/k;
    .registers 3

    const-class v0, Lc/k;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lc/k;->e:Lc/k;

    if-nez v1, :cond_e

    new-instance v1, Lc/k;

    invoke-direct {v1, p0}, Lc/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/k;->e:Lc/k;

    :cond_e
    sget-object p0, Lc/k;->e:Lc/k;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private i()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lc/k;->a:Ljava/lang/String;

    const-string v1, "getUniqueNumber"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/ufs/un"

    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    :goto_10
    invoke-direct {p0, v0}, Lc/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    :cond_15
    const-string v0, "/sys/class/scsi_host/host0/unique_number"

    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1e

    goto :goto_10

    :cond_1e
    const-string v0, "/sys/class/sec/mmc/un"

    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_27

    goto :goto_10

    :cond_27
    const-string v0, "/sys/block/mmcblk0/device/unique_number"

    invoke-direct {p0, v0}, Lc/k;->j(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_30

    goto :goto_10

    :cond_30
    const-string p0, ""

    :goto_32
    if-nez p0, :cond_37

    const-string p0, "none"

    goto :goto_3b

    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :goto_3b
    return-object p0
.end method

.method private j(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "read IOException"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_2f
    .catchall {:try_start_3 .. :try_end_d} :catchall_2d

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_28
    .catchall {:try_start_d .. :try_end_17} :catchall_25

    :cond_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_5b

    :catch_1b
    move-exception p1

    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :catchall_25
    move-exception p1

    move-object v1, v2

    goto :goto_5c

    :catch_28
    move-exception p1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_31

    :catchall_2d
    move-exception p1

    goto :goto_5c

    :catch_2f
    move-exception p1

    move-object v2, v1

    :goto_31
    :try_start_31
    iget-object v3, p0, Lc/k;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_2d

    if-eqz v1, :cond_5a

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_5a

    :catch_51
    move-exception p1

    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    :goto_5a
    move-object v1, v2

    :goto_5b
    return-object v1

    :goto_5c
    if-eqz v1, :cond_6b

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_6b

    :catch_62
    move-exception v1

    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    invoke-static {p0, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6b
    :goto_6b
    throw p1
.end method

.method private l()V
    .registers 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lc/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_2b
    iget-object v0, p0, Lc/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_31

    :cond_41
    sget-object v0, Lc/k;->f:Landroid/content/Context;

    iget-object v1, p0, Lc/k;->d:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public f()V
    .registers 8

    sget-object v0, Lc/k;->Y:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/k;->e(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc/k;->w:Z

    iget-object v0, p0, Lc/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "."

    const/4 v5, 0x1

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lc/k;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/k;->W:Ljava/lang/String;

    move v2, v3

    goto :goto_34

    :cond_32
    move v2, v3

    goto :goto_10

    :cond_34
    :goto_34
    iget-object v0, p0, Lc/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lc/k;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/k;->X:Ljava/lang/String;

    sget-object v0, Lc/k;->e0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "RETAIL_A"

    sput-object v0, Lc/k;->y:Ljava/lang/String;

    :cond_64
    move v3, v6

    goto :goto_68

    :cond_66
    move v3, v6

    goto :goto_3b

    :cond_68
    :goto_68
    if-nez v3, :cond_93

    sget-object v0, Lc/k;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "verizonwireless_store_demo_mode"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_93

    iget-object p0, p0, Lc/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store_demo_mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "RETAIL_V"

    sput-object p0, Lc/k;->y:Ljava/lang/String;

    goto :goto_94

    :cond_93
    move v5, v3

    :goto_94
    sput-boolean v2, Lc/k;->z:Z

    sput-boolean v5, Lc/k;->x:Z

    return-void
.end method

.method public m()V
    .registers 2

    invoke-direct {p0}, Lc/k;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/k;->K:Ljava/lang/String;

    invoke-direct {p0}, Lc/k;->i()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/k;->I:Ljava/lang/String;

    const-string p0, "ro.soc.model"

    const-string v0, "none"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/k;->Q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "ro.hardware.chipname"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/k;->Q:Ljava/lang/String;

    :cond_24
    return-void
.end method
