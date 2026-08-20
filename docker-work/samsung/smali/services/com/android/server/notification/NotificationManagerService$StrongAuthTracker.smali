.class public Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrongAuthTracker"
.end annotation


# instance fields
.field public mIsInLockDownMode:Z

.field public mUserInLockDownMode:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;)V
    .registers 3

    .line 2282
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2283
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 2279
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 2280
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z

    return-void
.end method


# virtual methods
.method public final containsFlag(II)Z
    .registers 3

    and-int p0, p1, p2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isInLockDownMode()Z
    .registers 1

    .line 2291
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z

    return p0
.end method

.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 4

    monitor-enter p0

    .line 2296
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->containsFlag(II)Z

    move-result v0

    .line 2298
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2299
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mUserInLockDownMode:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 2301
    :goto_1c
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_34

    if-ne p1, v0, :cond_22

    .line 2302
    monitor-exit p0

    return-void

    :cond_22
    if-eqz v0, :cond_29

    .line 2306
    :try_start_24
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelNotificationsWhenEnterLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2314
    :cond_29
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->mIsInLockDownMode:Z

    if-nez v0, :cond_32

    .line 2317
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StrongAuthTracker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpostNotificationsWhenExitLockDownMode(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_34

    .line 2319
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
