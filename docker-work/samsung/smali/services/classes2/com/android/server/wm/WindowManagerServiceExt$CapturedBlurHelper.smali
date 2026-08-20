.class public Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;
.super Ljava/lang/Object;
.source "WindowManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CapturedBlurHelper"
.end annotation


# static fields
.field public static final INTENT_ACTION_SCREEN_ROTATION_ANIMATION_STARTED:Ljava/lang/String; = "com.samsung.android.action.SCREEN_ROTATION_ANIMATION_STARTED"

.field public static final PERMISSION_SCREEN_ROTATION_ANIMATION_STARTED:Ljava/lang/String; = "com.samsung.android.permisson.SCREEN_ROTATION_ANIMATION_STARTED"

.field public static final ROTATION_ANIMATION_MARGIN:I = 0x1e


# instance fields
.field public mBrThread:Ljava/lang/Thread;

.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method public static synthetic $r8$lambda$vetr6P_HmebaKbmsbHOMM7DLJxo(Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;->lambda$broadcastScreenRotationAnimationStarted$0(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerServiceExt;)V
    .registers 2

    .line 720
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$broadcastScreenRotationAnimationStarted$0(J)V
    .registers 7

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.SCREEN_ROTATION_ANIMATION_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "now"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-wide/16 v1, 0x1e

    add-long/2addr p1, v1

    const-string v1, "duration"

    .line 734
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 735
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;->this$0:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "com.samsung.android.permisson.SCREEN_ROTATION_ANIMATION_STARTED"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public broadcastScreenRotationAnimationStarted(J)V
    .registers 5

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;->mBrThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 731
    :cond_a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;J)V

    const-string p1, "ScreenRotationBroadcast"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$CapturedBlurHelper;->mBrThread:Ljava/lang/Thread;

    .line 738
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1b
    return-void
.end method
