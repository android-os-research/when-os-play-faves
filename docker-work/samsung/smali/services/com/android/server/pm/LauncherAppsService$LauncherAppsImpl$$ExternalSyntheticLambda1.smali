.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;->f$2:Landroid/os/UserHandle;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$lambda$LiOcpzW44rUjKCLSavhpG1QnfyM(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
