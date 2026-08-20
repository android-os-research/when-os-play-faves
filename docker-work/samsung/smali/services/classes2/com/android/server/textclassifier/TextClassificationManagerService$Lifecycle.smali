.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public final mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/textclassifier/TextClassificationManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "textclassification"

    .line 117
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mstartListenSettings(Lcom/android/server/textclassifier/TextClassificationManagerService;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->startTrackingPackageChanges()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_1b

    :catchall_13
    move-exception p0

    const-string v0, "TextClassificationManagerService"

    const-string v1, "Could not start the TextClassificationManagerService."

    .line 123
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 129
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->updatePackageStateForUser(I)V

    .line 130
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->processAnyPendingWork(I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 157
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 159
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_b
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->peekUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 162
    invoke-virtual {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->cleanupServiceLocked()V

    .line 163
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 165
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 136
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->updatePackageStateForUser(I)V

    .line 138
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->processAnyPendingWork(I)V

    return-void
.end method

.method public final processAnyPendingWork(I)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_7
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->bindIfHasPendingRequestsLocked()V

    .line 144
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final updatePackageStateForUser(I)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_7
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mupdatePackageStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
