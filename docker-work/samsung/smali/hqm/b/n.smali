.class public Lb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/m;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "n"

.field private static c:Lb/n; = null

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/LinkedHashMap; = null

.field private static f:Ljava/util/LinkedHashMap; = null

.field private static final g:I = 0x0

.field private static final h:Z = false

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/n;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lb/n;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lb/n;->f:Ljava/util/LinkedHashMap;

    const-string v0, "sec."

    const-string v1, "samsung."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lb/n;->i:[Ljava/lang/String;

    const-string v2, "com."

    const-string v3, "app."

    const-string v4, "android."

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/n;->j:[Ljava/lang/String;

    const-string v1, "launcher"

    const-string v2, "contacts"

    const-string v3, "myfiles"

    const-string v4, "messaging"

    const-string v5, "camera"

    const-string v6, "gallery3d"

    const-string v7, "settings"

    const-string v8, "video"

    const-string v9, "calendar"

    const-string v10, "sbrowser"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/n;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Lb/n;->e()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lb/n;->j:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p2, Lb/n;->i:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_18

    aget-object v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    move p2, v3

    goto :goto_19

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    move p2, v1

    :goto_19
    if-nez p2, :cond_1c

    return-void

    :cond_1c
    sget-object p2, Lb/n;->d:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1f
    const-string v0, ":"

    const-string v2, "/"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_43

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_43

    aget-object v0, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_44

    :cond_43
    move p1, v1

    :goto_44
    if-nez v4, :cond_48

    monitor-exit p2

    return-void

    :cond_48
    sget-object v0, Lb/n;->k:[Ljava/lang/String;

    array-length v2, v0

    :goto_4b
    if-ge v1, v2, :cond_63

    aget-object v3, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_60

    sget-object v5, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-direct {p0, v3, p1}, Lb/n;->g(Ljava/lang/String;I)V

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_63
    monitor-exit p2

    return-void

    :catchall_65
    move-exception p0

    monitor-exit p2
    :try_end_67
    .catchall {:try_start_1f .. :try_end_67} :catchall_65

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lb/n;
    .registers 3

    const-class v0, Lb/n;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/n;->c:Lb/n;

    if-nez v1, :cond_e

    new-instance v1, Lb/n;

    invoke-direct {v1, p0}, Lb/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/n;->c:Lb/n;

    :cond_e
    sget-object p0, Lb/n;->c:Lb/n;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e()V
    .registers 6

    sget-object p0, Lb/n;->k:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_16

    aget-object v2, p0, v1

    new-instance v3, Lb/m;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lb/m;-><init>(Ljava/lang/String;Lb/l;)V

    sget-object v4, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method private f()V
    .registers 5

    sget-object p0, Lb/n;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lb/n;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/m;

    sget-object v1, Lb/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lb/m;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_39
    return-void
.end method

.method private g(Ljava/lang/String;I)V
    .registers 3

    sget-object p0, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/m;

    invoke-static {p0, p2}, Lb/m;->a(Lb/m;I)V

    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_5

    invoke-direct {p0, p2, p3}, Lb/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public h()V
    .registers 8

    sget-object v0, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lb/n;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    const-string v1, "HQM"

    const-string v2, "PALT"

    const-string v3, "ph"

    const/4 v4, 0x0

    new-instance v5, La/i;

    invoke-direct {v5, v1, v2, v3}, La/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/m;

    add-int/lit8 v4, v4, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lb/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, La/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_51
    invoke-virtual {v5}, La/i;->d()V

    sget-object v1, Lb/n;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-direct {p0}, Lb/n;->e()V

    monitor-exit v0

    return-void

    :catchall_5e
    move-exception p0

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_5e

    throw p0
.end method
