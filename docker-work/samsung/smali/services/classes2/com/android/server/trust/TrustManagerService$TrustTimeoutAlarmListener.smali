.class public abstract Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TrustTimeoutAlarmListener"
.end annotation


# instance fields
.field public mIsQueued:Z

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 3

    .line 2081
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2079
    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 2082
    iput p2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    return-void
.end method


# virtual methods
.method public abstract handleAlarm()V
.end method

.method public isQueued()Z
    .registers 1

    .line 2101
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    return p0
.end method

.method public onAlarm()V
    .registers 4

    const/4 v0, 0x0

    .line 2087
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->handleAlarm()V

    .line 2090
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmStrongAuthTracker(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2091
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "TrustManagerService"

    const-string v1, "Revoking all trust because of trust timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_1f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmStrongAuthTracker(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 2095
    :cond_30
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-static {v0, p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mmaybeLockScreen(Lcom/android/server/trust/TrustManagerService;I)V

    return-void
.end method

.method public setQueued(Z)V
    .registers 2

    .line 2105
    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    return-void
.end method
