.class public Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 1627
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1632
    iget-object v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_11

    goto :goto_53

    .line 1635
    :cond_11
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1638
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-void

    .line 1642
    :cond_2a
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmPendingForegroundAppPackageName(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)V

    .line 1643
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmPendingForegroundAppCategory(Lcom/android/server/display/AutomaticBrightnessController;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_53

    .line 1645
    :try_start_35
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmPackageManager(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1647
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fputmPendingForegroundAppCategory(Lcom/android/server/display/AutomaticBrightnessController;I)V
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_48} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_48} :catch_53

    .line 1651
    :catch_48
    :try_start_48
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessController;->-$$Nest$fgetmHandler(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_53

    nop

    :catch_53
    :cond_53
    :goto_53
    return-void
.end method
