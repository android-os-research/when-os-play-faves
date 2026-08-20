.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public static synthetic $r8$lambda$hzPYDZrsUSknFabB7DpS9R_L6_I(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->lambda$onFinish$0(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 1913
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinish$0(Z)V
    .registers 6

    .line 1933
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 1935
    :try_start_c
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    const/4 p1, 0x1

    invoke-static {p0, v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;ZZ)V

    goto :goto_3b

    .line 1936
    :cond_13
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->supportApsr()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLfdFix(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3b

    .line 1938
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fputmLfdFix(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;I)V

    .line 1939
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    const-string v2, "fix"

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmLfdFix(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$msetLfdValue(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Ljava/lang/String;I)V

    .line 1940
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p0, v1, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$mupdatePassiveLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;ZZ)V

    .line 1942
    :cond_3b
    :goto_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw p0
.end method


# virtual methods
.method public onFinish(III)V
    .registers 5

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    if-eq p3, p2, :cond_7

    return-void

    :cond_7
    if-ne p1, p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1922
    :goto_b
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmIsDisplayPowerModeOnByDeviceType(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_20

    .line 1924
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_20

    return-void

    .line 1928
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DisplayStateListener#onFinish, isPowerModeOn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", displayType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayModeDirector"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmIsDisplayPowerModeOnByDeviceType(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1932
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$1;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
