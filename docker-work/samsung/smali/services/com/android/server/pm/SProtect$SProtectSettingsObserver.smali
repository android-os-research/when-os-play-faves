.class public final Lcom/android/server/pm/SProtect$SProtectSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SProtect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SProtect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SProtectSettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SProtect;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SProtect;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/SProtect$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/SProtect;

    .line 79
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 83
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 85
    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmSProtectLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 87
    :try_start_e
    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "app_lock_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    move v1, v0

    .line 88
    :cond_21
    invoke-static {}, Lcom/android/server/pm/SProtect;->resetSProtectList()V

    .line 89
    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmAppLockEnabled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eq p1, v1, :cond_35

    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmAppLockEnabled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_35
    if-eqz v1, :cond_4e

    .line 91
    iget-object p1, p0, Lcom/android/server/pm/SProtect$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/SProtect;

    const-string/jumbo v0, "ssecure_hidden_apps_packages"

    invoke-static {p1, v0}, Lcom/android/server/pm/SProtect;->-$$Nest$mgetSprotectList(Lcom/android/server/pm/SProtect;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/SProtect;->-$$Nest$sfputmHiddenPackages(Landroid/util/ArraySet;)V

    .line 92
    iget-object p0, p0, Lcom/android/server/pm/SProtect$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/SProtect;

    const-string p1, "applock_locked_apps_packages"

    invoke-static {p0, p1}, Lcom/android/server/pm/SProtect;->-$$Nest$mgetSprotectList(Lcom/android/server/pm/SProtect;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/SProtect;->-$$Nest$sfputmLockedPackages(Landroid/util/ArraySet;)V

    :cond_4e
    const-string p0, "SProtect"

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnChange AppLock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mAppLock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmAppLockEnabled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_e .. :try_end_74} :catchall_80

    .line 96
    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmSProtectLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_80
    move-exception p0

    invoke-static {}, Lcom/android/server/pm/SProtect;->-$$Nest$sfgetmSProtectLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 97
    throw p0
.end method
