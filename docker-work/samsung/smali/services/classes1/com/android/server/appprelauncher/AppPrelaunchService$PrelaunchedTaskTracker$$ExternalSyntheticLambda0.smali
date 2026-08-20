.class public final synthetic Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

    iput-object p2, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iput p3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;

    iget-object v1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;->$r8$lambda$aKWDz7LayMBkvr-ei3QwAJ6pRfo(Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedTaskTracker;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method
