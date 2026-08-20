.class public Lb/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/j;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "k"

.field private static d:Lb/k;

.field private static e:Ljava/util/HashMap;

.field private static f:Ljava/util/HashMap;

.field private static final g:[Ljava/lang/String;

.field private static h:Lb/j;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/k;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/k;->f:Ljava/util/HashMap;

    const-string v0, "system"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/k;->g:[Ljava/lang/String;

    new-instance v0, Lb/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/j;-><init>(Lb/i;)V

    sput-object v0, Lb/k;->h:Lb/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/k;->a:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lb/k;->b:Landroid/app/ActivityManager;

    return-void
.end method

.method private b(La/i;)V
    .registers 6

    sget-object p0, Lb/k;->c:Ljava/lang/String;

    const-string v0, "/proc/buddyinfo"

    const-string v1, "Normal"

    invoke-static {p0, v0, v1}, La/s;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_49

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_28
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_28

    :cond_49
    return-void
.end method

.method private c(La/i;)V
    .registers 3

    invoke-virtual {p0}, Lb/k;->a()V

    sget-object p0, Lb/k;->h:Lb/j;

    invoke-static {p0}, Lb/j;->a(Lb/j;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAMIN"

    invoke-virtual {p1, v0, p0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lb/k;->h:Lb/j;

    invoke-static {p0}, Lb/j;->b(Lb/j;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAMAX"

    invoke-virtual {p1, v0, p0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lb/k;->h:Lb/j;

    invoke-static {p0}, Lb/j;->c(Lb/j;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MAAVG"

    invoke-virtual {p1, v0, p0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lb/k;->h:Lb/j;

    invoke-static {p0}, Lb/j;->d(Lb/j;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MACNT"

    invoke-virtual {p1, v0, p0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lb/k;->h:Lb/j;

    invoke-static {p0}, Lb/j;->e(Lb/j;)V

    return-void
.end method

.method private d(La/i;)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int p0, v0

    div-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x3c

    rem-int/lit8 v0, p0, 0x3c

    div-int/lit8 p0, p0, 0x3c

    rem-int/lit8 v1, p0, 0x18

    div-int/lit8 v2, p0, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ED"

    invoke-virtual {p1, v3, v2}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EH"

    invoke-virtual {p1, v2, v1}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EM"

    invoke-virtual {p1, v1, v0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ETH"

    invoke-virtual {p1, v0, p0}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()I
    .registers 5

    const-string p0, "/proc/meminfo"

    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lb/k;->c:Ljava/lang/String;

    const-string v2, "MemAvailable"

    invoke-static {v1, p0, v2}, La/s;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "kB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2d

    move v0, p0

    goto :goto_4b

    :catch_2d
    move-exception p0

    sget-object v1, Lb/k;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    :goto_4b
    return v0
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Lb/k;
    .registers 3

    const-class v0, Lb/k;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/k;->d:Lb/k;

    if-nez v1, :cond_e

    new-instance v1, Lb/k;

    invoke-direct {v1, p0}, Lb/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/k;->d:Lb/k;

    :cond_e
    sget-object p0, Lb/k;->d:Lb/k;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private g(I)I
    .registers 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/proc/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/smaps_simple"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, -0x1

    :try_start_1c
    sget-object v0, Lb/k;->c:Ljava/lang/String;

    invoke-static {v0, p0}, La/s;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_25

    return p1

    :cond_25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    const-string v3, "kB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_54} :catch_58

    add-int/2addr v0, v1

    goto :goto_2a

    :cond_56
    move p1, v0

    goto :goto_76

    :catch_58
    move-exception p0

    sget-object v0, Lb/k;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_76
    return p1
.end method

.method private i(La/i;)V
    .registers 10

    invoke-direct {p0}, Lb/k;->j()V

    sget-object v0, Lb/k;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Lb/k;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PSS check item :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lb/k;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    if-ge v1, v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lb/k;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lb/k;->g(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    if-eqz v3, :cond_8d

    :cond_6f
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "system"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    const-string v5, "SYSTEM"

    invoke-virtual {p1, v5, v4}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    const-string v5, "systemui"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const-string v3, "SYSTEMUI"

    invoke-virtual {p1, v3, v4}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_90
    return-void
.end method

.method private j()V
    .registers 8

    iget-object p0, p0, Lb/k;->b:Landroid/app/ActivityManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_41

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    sget-object v1, Lb/k;->g:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_15

    aget-object v4, v1, v3

    if-eqz v4, :cond_3e

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    sget-object v6, Lb/k;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_41
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-direct {p0}, Lb/k;->e()I

    move-result p0

    sget-object v0, Lb/k;->h:Lb/j;

    invoke-static {v0, p0}, Lb/j;->f(Lb/j;I)V

    return-void
.end method

.method public h()V
    .registers 5

    new-instance v0, La/i;

    const-string v1, "HQM"

    const-string v2, "MEMI"

    const-string v3, "ph"

    invoke-direct {v0, v1, v2, v3}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lb/k;->i(La/i;)V

    invoke-direct {p0, v0}, Lb/k;->c(La/i;)V

    invoke-direct {p0, v0}, Lb/k;->b(La/i;)V

    invoke-direct {p0, v0}, Lb/k;->d(La/i;)V

    invoke-virtual {v0}, La/i;->d()V

    return-void
.end method
