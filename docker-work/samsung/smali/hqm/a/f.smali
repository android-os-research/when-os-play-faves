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
.field public static A:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final B:Ljava/lang/String;

.field private static C:Z = false

.field private static final u:Ljava/lang/String; = "f"

.field private static v:Landroid/content/Context; = null

.field private static w:La/f; = null

.field private static x:Ld/b; = null

.field private static y:La/j; = null

.field private static final z:Ljava/lang/String; = "ro.product.device"


# instance fields
.field private a:Lc/h;

.field private b:Lb/h;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:La/c;

.field private g:Lc/k;

.field private h:Z

.field i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/HashMap;

.field private n:Ljava/util/HashMap;

.field private o:Ljava/lang/String;

.field private final p:I

.field private q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private s:Ljava/util/HashMap;

.field t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/f;->B:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, La/f;->C:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->b:Lb/h;

    iput-object v0, p0, La/f;->e:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, La/f;->f:La/c;

    iput-object v0, p0, La/f;->g:Lc/k;

    const/4 v1, 0x0

    iput-boolean v1, p0, La/f;->h:Z

    iput-object v0, p0, La/f;->j:Ljava/util/ArrayList;

    iput-object v0, p0, La/f;->k:Ljava/util/ArrayList;

    iput-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f;->n:Ljava/util/HashMap;

    const-string v0, "/data/system/hqm_emlogcnt"

    iput-object v0, p0, La/f;->o:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, La/f;->p:I

    const-string v0, ""

    iput-object v0, p0, La/f;->q:Ljava/lang/String;

    const-string v0, "ro.hwparam.ut"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f;->s:Ljava/util/HashMap;

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(La/f;)V

    iput-object v0, p0, La/f;->t:Landroid/content/BroadcastReceiver;

    sput-object p1, La/f;->v:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Hqm Thread2"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, La/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Hqm Thread3"

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, La/f;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    sget-object p1, La/f;->v:Landroid/content/Context;

    iget-object v0, p0, La/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lc/h;->k(Landroid/content/Context;Landroid/os/Looper;)Lc/h;

    move-result-object p1

    iput-object p1, p0, La/f;->a:Lc/h;

    sget-object p1, La/f;->v:Landroid/content/Context;

    iget-object v0, p0, La/f;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lb/h;->o(Landroid/content/Context;Landroid/os/Looper;)Lb/h;

    move-result-object p1

    iput-object p1, p0, La/f;->b:Lb/h;

    invoke-static {}, Ld/b;->b()Ld/b;

    move-result-object p1

    sput-object p1, La/f;->x:Ld/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/f;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/f;->l:Ljava/util/ArrayList;

    return-void
.end method

.method private static A()Ljava/io/InputStream;
    .registers 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lc/k;->T:Ljava/lang/String;

    const-string v2, "raw"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method private B()Landroid/telephony/TelephonyManager;
    .registers 3

    iget-object v0, p0, La/f;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_10

    sget-object v0, La/f;->v:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, La/f;->e:Landroid/telephony/TelephonyManager;

    :cond_10
    iget-object p0, p0, La/f;->e:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private C()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, La/f;->D()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DEV_TOOL"

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lc/k;->A:Z

    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_22

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    move-object v0, v2

    goto :goto_23

    :catch_22
    move-exception p0

    :goto_23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    :goto_27
    if-eqz v2, :cond_31

    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_31
    :goto_31
    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestDivision "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private D()Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "hqm_division"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private E()V
    .registers 3

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "InitBackupLogFile"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, La/f;->v:Landroid/content/Context;

    invoke-static {v0}, La/c;->l(Landroid/content/Context;)La/c;

    move-result-object v0

    iput-object v0, p0, La/f;->f:La/c;

    return-void
.end method

.method public static declared-synchronized F(Landroid/content/Context;)V
    .registers 3

    const-class v0, La/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/f;->w:La/f;

    if-nez v1, :cond_e

    new-instance v1, La/f;

    invoke-direct {v1, p0}, La/f;-><init>(Landroid/content/Context;)V

    sput-object v1, La/f;->w:La/f;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private K(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hqm_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/hqmlog"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, La/f;->u:Ljava/lang/String;

    const-string v2, "directory exist"

    :goto_2b
    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_2f
    sget-object v1, La/f;->u:Ljava/lang/String;

    const-string v2, "directory not exist"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "directory created"

    goto :goto_2b

    :goto_3f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    :try_start_4a
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_58} :catch_59

    goto :goto_5c

    :catch_59
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_5c
    return-void

    :cond_5d
    const-string p0, "fail to create dir"

    invoke-static {v1, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private L(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 26

    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBufferedHWParamToHQM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p10

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object v3, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v3 .. v14}, La/f;->S(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static M(Landroid/content/Intent;)Z
    .registers 3

    sget-object v0, La/f;->v:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p0, :cond_9

    return v1

    :cond_9
    const-string v0, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_13
    sget-object v0, La/f;->v:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    return v1
.end method

.method private static N(Landroid/content/Intent;)Z
    .registers 6

    sget-object v0, La/f;->v:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p0, :cond_9

    return v1

    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.dqagent"

    const-string v3, "com.samsung.android.dqagent.receiver.DQADataReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "schemever"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_20
    sget-object v0, La/f;->v:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.permission.HQM_NOTIFICATION_PERMISSION"

    invoke-virtual {v0, p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    return v3

    :catch_2a
    return v1
.end method

.method private static declared-synchronized P(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-class p0, La/f;

    monitor-enter p0

    :try_start_3
    sget-boolean p1, Lc/k;->p:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9f

    const/4 v0, 0x0

    if-nez p1, :cond_a

    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    sget-boolean p1, Lc/k;->s:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_9f

    if-nez p1, :cond_10

    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {p1, v1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {p1, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {p1, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v1}, La/f;->M(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_9d

    const-string p1, "K"

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3c

    const-string p1, "A"

    goto :goto_41

    :cond_3c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_41

    const-string p1, "I"

    :cond_41
    :goto_41
    sget-object p2, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    custom_dataset - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_10 .. :try_end_9b} :catchall_9f

    monitor-exit p0

    return v0

    :cond_9d
    monitor-exit p0

    return v0

    :catchall_9f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static declared-synchronized Q(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const-class p0, La/f;

    monitor-enter p0

    :try_start_3
    sget-boolean p1, Lc/k;->p:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_122

    const/4 v0, 0x0

    if-nez p1, :cond_a

    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    const-string p1, "em"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    sget-object p1, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "em type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.dqagent.ACTION_DQA_EM_DATA"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :cond_30
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.dqagent.ACTION_DQA_DATA"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc/k;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/k;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cvr"

    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cmf"

    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "crv"

    sget-object v3, Lc/k;->K:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ftn"

    invoke-virtual {p1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "testd"

    sget-object v3, Lc/k;->N:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "un"

    sget-object v3, Lc/k;->I:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cpuid"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "t"

    invoke-virtual {p1, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appid"

    invoke-virtual {p1, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p10, "cscc"

    sget-object v1, La/f;->B:Ljava/lang/String;

    invoke-virtual {p1, p10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p10, "log"

    invoke-virtual {p1, p10, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p10, Lc/k;->F:I

    sget v1, Lc/b;->E:I

    if-ne p10, v1, :cond_a5

    const-string p10, "sgid"

    sget-object v1, Lc/k;->S:Ljava/lang/String;

    invoke-virtual {p1, p10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p10, "enclog"

    invoke-virtual {p1, p10, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a5
    invoke-static {p1}, La/f;->N(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_120

    const-string p1, "K"

    const/4 p10, 0x1

    if-ne p2, p10, :cond_b3

    const-string p1, "A"

    goto :goto_b8

    :cond_b3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_b8

    const-string p1, "I"

    :cond_b8
    :goto_b8
    sget-object p2, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    custom_dataset - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prv_custom_dataset - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catchall {:try_start_a .. :try_end_11e} :catchall_122

    monitor-exit p0

    return p10

    :cond_120
    monitor-exit p0

    return v0

    :catchall_122
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized S(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 32

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v15, p3

    move-object/from16 v14, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    monitor-enter p0

    :try_start_f
    sget v1, Lc/k;->F:I

    sget v2, Lc/b;->D:I
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_27d

    const/4 v12, 0x0

    if-ne v1, v2, :cond_18

    monitor-exit p0

    return v12

    :cond_18
    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    :try_start_26
    invoke-direct/range {v1 .. v7}, La/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_27d

    if-nez v1, :cond_2e

    monitor-exit p0

    return v12

    :cond_2e
    :try_start_2e
    const-string v1, "{}"

    const-string v2, "{}"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sget v3, Lc/k;->F:I

    sget v4, Lc/b;->E:I

    if-ne v3, v4, :cond_e2

    sget-boolean v2, Lc/k;->q:Z
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_27d

    if-nez v2, :cond_46

    monitor-exit p0

    return v12

    :cond_46
    :try_start_46
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_27d

    if-eqz v2, :cond_5a

    if-eqz v3, :cond_5a

    if-eqz v4, :cond_5a

    monitor-exit p0

    return v12

    :cond_5a
    if-eqz v2, :cond_75

    if-nez v3, :cond_75

    :try_start_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ab

    :cond_75
    if-nez v2, :cond_8c

    if-eqz v3, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_8c
    if-nez v2, :cond_ab

    if-nez v3, :cond_ab

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_ab
    :goto_ab
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_de

    move-wide v9, v6

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v5, v14

    move-object/from16 v14, p5

    move-object v4, v15

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, p11

    invoke-static/range {v9 .. v19}, La/f;->Q(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_246

    :cond_de
    move-object v5, v14

    move-object v4, v15

    goto/16 :goto_246

    :cond_e2
    move-object v5, v14

    move-object v4, v15

    sget v3, Lc/k;->F:I

    sget v13, Lc/b;->H:I

    if-ne v3, v13, :cond_12b

    sget-boolean v1, Lc/k;->r:Z
    :try_end_ec
    .catchall {:try_start_5e .. :try_end_ec} :catchall_27d

    if-nez v1, :cond_f0

    monitor-exit p0

    return v12

    :cond_f0
    :try_start_f0
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10a
    .catchall {:try_start_f0 .. :try_end_10a} :catchall_27d

    if-eqz v1, :cond_10e

    monitor-exit p0

    return v12

    :cond_10e
    if-nez p2, :cond_127

    move-wide v9, v6

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v19, p11

    :try_start_123
    invoke-static/range {v9 .. v19}, La/f;->Q(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    :cond_127
    move-object v10, v2

    move-object v9, v3

    goto/16 :goto_248

    :cond_12b
    sget v3, Lc/k;->F:I

    sget v13, Lc/b;->F:I

    if-ne v3, v13, :cond_160

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_246

    move-wide v9, v6

    move/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, v1

    move-object/from16 v18, p11

    invoke-static/range {v9 .. v18}, La/f;->P(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_246

    :cond_160
    sget v3, Lc/k;->F:I

    sget v13, Lc/b;->G:I

    if-ne v3, v13, :cond_246

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v13
    :try_end_172
    .catchall {:try_start_123 .. :try_end_172} :catchall_27d

    if-eqz v2, :cond_17a

    if-eqz v3, :cond_17a

    if-eqz v13, :cond_17a

    monitor-exit p0

    return v12

    :cond_17a
    if-eqz v2, :cond_195

    if-nez v3, :cond_195

    :try_start_17e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1cb

    :cond_195
    if-nez v2, :cond_1ac

    if-eqz v3, :cond_1ac

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_190

    :cond_1ac
    if-nez v2, :cond_1cb

    if-nez v3, :cond_1cb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_190

    :cond_1cb
    :goto_1cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, La/f;->k:Ljava/util/ArrayList;

    if-eqz v3, :cond_246

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v8, La/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_246

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, La/f;->K(Ljava/lang/String;)V

    sget-object v3, La/f;->u:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FACTORY LOG : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_246
    :goto_246
    move-object v9, v1

    move-object v10, v2

    :goto_248
    move/from16 v1, p1

    move-wide v2, v6

    move-object/from16 v4, p7

    move-object v11, v5

    move-object v5, v9

    move-wide v13, v6

    move-object v6, v10

    invoke-static/range {v1 .. v6}, La/f;->k0(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v1, Lc/k;->p:Z

    if-eqz v1, :cond_27b

    new-instance v7, Landroid/os/HWParamResultData;

    invoke-direct {v7}, Landroid/os/HWParamResultData;-><init>()V

    move-object v1, v7

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Landroid/os/HWParamResultData;->setBasicParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Landroid/os/HWParamResultData;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13, v14}, Landroid/os/HWParamResultData;->setTime(J)V

    sget v1, Lc/k;->F:I

    invoke-virtual {v7, v1, v0}, Landroid/os/HWParamResultData;->setServer(II)V

    sget-object v1, Lc/k;->g0:Landroid/os/HqmStatsImpl;

    invoke-virtual {v1, v0, v11, v7}, Landroid/os/HqmStatsImpl;->addHWParamResultData(ILjava/lang/String;Landroid/os/HWParamResultData;)V
    :try_end_27b
    .catchall {:try_start_17e .. :try_end_27b} :catchall_27d

    :cond_27b
    monitor-exit p0

    return v12

    :catchall_27d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private W()V
    .registers 2

    sget-boolean p0, La/g;->l:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    :goto_5
    sput p0, La/g;->h:I

    goto :goto_13

    :cond_8
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    const/4 p0, 0x0

    goto :goto_5

    :cond_11
    sput v0, La/g;->h:I

    :goto_13
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, La/g;->j:Z

    const-string v0, "userdebug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, La/g;->k:Z

    return-void
.end method

.method private Y()Z
    .registers 5

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "setConditionalMode"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/f;->r:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    sput-boolean v2, Ld/d;->b:Z

    const-string v1, "UT mode"

    invoke-static {v0, v1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    sget-boolean v1, Lc/k;->u:Z

    if-eqz v1, :cond_ab

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc/k;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/FR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/k;->E:Ljava/lang/String;

    invoke-direct {p0}, La/f;->o()Z

    move-result v1

    if-eqz v1, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc/k;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/P"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/k;->E:Ljava/lang/String;

    invoke-direct {p0}, La/f;->p()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-direct {p0}, La/f;->q()Z

    move-result p0

    if-eqz p0, :cond_76

    sput-boolean v2, Lc/k;->p:Z

    const-string p0, "conditional set - enable"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lc/k;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/k;->E:Ljava/lang/String;

    return v2

    :cond_76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/k;->E:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/NF"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/k;->E:Ljava/lang/String;

    goto :goto_a4

    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc/k;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/NP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/k;->E:Ljava/lang/String;

    invoke-virtual {p0}, La/f;->X()V

    :goto_a4
    const-string p0, "conditional set - disable"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_ab
    return v2
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, La/f;->o:Ljava/lang/String;

    invoke-static {v0}, La/s;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, La/f;->o:Ljava/lang/String;

    invoke-static {v0}, La/s;->p(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, La/f;->m:Ljava/util/HashMap;

    if-nez v0, :cond_1f

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "emLogCnt is null "

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/f;->o:Ljava/lang/String;

    invoke-static {p0}, La/s;->e(Ljava/lang/String;)I

    goto :goto_3f

    :cond_1f
    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "em log read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La/f;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_38
    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string v0, "There is no em log cnt "

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method private b()V
    .registers 14

    iget-object v0, p0, La/f;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string v0, "buffer is not initialized"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBufferedParam size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_28
    iget-object v0, p0, La/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/o;

    iget v3, v1, La/o;->b:I

    iget-object v4, v1, La/o;->c:Ljava/lang/String;

    iget-object v5, v1, La/o;->d:Ljava/lang/String;

    iget-object v6, v1, La/o;->e:Ljava/lang/String;

    iget-object v7, v1, La/o;->f:Ljava/lang/String;

    iget-object v8, v1, La/o;->g:Ljava/lang/String;

    iget-object v9, v1, La/o;->h:Ljava/lang/String;

    iget-object v10, v1, La/o;->i:Ljava/lang/String;

    iget-object v11, v1, La/o;->j:Ljava/lang/String;

    iget-object v12, v1, La/o;->k:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, La/f;->L(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2e

    :cond_53
    iget-object p0, p0, La/f;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5d
    return-void
.end method

.method private b0()V
    .registers 7

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.context.hqmbigdata.intent"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.intent.action.APP_HQM_SEND_REQ"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_USER_ID"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, La/f;->v:Landroid/content/Context;

    iget-object v1, p0, La/f;->t:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private c()V
    .registers 5

    new-instance v0, La/i;

    const-string v1, "EMLC"

    const-string v2, "sm"

    invoke-direct {v0, v1, v2}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v1, p0, La/f;->m:Ljava/util/HashMap;

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "emlog is empty"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    sget-object v1, La/f;->u:Ljava/lang/String;

    const-string v2, "sendLogStatInfo EMLG"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/f;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, La/f;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_4d
    invoke-virtual {v0}, La/i;->d()V

    iget-object v0, p0, La/f;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_55} :catch_56

    goto :goto_76

    :catch_56
    move-exception v0

    sget-object v1, La/f;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / SendEmLogStat"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    iget-object p0, p0, La/f;->o:Ljava/lang/String;

    invoke-static {p0}, La/s;->e(Ljava/lang/String;)I

    move-result p0

    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete cnt file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c0()V
    .registers 8

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "setTargetServer() "

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lc/k;->w:Z

    sget-boolean v2, Lc/k;->z:Z

    sget-boolean v3, Lc/k;->x:Z

    sget v4, Lc/b;->D:I

    sput v4, Lc/k;->F:I

    sget-boolean v4, Lc/k;->p:Z

    if-nez v4, :cond_16

    return-void

    :cond_16
    sget-boolean v4, Lc/k;->q:Z

    if-nez v4, :cond_24

    sget-boolean v4, Lc/k;->r:Z

    if-nez v4, :cond_24

    const-string p0, "DV/DQ not set"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    sget v4, La/g;->h:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_35

    sget-boolean p0, Lc/k;->t:Z

    if-eqz p0, :cond_30

    sput-boolean v6, Lc/k;->B:Z

    :cond_30
    sget p0, Lc/b;->G:I

    sput p0, Lc/k;->F:I

    return-void

    :cond_35
    if-nez v1, :cond_3d

    const-string p0, "no MainA"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    if-eqz v2, :cond_51

    const-string v1, "init db subA"

    invoke-static {v0, v1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, La/f;->C()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/k;->N:Ljava/lang/String;

    sget-boolean v1, Lc/k;->t:Z

    if-eqz v1, :cond_6d

    sput-boolean v6, Lc/k;->B:Z

    goto :goto_6d

    :cond_51
    sget-object v1, Lc/k;->T:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    const-string v4, "hqm_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b

    :cond_69
    const-string v1, "ERROR"

    :goto_6b
    sput-object v1, Lc/k;->N:Ljava/lang/String;

    :cond_6d
    :goto_6d
    invoke-direct {p0}, La/f;->n()Z

    move-result v1

    sput-boolean v1, Lc/k;->C:Z

    invoke-direct {p0}, La/f;->s()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc/k;->R:Ljava/lang/String;

    const-string v4, "NON"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    const-string p0, "disable by dqa"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_87
    invoke-direct {p0}, La/f;->u()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/k;->P:Ljava/lang/String;

    sget p0, La/g;->h:I

    const/4 v1, 0x0

    if-nez p0, :cond_94

    move p0, v6

    goto :goto_95

    :cond_94
    move p0, v1

    :goto_95
    if-eqz v2, :cond_9c

    sget-boolean v2, Lc/k;->A:Z

    if-eqz v2, :cond_9c

    move v1, v6

    :cond_9c
    if-nez v1, :cond_b8

    if-eqz p0, :cond_a5

    sget-boolean p0, Ld/d;->b:Z

    if-nez p0, :cond_a5

    goto :goto_b8

    :cond_a5
    const-string p0, "set DQ"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lc/b;->H:I

    sput p0, Lc/k;->F:I

    if-eqz v3, :cond_b1

    goto :goto_c9

    :cond_b1
    sget-boolean p0, Lc/k;->C:Z

    if-eqz p0, :cond_cd

    const-string p0, "DEV_SET"

    goto :goto_cb

    :cond_b8
    :goto_b8
    const-string p0, "set DV"

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lc/k;->t:Z

    if-eqz p0, :cond_c3

    sput-boolean v6, Lc/k;->B:Z

    :cond_c3
    sget p0, Lc/b;->E:I

    sput p0, Lc/k;->F:I

    if-eqz v3, :cond_cd

    :goto_c9
    sget-object p0, Lc/k;->y:Ljava/lang/String;

    :goto_cb
    sput-object p0, Lc/k;->N:Ljava/lang/String;

    :cond_cd
    return-void
.end method

.method private d()V
    .registers 5

    new-instance v0, La/i;

    const-string v1, "ERRS"

    const-string v2, "sm"

    invoke-direct {v0, v1, v2}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    iget-object v1, p0, La/f;->n:Ljava/util/HashMap;

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string v0, "errlog is empty"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    sget-object v1, La/f;->u:Ljava/lang/String;

    const-string v2, "sendLogStatInfo ERRS"

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/f;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, La/f;->n:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_4d
    invoke-virtual {v0}, La/i;->d()V

    iget-object p0, p0, La/f;->n:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_55} :catch_56

    goto :goto_76

    :catch_56
    move-exception p0

    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / SendErrLogStat"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    return-void
.end method

.method private e()V
    .registers 3

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string v0, "SendFactoryResetInfo FRST"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, La/i;

    const-string v0, "RSTI"

    const-string v1, "ph"

    invoke-direct {p0, v0, v1}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FRST"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, La/i;->d()V

    return-void
.end method

.method private e0()V
    .registers 3

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "StartRestoreLogFile"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/f;->f:La/c;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, La/c;->p()Z

    :cond_e
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    sget-object v0, La/f;->u:Ljava/lang/String;

    return-object v0
.end method

.method private f0()V
    .registers 1

    const/4 p0, 0x0

    sput-boolean p0, Lc/k;->p:Z

    sget p0, Lc/b;->D:I

    sput p0, Lc/k;->F:I

    return-void
.end method

.method static synthetic g(La/f;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    invoke-direct/range {p0 .. p11}, La/f;->S(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic h()La/j;
    .registers 1

    sget-object v0, La/f;->y:La/j;

    return-object v0
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Sensor_SHMD"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP_ETRA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP_ETRB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP_ETRC"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP_ETRT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "HCM_CPTN"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Power_BATR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Power_ALPA"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "APP_FCNR"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP_ETRM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AP_ETRF"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Overheat_SSRM"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Sluggish_KPUT"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private j0()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget v0, Lc/k;->F:I

    invoke-direct {p0}, La/f;->c0()V

    sget v1, Lc/k;->F:I

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    sget-boolean v1, Lc/k;->p:Z

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    sget v0, Lc/k;->F:I

    sget v1, Lc/b;->E:I

    if-eq v0, v1, :cond_1f

    sget v0, Lc/k;->F:I

    sget v1, Lc/b;->H:I

    if-ne v0, v1, :cond_24

    :cond_1f
    iget-object v0, p0, La/f;->a:Lc/h;

    invoke-virtual {v0}, Lc/h;->u()V

    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private k(La/e;)V
    .registers 4

    iget-object v0, p0, La/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_10

    iget-object v0, p0, La/f;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    iget-object p0, p0, La/f;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static k0(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23

    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, La/f;->y:La/j;

    const/4 v5, 0x0

    if-nez v4, :cond_c

    return v5

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v0, :cond_18

    sget-object v0, Lc/k;->h0:Ljava/util/LinkedHashMap;

    goto :goto_20

    :cond_18
    if-eq v0, v7, :cond_1e

    if-ne v0, v6, :cond_1d

    goto :goto_1e

    :cond_1d
    return v5

    :cond_1e
    :goto_1e
    sget-object v0, Lc/k;->i0:Ljava/util/LinkedHashMap;

    :goto_20
    const-string v8, "\""

    const-string v9, ""

    move-object/from16 v10, p4

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, " | "

    const-string v13, ":"

    const-string v14, ","

    if-le v11, v6, :cond_a8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v10, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v15, v10

    if-ne v15, v6, :cond_a1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v10, v5

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v15, v10, v7

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a1

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/n;

    invoke-virtual {v6, v1, v2}, La/n;->q(J)V

    invoke-virtual {v6, v15}, La/n;->r(Ljava/lang/String;)V

    invoke-virtual {v6}, La/n;->s()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, La/f;->u:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v11

    const-string v11, "writeDB: C |"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v10, v5

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    :cond_a1
    move-object/from16 p0, v11

    :goto_a3
    move-object/from16 v11, p0

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_44

    :cond_a8
    move-object/from16 v6, p5

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_121

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v6, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    :goto_c4
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_121

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v5

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aget-object v11, v6, v10

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c4

    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La/n;

    invoke-virtual {v8, v1, v2}, La/n;->q(J)V

    invoke-virtual {v8, v11}, La/n;->r(Ljava/lang/String;)V

    invoke-virtual {v8}, La/n;->s()V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, La/f;->u:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writeDB: P "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v5

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c4

    :cond_121
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12c

    sget-object v0, La/f;->y:La/j;

    invoke-virtual {v0, v4}, La/j;->g(Ljava/util/ArrayList;)V

    :cond_12c
    const/4 v0, 0x1

    return v0
.end method

.method private l()V
    .registers 2

    sget-object v0, La/f;->v:Landroid/content/Context;

    invoke-static {v0}, Lc/k;->h(Landroid/content/Context;)Lc/k;

    move-result-object v0

    iput-object v0, p0, La/f;->g:Lc/k;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lc/k;->f()V

    :cond_d
    return-void
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    sget v0, Lc/k;->F:I

    sget v1, Lc/b;->D:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    sget v0, Lc/b;->J:I

    new-instance v1, La/e;

    invoke-direct {v1, p0}, La/e;-><init>(La/f;)V

    const-string v3, "Feature : "

    const/4 v4, -0x1

    if-nez p6, :cond_34

    invoke-virtual {v1, p4, v4}, La/e;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, La/f;->k(La/e;)V

    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : cid is null"

    :goto_29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_34
    if-nez p4, :cond_4e

    invoke-virtual {v1, p6, v4}, La/e;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, La/f;->k(La/e;)V

    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : feature is null"

    goto :goto_29

    :cond_4e
    sget-object v4, La/f;->x:Ld/b;

    invoke-virtual {v4, p6, p4}, Ld/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not permitted log "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_6e
    if-eqz p1, :cond_155

    if-eqz p2, :cond_155

    if-nez p3, :cond_76

    goto/16 :goto_155

    :cond_76
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "_"

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iget-object v4, p0, La/f;->s:Ljava/util/HashMap;

    if-eqz v4, :cond_af

    invoke-virtual {v4, p6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_af

    iget-object v0, p0, La/f;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_af
    if-le p2, v0, :cond_e3

    mul-int/lit8 p1, p2, -0x1

    invoke-virtual {v1, p4, p1}, La/e;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, La/f;->k(La/e;)V

    iget-object p0, p0, La/f;->n:Ljava/util/HashMap;

    if-eqz p0, :cond_c4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " custom_value size is over : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " max : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2c

    :cond_e3
    const-string p6, "em"

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_135

    iget-object p5, p0, La/f;->m:Ljava/util/HashMap;

    if-eqz p5, :cond_135

    invoke-virtual {p5, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_10d

    iget-object p5, p0, La/f;->m:Ljava/util/HashMap;

    invoke-virtual {p5, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    iget-object v0, p0, La/f;->m:Ljava/util/HashMap;

    add-int/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_116

    :cond_10d
    iget-object p5, p0, La/f;->m:Ljava/util/HashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_116
    sget-object p5, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "em log : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La/f;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p5, p0, La/f;->o:Ljava/lang/String;

    iget-object v0, p0, La/f;->m:Ljava/util/HashMap;

    invoke-static {p5, v0}, La/s;->t(Ljava/lang/String;Ljava/util/HashMap;)Z

    :cond_135
    sget p5, Lc/k;->F:I

    sget v0, Lc/b;->E:I

    if-ne p5, v0, :cond_144

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    invoke-virtual {v1, p4, p1}, La/e;->a(Ljava/lang/String;I)V

    :goto_140
    invoke-direct {p0, v1}, La/f;->k(La/e;)V

    goto :goto_154

    :cond_144
    sget p1, Lc/k;->F:I

    sget p3, Lc/b;->F:I

    if-eq p1, p3, :cond_150

    sget p1, Lc/k;->F:I

    sget p3, Lc/b;->H:I

    if-ne p1, p3, :cond_154

    :cond_150
    invoke-virtual {v1, p4, p2}, La/e;->a(Ljava/lang/String;I)V

    goto :goto_140

    :cond_154
    :goto_154
    return p6

    :cond_155
    :goto_155
    invoke-virtual {v1, p4, v2}, La/e;->a(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, La/f;->k(La/e;)V

    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : field is null"

    goto/16 :goto_29
.end method

.method private n()Z
    .registers 6

    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/FactoryApp/HwPartProtoTypeSerialNo"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "none"

    const/4 v2, -0x1

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    :try_start_11
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_29

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p0

    move-object v0, v3

    goto :goto_2a

    :catch_29
    move-exception p0

    :goto_2a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v0

    :cond_2e
    :goto_2e
    if-eqz v3, :cond_38

    :try_start_30
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_38
    :goto_38
    sget p0, Lc/b;->K:I

    if-ne v2, p0, :cond_3e

    const/4 p0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p0, 0x0

    :goto_3f
    sput-object v1, Lc/k;->S:Ljava/lang/String;

    return p0
.end method

.method private o()Z
    .registers 4

    sget-object p0, La/f;->v:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkingDevicePovisioned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private p()Z
    .registers 4

    sget-object p0, La/f;->v:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "samsung_eula_agree_hqm"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkingEulaAgree "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private q()Z
    .registers 4

    invoke-direct {p0}, La/f;->r()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existFRstFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private r()Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "hqm_frst"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private s()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, La/f;->t()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "NotSet"

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1f

    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    move-object v0, v2

    goto :goto_20

    :catch_1f
    move-exception p0

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    :goto_24
    if-eqz v2, :cond_2e

    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_2e
    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DqaMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private t()Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "hqm_dqamode"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, La/f;->v()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "NotSet"

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1f

    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p0

    move-object v0, v2

    goto :goto_20

    :catch_1f
    move-exception p0

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    :goto_24
    if-eqz v2, :cond_2e

    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_2e
    sget-object p0, La/f;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtraInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private v()Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "hqm_extrainfo"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized w()La/f;
    .registers 2

    const-class v0, La/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/f;->w:La/f;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized x(Landroid/content/Context;)La/f;
    .registers 3

    const-class v0, La/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/f;->w:La/f;

    if-nez v1, :cond_e

    new-instance v1, La/f;

    invoke-direct {v1, p0}, La/f;-><init>(Landroid/content/Context;)V

    sput-object v1, La/f;->w:La/f;

    :cond_e
    sget-object p0, La/f;->w:La/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static y()Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/hwparam.debug.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    sget-object v1, La/f;->u:Ljava/lang/String;

    const-string v3, "get debug Policy Xml"

    invoke-static {v1, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_15
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    return-object v2

    :cond_21
    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "get normal Policy Xml"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/hqm_device.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    :try_start_35
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_40

    return-object v1

    :catch_40
    :cond_40
    return-object v2
.end method

.method private static z()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/hwparam.debug.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    :try_start_d
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    return-object v1

    :catch_18
    invoke-static {}, La/f;->A()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-static {}, La/f;->A()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public G()V
    .registers 3

    iget-object v0, p0, La/f;->g:Lc/k;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lc/k;->m()V

    :cond_7
    invoke-direct {p0}, La/f;->a()V

    iget-object v0, p0, La/f;->a:Lc/h;

    invoke-virtual {v0}, Lc/h;->s()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, La/f;->h:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, La/f;->e()V

    :cond_18
    invoke-direct {p0}, La/f;->b()V

    return-void
.end method

.method public H()V
    .registers 1

    return-void
.end method

.method public I(Ljava/io/PrintWriter;Z)V
    .registers 6

    iget-object v0, p0, La/f;->a:Lc/h;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lc/h;->p(Ljava/io/PrintWriter;Z)V

    goto :goto_d

    :cond_8
    const-string p2, "hWParamModule is null...."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d
    sget-object p2, La/f;->y:La/j;

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    invoke-virtual {p2, p1, v0}, La/j;->a(Ljava/io/PrintWriter;I)Z

    :cond_15
    const-string p2, "-----------------------------------------------------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lc/k;->g0:Landroid/os/HqmStatsImpl;

    invoke-virtual {p2, v0}, Landroid/os/HqmStatsImpl;->getHWParamResultDataMaps(I)Landroid/util/ArrayMap;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_52

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_52

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    invoke-virtual {p0, v2}, La/f;->g0(Landroid/os/HWParamResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    :cond_52
    sget-object p2, Lc/k;->g0:Landroid/os/HqmStatsImpl;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/HqmStatsImpl;->getHWParamResultDataMaps(I)Landroid/util/ArrayMap;

    move-result-object p2

    if-eqz p2, :cond_89

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_89

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    invoke-virtual {p0, v2}, La/f;->g0(Landroid/os/HWParamResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6c

    :cond_89
    sget-object p2, Lc/k;->g0:Landroid/os/HqmStatsImpl;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/os/HqmStatsImpl;->getHWParamResultDataMaps(I)Landroid/util/ArrayMap;

    move-result-object p2

    if-eqz p2, :cond_c0

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_c0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    invoke-virtual {p0, v2}, La/f;->g0(Landroid/os/HWParamResultData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a3

    :cond_c0
    iget-object p2, p0, La/f;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_e7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_e7

    iget-object p2, p0, La/f;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/e;

    invoke-virtual {v1}, La/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d0

    :cond_e4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e7
    iget-object p2, p0, La/f;->l:Ljava/util/ArrayList;

    if-eqz p2, :cond_120

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_120

    const-string p2, "== DQA =="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_fc
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fc

    :cond_11d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_120
    return-void
.end method

.method public J()Z
    .registers 5

    invoke-direct {p0}, La/f;->W()V

    const/4 v0, 0x1

    sput-boolean v0, La/f;->C:Z

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, La/f;->a:Lc/h;

    invoke-static {}, La/f;->y()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Ld/c;->b(Lc/h;Ljava/io/InputStream;)Z

    invoke-direct {p0}, La/f;->Y()Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    :cond_17
    sget-boolean v2, Lc/k;->v:Z

    if-ne v2, v0, :cond_21

    invoke-direct {p0}, La/f;->E()V

    invoke-direct {p0}, La/f;->e0()V

    :cond_21
    invoke-direct {p0}, La/f;->l()V

    invoke-direct {p0}, La/f;->c0()V

    iget-object v0, p0, La/f;->a:Lc/h;

    invoke-static {}, La/f;->y()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0, v2}, Ld/c;->a(Lc/h;Ljava/io/InputStream;)Z

    sget v0, Lc/k;->F:I

    sget v2, Lc/b;->G:I

    if-ne v0, v2, :cond_5e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/f;->k:Ljava/util/ArrayList;

    const-string v2, "AP_ETRA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f;->k:Ljava/util/ArrayList;

    const-string v2, "AP_ETRB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f;->k:Ljava/util/ArrayList;

    const-string v2, "AP_ETRC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f;->k:Ljava/util/ArrayList;

    const-string v2, "AP_DCVS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/f;->k:Ljava/util/ArrayList;

    const-string v2, "AP_ETRT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5e} :catch_bf

    :cond_5e
    sget-boolean v0, Lc/k;->B:Z

    if-eqz v0, :cond_6a

    sget-object v0, La/f;->v:Landroid/content/Context;

    invoke-static {v0}, La/j;->c(Landroid/content/Context;)La/j;

    move-result-object v0

    sput-object v0, La/f;->y:La/j;

    :cond_6a
    invoke-static {}, Ld/c;->c()Z

    move-result v0

    sput-boolean v0, La/f;->C:Z

    iget-object v2, p0, La/f;->a:Lc/h;

    invoke-virtual {v2, v0}, Lc/h;->o(Z)V

    sget-boolean v0, La/f;->C:Z

    if-eqz v0, :cond_bb

    sget-object v0, La/f;->y:La/j;

    if-eqz v0, :cond_8e

    sget-object v1, Lc/k;->h0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, La/j;->d(Ljava/util/LinkedHashMap;)V

    sget-object v0, La/f;->y:La/j;

    sget-object v1, Lc/k;->i0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, La/j;->d(Ljava/util/LinkedHashMap;)V

    sget-object v0, La/f;->y:La/j;

    invoke-virtual {v0}, La/j;->h()Z

    :cond_8e
    invoke-direct {p0}, La/f;->b0()V

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "make ParamBuffer"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, La/f;->i:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCmcc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, La/f;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, La/f;->j()V

    sget-boolean p0, La/f;->C:Z

    return p0

    :cond_bb
    invoke-direct {p0}, La/f;->f0()V

    return v1

    :catch_bf
    move-exception v0

    sget-object v2, La/f;->u:Ljava/lang/String;

    const-string v3, "It fails to parse policy XML. Please confirm that XML is well formed."

    invoke-static {v2, v3}, La/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, La/f;->f0()V

    return v1
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    sget-object v1, La/f;->u:Ljava/lang/String;

    const-string v2, "SendDbgParam : "

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lc/k;->F:I

    sget v3, Lc/b;->G:I

    const-string v8, "0.0"

    const-string v9, "sec"

    if-eq v2, v3, :cond_5e

    iget-boolean v2, v0, La/f;->h:Z

    if-nez v2, :cond_5e

    iget-object v2, v0, La/f;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_5e

    new-instance v0, La/o;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v10, "ph"

    const-string v12, ""

    const-string v14, ""

    const-string v15, "com.samsung.android.hqm"

    move-object v4, v0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    invoke-direct/range {v4 .. v15}, La/o;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add ParamBuffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.samsung.android.hqm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_5e
    move-object/from16 v3, p1

    move-object/from16 v7, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v6, "ph"

    const-string v10, ""

    const-string v11, ""

    const-string v12, "com.samsung.android.hqm"

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v7, p2

    move-object v8, v10

    move-object/from16 v9, p3

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, La/f;->S(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public R(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25

    move-object v0, p0

    sget v1, Lc/k;->F:I

    sget v2, Lc/b;->G:I

    if-eq v1, v2, :cond_58

    iget-boolean v1, v0, La/f;->h:Z

    if-nez v1, :cond_58

    iget-object v1, v0, La/f;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_58

    new-instance v0, La/o;

    const/4 v3, 0x0

    const-string v14, "com.samsung.android.hqm"

    move-object v2, v0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object v13, v14

    invoke-direct/range {v2 .. v13}, La/o;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add ParamBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_58
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    const/4 v1, 0x0

    const-string v11, "com.samsung.android.hqm"

    move-object v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, La/f;->S(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public T(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    const-string v1, "SHLD"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_24

    sget-object v2, Lc/k;->D:Ljava/lang/String;

    const-string v3, "shld"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, La/f;->u:Ljava/lang/String;

    const-string v3, "analyze using shield"

    invoke-static {v2, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, La/f;->b:Lb/h;

    invoke-virtual {v0, v1}, Lb/h;->u(Ljava/lang/String;)V

    :cond_23
    return v13

    :cond_24
    const-string v1, ""

    move-object/from16 v2, p10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "com.samsung.android.hqm"

    move-object v14, v1

    goto :goto_33

    :cond_32
    move-object v14, v2

    :goto_33
    sget v1, Lc/k;->F:I

    sget v2, Lc/b;->G:I

    if-eq v1, v2, :cond_85

    iget-boolean v1, v0, La/f;->h:Z

    if-nez v1, :cond_85

    iget-object v15, v0, La/f;->i:Ljava/util/ArrayList;

    if-eqz v15, :cond_85

    new-instance v11, La/o;

    const/4 v1, 0x1

    move-object v0, v11

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v13, v11

    move-object v11, v14

    invoke-direct/range {v0 .. v11}, La/o;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, La/f;->u:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add ParamBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_85
    move-object/from16 v3, p2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v11, v14

    invoke-direct/range {v0 .. v11}, La/f;->S(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public U()V
    .registers 3

    sget-object v0, La/f;->u:Ljava/lang/String;

    const-string v1, "sendLogStatInfo"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, La/f;->c()V

    invoke-direct {p0}, La/f;->d()V

    return-void
.end method

.method public V(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, La/f;->b:Lb/h;

    invoke-virtual {p0, p1, p2, p3}, Lb/h;->p(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public X()V
    .registers 5

    invoke-direct {p0}, La/f;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string v0, "already set frst"

    invoke-static {p0, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {p0}, La/f;->r()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    const-string v1, "factroy reset"

    sget-object v2, La/f;->u:Ljava/lang/String;

    const-string v3, "setCheckFactoryReset "

    invoke-static {v2, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_30

    goto :goto_33

    :catch_30
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_33
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {p0}, La/f;->t()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    if-nez p1, :cond_13

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string p1, "dqaMode is null"

    invoke-static {p0, p1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_22

    :try_start_17
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_23

    goto :goto_26

    :catch_22
    const/4 p0, 0x0

    :catch_23
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_26
    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {p0}, La/f;->v()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    if-nez p1, :cond_13

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string p1, "extraInfo is null"

    invoke-static {p0, p1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_22

    :try_start_17
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_23

    goto :goto_26

    :catch_22
    const/4 p0, 0x0

    :catch_23
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_26
    return-void
.end method

.method public d0(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {p0}, La/f;->D()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    if-nez p1, :cond_13

    sget-object p0, La/f;->u:Ljava/lang/String;

    const-string p1, "TestDivision is null"

    invoke-static {p0, p1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const/4 p0, 0x1

    sput-boolean p0, Lc/k;->A:Z

    :try_start_16
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_25

    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_26

    goto :goto_29

    :catch_25
    const/4 p0, 0x0

    :catch_26
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_29
    return-void
.end method

.method public g0(Landroid/os/HWParamResultData;)Ljava/lang/String;
    .registers 7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_28
    const-string v1, "?????"

    :goto_2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getInterfaceType()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3b

    const-string v1, " - ? "

    :goto_37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_3b
    if-nez v1, :cond_40

    const-string v1, " - K "

    goto :goto_37

    :cond_40
    if-ne v1, v3, :cond_45

    const-string v1, " - A "

    goto :goto_37

    :cond_45
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    const-string v1, " - I "

    goto :goto_37

    :cond_4b
    :goto_4b
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v0, "| "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getFeature()Ljava/lang/String;

    move-result-object v0

    const-string v2, " | "

    if-eqz v0, :cond_77

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getFeature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getHitType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getHitType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompVer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_97
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompManufacture()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getCompManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a7
    const-string v0, "|\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, La/g;->j:Z

    if-eq v0, v3, :cond_b4

    sget-boolean v0, La/g;->k:Z

    if-ne v0, v3, :cond_109

    :cond_b4
    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getLogMaps()Ljava/lang/String;

    move-result-object v0

    const-string v2, " - "

    const-string v3, "   "

    if-eqz v0, :cond_df

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getLogMaps()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_df
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getEnvLogMaps()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_109

    invoke-virtual {p1}, Landroid/os/HWParamResultData;->getEnvLogMaps()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h0(J)V
    .registers 3

    iget-object p0, p0, La/f;->a:Lc/h;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lc/h;->w(J)V

    :cond_7
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_10

    iget-object v0, p0, La/f;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    iget-object p0, p0, La/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i0()V
    .registers 1

    iget-object p0, p0, La/f;->a:Lc/h;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lc/h;->x()V

    :cond_7
    return-void
.end method
