.class public Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedStrongAuthTracker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 447
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .registers 2

    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 461
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public handleStrongAuthRequiredChanged(II)V
    .registers 3

    .line 452
    monitor-enter p0

    .line 453
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    .line 454
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .registers 2

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method
