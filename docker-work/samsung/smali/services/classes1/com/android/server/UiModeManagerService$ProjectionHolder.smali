.class public Lcom/android/server/UiModeManagerService$ProjectionHolder;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProjectionHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;
    }
.end annotation


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mPackageName:Ljava/lang/String;

.field public final mProjectionReleaser:Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

.field public final mProjectionType:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->linkToDeath()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->unlinkToDeath()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;)V
    .registers 5

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1350
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 1351
    iput p2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    .line 1352
    iput-object p3, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    .line 1353
    iput-object p4, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;Lcom/android/server/UiModeManagerService$ProjectionHolder-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 1373
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " died. Releasing projection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

    iget v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;->release(ILjava/lang/String;)Z

    return-void
.end method

.method public final linkToDeath()Z
    .registers 6

    const/4 v0, 0x0

    .line 1358
    :try_start_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    const/4 p0, 0x1

    return p0

    :catch_8
    move-exception v1

    .line 1360
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "linkToDeath failed for projection requester: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final unlinkToDeath()V
    .registers 3

    .line 1368
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
