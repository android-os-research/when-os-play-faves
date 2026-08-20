.class public Lcom/android/server/textclassifier/TextClassificationManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyPackageInstallStatusChange(Ljava/lang/String;Z)V
    .registers 5

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 225
    :try_start_b
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    .line 226
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 228
    invoke-static {p0, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$monPackageInstallStatusChangeLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Z)V

    .line 230
    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    const/4 p2, 0x1

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 4

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 214
    :try_start_b
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    .line 215
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 217
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$monPackageModifiedLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    .line 219
    :cond_1a
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    const/4 p2, 0x0

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    return-void
.end method
