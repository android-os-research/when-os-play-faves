.class public Lb/b;
.super Lb/a;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "b"

.field private static d:Lb/b;

.field private static e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lb/a;-><init>()V

    sget-object p0, Lb/b;->c:Ljava/lang/String;

    const-string v0, "IpcController Start"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lb/b;->e:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lb/b;
    .registers 3

    const-class v0, Lb/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lb/b;->d:Lb/b;

    if-nez v1, :cond_e

    new-instance v1, Lb/b;

    invoke-direct {v1, p0}, Lb/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/b;->d:Lb/b;

    :cond_e
    sget-object p0, Lb/b;->d:Lb/b;
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
.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lb/d;->h()Z

    move-result p0

    if-nez p0, :cond_e

    sget-object p0, Lb/b;->c:Ljava/lang/String;

    const-string p1, "callState : true"

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    sget-object p0, Lb/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent test / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "dm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.samsung.android.hcm.AI_POWER_SAVING_MODE_REQ"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "action"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p1, La/a;->e0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lb/b;->e:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_51
    return-void
.end method

.method public c(Z)V
    .registers 3

    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    const-string p0, "psm"

    goto :goto_8

    :cond_6
    const-string p0, "normal"

    :goto_8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.hcm.AI_POWER_SAVING_MODE_REQ"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "action"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object p0, La/a;->e0:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lb/b;->e:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
