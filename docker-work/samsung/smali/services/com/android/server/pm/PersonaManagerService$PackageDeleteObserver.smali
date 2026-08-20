.class public Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field public finished:Z

.field public result:Z

.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .line 3539
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6

    .line 3545
    monitor-enter p0

    const/4 v0, 0x1

    .line 3546
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z

    if-ne p2, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3547
    :goto_8
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->result:Z

    const-string v0, "PersonaManagerService"

    .line 3548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packageDeleted response for package -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3551
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_2e

    throw p1
.end method
