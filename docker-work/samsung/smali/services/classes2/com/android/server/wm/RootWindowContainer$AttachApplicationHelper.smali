.class public Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;
.super Ljava/lang/Object;
.source "RootWindowContainer.java"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachApplicationHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public mApp:Lcom/android/server/wm/WindowProcessController;

.field public mHasActivityStarted:Z

.field public mRemoteException:Landroid/os/RemoteException;

.field public mTop:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .registers 2

    .line 4238
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 4268
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 4271
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    return-void

    .line 4275
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 4276
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 4238
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->accept(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public process(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4252
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 4253
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_a
    if-ltz p1, :cond_1f

    .line 4254
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 4255
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    if-nez v0, :cond_1e

    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    .line 4256
    :cond_1e
    throw v0

    .line 4259
    :cond_1f
    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z

    if-nez p1, :cond_2a

    .line 4260
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 4263
    :cond_2a
    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 4245
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z

    const/4 v0, 0x0

    .line 4246
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    .line 4247
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 4248
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 4281
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_67

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_67

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_67

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 4283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_67

    :cond_2a
    const/4 v0, 0x1

    .line 4288
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mApp:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p1, :cond_41

    .line 4289
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_41

    move v4, v0

    goto :goto_42

    :cond_41
    move v4, v1

    .line 4288
    :goto_42
    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 4291
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mHasActivityStarted:Z
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_4b

    :cond_4a
    return v1

    :catch_4b
    move-exception p1

    .line 4294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in new application when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4295
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->mRemoteException:Landroid/os/RemoteException;

    return v0

    :cond_67
    :goto_67
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 4238
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$AttachApplicationHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
