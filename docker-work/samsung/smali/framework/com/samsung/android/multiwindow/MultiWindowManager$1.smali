.class Lcom/samsung/android/multiwindow/MultiWindowManager$1;
.super Landroid/util/Singleton;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/samsung/android/multiwindow/IMultiTaskingBinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 328
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .registers 3

    .line 332
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 333
    :catch_9
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;->create()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    return-object v0
.end method
