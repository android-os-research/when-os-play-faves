.class Lcom/android/server/ssrm/PalmInputEventChecker$1;
.super Ljava/lang/Object;
.source "PalmInputEventChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PalmInputEventChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/PalmInputEventChecker;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/PalmInputEventChecker;

    .line 92
    iput-object p1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "isPalmTouched":Z
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-boolean v1, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 97
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iput v2, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mTouchDownCount:I

    .line 99
    :cond_c
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget v1, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mTouchDownCount:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_14

    .line 100
    const/4 v0, 0x1

    .line 103
    :cond_14
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-boolean v1, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    if-eq v1, v0, :cond_37

    .line 104
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iput-boolean v0, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.ssrm.inputevent"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-boolean v3, v3, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    const-string v4, "palm_touch"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iget-object v3, v3, Lcom/android/server/ssrm/PalmInputEventChecker;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 114
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_37
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker$1;->this$0:Lcom/android/server/ssrm/PalmInputEventChecker;

    iput-boolean v2, v1, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    .line 115
    return-void
.end method
