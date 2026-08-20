.class public La/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static b:Landroid/content/Context; = null

.field private static c:La/d; = null

.field private static d:Ljava/util/ArrayList; = null

.field private static final e:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, La/d;->b:Landroid/content/Context;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, La/d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)La/d;
    .registers 3

    const-class v0, La/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, La/d;->c:La/d;

    if-nez v1, :cond_e

    new-instance v1, La/d;

    invoke-direct {v1, p0}, La/d;-><init>(Landroid/content/Context;)V

    sput-object v1, La/d;->c:La/d;

    :cond_e
    sget-object p0, La/d;->c:La/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, La/c;

    invoke-direct {v0, p1, p2}, La/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, La/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x3e8

    if-le p1, p2, :cond_16

    sget-object p1, La/d;->d:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_16
    sget-object p1, La/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/io/PrintWriter;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object p2, La/d;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2a

    sget-object p2, La/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c;

    invoke-virtual {v0}, La/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
