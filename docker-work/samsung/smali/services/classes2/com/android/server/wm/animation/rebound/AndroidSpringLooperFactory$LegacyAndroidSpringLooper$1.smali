.class public Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->-$$Nest$fgetmStarted(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    iget-object v0, v0, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    if-nez v0, :cond_f

    goto :goto_35

    .line 62
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 63
    iget-object v2, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    iget-object v3, v2, Lcom/android/server/wm/animation/rebound/SpringLooper;->mSpringSystem:Lcom/android/server/wm/animation/rebound/BaseSpringSystem;

    invoke-static {v2}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->-$$Nest$fgetmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/animation/rebound/BaseSpringSystem;->loop(D)V

    .line 64
    iget-object v2, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->-$$Nest$fputmLastTime(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;J)V

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {v0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->-$$Nest$fgetmHandler(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-static {p0}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->-$$Nest$fgetmLooperRunnable(Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_35
    :goto_35
    return-void
.end method
