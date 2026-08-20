.class public Lcom/android/server/vr/RefreshRateModeController$3;
.super Landroid/database/ContentObserver;
.source "RefreshRateModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/RefreshRateModeController;->onSystemServiceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/RefreshRateModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/RefreshRateModeController;Landroid/os/Handler;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 119
    iget-object p1, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {p1}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmLock(Lcom/android/server/vr/RefreshRateModeController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    const-string/jumbo v0, "refresh_rate_mode"

    .line 120
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 121
    iget-object p2, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-virtual {p2}, Lcom/android/server/vr/RefreshRateModeController;->getRefreshRateModeSetting()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fputmRefreshRateMode(Lcom/android/server/vr/RefreshRateModeController;I)V

    .line 122
    invoke-static {}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_40

    const-string p2, "RefreshRateMode"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange mRefreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vr/RefreshRateModeController$3;->this$0:Lcom/android/server/vr/RefreshRateModeController;

    invoke-static {p0}, Lcom/android/server/vr/RefreshRateModeController;->-$$Nest$fgetmRefreshRateMode(Lcom/android/server/vr/RefreshRateModeController;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_40
    monitor-exit p1

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method
