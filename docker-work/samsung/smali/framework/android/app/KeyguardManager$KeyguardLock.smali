.class public Landroid/app/KeyguardManager$KeyguardLock;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardLock"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 418
    iput-object p1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    .line 421
    const-string v0, "#"

    if-eqz p2, :cond_2c

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    goto :goto_43

    .line 424
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    .line 427
    :goto_43
    return-void
.end method


# virtual methods
.method public whitelist disableKeyguard()V
    .registers 5

    .line 445
    const v0, 0x8d03

    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 447
    iget-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v3}, Landroid/app/KeyguardManager;->-$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2d

    .line 449
    goto :goto_2e

    .line 448
    :catch_2d
    move-exception v0

    .line 450
    :goto_2e
    return-void
.end method

.method public whitelist reenableKeyguard()V
    .registers 5

    .line 467
    const v0, 0x8d03

    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 469
    iget-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v2}, Landroid/app/KeyguardManager;->-$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_2b

    .line 471
    goto :goto_2c

    .line 470
    :catch_2b
    move-exception v0

    .line 472
    :goto_2c
    return-void
.end method
