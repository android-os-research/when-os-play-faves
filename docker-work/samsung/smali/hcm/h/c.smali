.class public Lh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "c"

.field private static c:Landroid/content/Context;

.field private static d:Lh/c;

.field private static e:Lh/b;

.field private static f:Lc/d;

.field private static g:Landroid/os/BatteryManager;


# instance fields
.field private a:La/d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/c;->a:La/d;

    sget-object v0, Lh/c;->b:Ljava/lang/String;

    const-string v1, "BatteryChecker Start"

    invoke-static {v0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lh/c;->c:Landroid/content/Context;

    invoke-static {p1}, La/d;->b(Landroid/content/Context;)La/d;

    move-result-object v0

    iput-object v0, p0, Lh/c;->a:La/d;

    invoke-static {p1}, Lc/d;->s(Landroid/content/Context;)Lc/d;

    move-result-object p0

    sput-object p0, Lh/c;->f:Lc/d;

    sget-object p0, Lh/c;->c:Landroid/content/Context;

    const-string p1, "batterymanager"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    sput-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lh/c;
    .registers 3

    const-class v0, Lh/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lh/c;->d:Lh/c;

    if-nez v1, :cond_e

    new-instance v1, Lh/c;

    invoke-direct {v1, p0}, Lh/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lh/c;->d:Lh/c;

    :cond_e
    sget-object p0, Lh/c;->d:Lh/c;
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
.method public a()I
    .registers 4

    sget-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    sget-object v0, Lh/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public b()Z
    .registers 4

    sget-object p0, Lh/c;->c:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    sput-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    invoke-virtual {p0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p0

    sget-object v0, Lh/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery Charging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public c()I
    .registers 4

    sget-object p0, Lh/c;->g:Landroid/os/BatteryManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    sget-object v0, Lh/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery Level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public d()I
    .registers 4

    invoke-virtual {p0}, Lh/c;->a()I

    move-result p0

    sget-object v0, Lh/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_20

    const/4 v0, 0x3

    goto :goto_24

    :cond_20
    if-ne p0, v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x4

    :goto_24
    return v0
.end method
