.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;
    }
.end annotation


# static fields
.field public static final MAX_PENDING_REQUESTS:I = 0x14


# instance fields
.field public final mBindServiceFlags:I

.field public mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBoundComponentName:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBoundServiceUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

.field public mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mInstalled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mIsTrusted:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/textclassifier/FixedSizeQueue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Landroid/service/textclassifier/ITextClassifierService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$vhu5Pvhu-nPUjgux-NCZ08eC8-I(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->lambda$new$0(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindIfHasPendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindIfHasPendingRequestsLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mbindLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckRequestAcceptedLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->handlePendingRequestsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageInstallStatusChangeLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->onPackageInstallStatusChangeLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageModifiedLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->onPackageModifiedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->updatePackageStateLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateServiceInfoLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->updateServiceInfoLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V
    .registers 7

    .line 918
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    new-instance p1, Lcom/android/server/textclassifier/FixedSizeQueue;

    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$$ExternalSyntheticLambda0;-><init>()V

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0}, Lcom/android/server/textclassifier/FixedSizeQueue;-><init>(ILcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    const/4 p1, 0x0

    .line 907
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    const/4 p1, -0x1

    .line 910
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 919
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 920
    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 921
    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-direct {p1, p0, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 922
    iput-boolean p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 923
    invoke-virtual {p0, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->createBindServiceFlags(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    .line 924
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isPackageInstalledForUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 925
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService$ServiceState-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 898
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Pending request[%s] is dropped"

    .line 899
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    .line 898
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final bindIfHasPendingRequestsLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final bindLocked()Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "TextClassificationManagerService"

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v1

    if-nez v1, :cond_74

    iget-boolean v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    if-eqz v1, :cond_d

    goto :goto_74

    .line 1040
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1042
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->getTextClassifierServiceComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_6f

    if-nez v3, :cond_1c

    const/4 p0, 0x0

    .line 1057
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 1047
    :cond_1c
    :try_start_1c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1049
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    iget v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    iget v8, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 1051
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1050
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 1053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not bind to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_69
    iput-boolean v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z
    :try_end_6b
    .catchall {:try_start_1c .. :try_end_6b} :catchall_6f

    .line 1057
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_6f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1058
    throw p0

    :cond_74
    :goto_74
    const/4 p0, 0x1

    return p0
.end method

.method public final checkRequestAcceptedLocked(ILjava/lang/String;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1088
    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    if-ne p1, p0, :cond_a

    goto :goto_1b

    :cond_a
    new-array p0, v1, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    const-string p2, "[%s] Non-default TextClassifierServices may only see text from the same uid."

    .line 1091
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "TextClassificationManagerService"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1b
    :goto_1b
    return v1
.end method

.method public final createBindServiceFlags(Ljava/lang/String;)I
    .registers 2

    .line 931
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmDefaultTextClassifierPackage(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const p0, 0x4200001

    goto :goto_13

    :cond_10
    const p0, 0x4000001

    :goto_13
    return p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "context"

    .line 1071
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "userId"

    .line 1072
    iget v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1073
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1e
    const-string/jumbo v1, "packageName"

    .line 1074
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "installed"

    .line 1075
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "enabled"

    .line 1076
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "boundComponentName"

    .line 1077
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "isTrusted"

    .line 1078
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "bindServiceFlags"

    .line 1079
    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "boundServiceUid"

    .line 1080
    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "binding"

    .line 1081
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "numOfPendingRequests"

    .line 1082
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {p0}, Lcom/android/server/textclassifier/FixedSizeQueue;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1083
    monitor-exit v0

    return-void

    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_1e .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final getTextClassifierServiceComponent()Landroid/content/ComponentName;
    .registers 3

    .line 1064
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 1067
    iget-boolean p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    if-eqz p0, :cond_f

    const/high16 p0, 0x100000

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 1064
    :goto_10
    invoke-static {v0, v1, p0}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final handlePendingRequestsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 993
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    if-eqz v0, :cond_7b

    .line 994
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "TextClassificationManagerService"

    if-eqz v1, :cond_4e

    .line 995
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmUid(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 996
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmUid(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I

    move-result v4

    .line 997
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "UID %d is not allowed to see the %s request"

    .line 996
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_6d

    .line 1000
    :cond_46
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmRequest(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_6d

    .line 1003
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind TextClassifierService for PendingRequest "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmName(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmOnServiceFailure(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1008
    :goto_6d
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmBinder(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->-$$Nest$fgetmBinder(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :cond_7b
    return-void
.end method

.method public isBoundLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 987
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEnabledLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 982
    iget-boolean p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    return p0
.end method

.method public isInstalledLocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 977
    iget-boolean p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    return p0
.end method

.method public final isPackageInstalledForUser()Z
    .registers 4

    const/4 v0, 0x0

    .line 939
    :try_start_1
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 940
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_16

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :catch_16
    :cond_16
    return v0
.end method

.method public final isServiceEnabledForUser()Z
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 948
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_21

    const/4 p0, 0x0

    goto :goto_23

    .line 952
    :cond_21
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_23
    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public final onPackageInstallStatusChangeLocked(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 959
    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    return-void
.end method

.method public final onPackageModifiedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 965
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    return-void
.end method

.method public unbindIfBoundLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1024
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    :cond_38
    return-void
.end method

.method public final updatePackageStateLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 971
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isPackageInstalledForUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 972
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    return-void
.end method

.method public final updateServiceInfoLocked(ILandroid/content/ComponentName;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1099
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    if-nez p2, :cond_6

    const/4 p1, -0x1

    goto :goto_10

    .line 1103
    :cond_6
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mresolvePackageToUid(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;I)I

    move-result p1

    :goto_10
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    return-void
.end method
