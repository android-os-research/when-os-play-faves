.class public Lcom/android/server/wm/ActivityTaskManagerService$5;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic val$enterPipRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V
    .registers 3

    .line 4434
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .registers 2

    .line 4437
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$5;->val$enterPipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
