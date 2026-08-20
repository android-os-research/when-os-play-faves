.class public Lcom/android/server/location/injector/SystemAppForegroundHelper;
.super Lcom/android/server/location/injector/AppForegroundHelper;
.source "SystemAppForegroundHelper.java"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mContext:Landroid/content/Context;

.field public mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

.field public sLocationConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Yq4Uol0cKBkywoHPg9SHJHpQCjk(Lcom/android/server/location/injector/SystemAppForegroundHelper;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onAppForegroundChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$jfxw7iYvgyB4w8Fs_JJYhMU6Qj8(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->lambda$onAppForegroundChanged$0(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/android/server/location/injector/AppForegroundHelper;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onAppForegroundChanged$0(IZ)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_7

    .line 67
    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper;->updateUidForegroundChanged(IZ)V

    .line 70
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/AppForegroundHelper;->notifyAppForeground(IZ)V

    .line 72
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->sLocationConsumer:Ljava/util/function/BiConsumer;

    if-eqz p0, :cond_19

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public isAppForeground(I)Z
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 85
    :try_start_e
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/location/injector/AppForegroundHelper;->isForeground(I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0
.end method

.method public final onAppForegroundChanged(II)V
    .registers 5

    .line 63
    invoke-static {p2}, Lcom/android/server/location/injector/AppForegroundHelper;->isForeground(I)Z

    move-result p2

    .line 64
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_5

    return-void

    .line 56
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 57
    new-instance v1, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemAppForegroundHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemAppForegroundHelper;)V

    const/16 p0, 0x7d

    invoke-virtual {v0, v1, p0}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    return-void
.end method

.method public setISLocationConsumer(Ljava/util/function/BiConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->sLocationConsumer:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public setNSPermissionHelper(Lcom/android/server/location/nsflp/NSPermissionHelper;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppForegroundHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    return-void
.end method
