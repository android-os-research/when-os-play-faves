.class public final Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
.super Landroid/rotationresolver/RotationResolverInternal;
.source "RotationResolverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rotationresolver/RotationResolverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-direct {p0}, Landroid/rotationresolver/RotationResolverInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    return-void
.end method


# virtual methods
.method public isRotationResolverSupported()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$000(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v2, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$100(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 190
    :try_start_f
    iget-object v3, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-static {v3}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$fgetmPrivacyManager(Lcom/android/server/rotationresolver/RotationResolverManagerService;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    move v3, v4

    .line 192
    :goto_20
    iget-object v0, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v5, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    if-eqz v5, :cond_54

    if-eqz v3, :cond_54

    .line 195
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 194
    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {v0, v3}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->access$200(Lcom/android/server/rotationresolver/RotationResolverManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-nez p2, :cond_42

    .line 198
    new-instance v10, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v4, ""

    const/4 v7, 0x1

    move-object v3, v10

    move v5, p4

    move v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    goto :goto_4e

    .line 202
    :cond_42
    new-instance v10, Landroid/service/rotationresolver/RotationResolutionRequest;

    const/4 v7, 0x1

    move-object v3, v10

    move-object v4, p2

    move v5, p4

    move v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    :goto_4e
    move-object/from16 v3, p7

    .line 206
    invoke-virtual {v0, p1, v10, v3}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    goto :goto_72

    :cond_54
    if-eqz v3, :cond_60

    .line 210
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Rotation Resolver service is disabled."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 212
    :cond_60
    invoke-static {}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Camera is locked by a toggle."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_69
    invoke-interface {p1, v4}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    const/4 v0, 0x6

    move v1, p3

    move v3, p4

    .line 215
    invoke-static {p3, p4, v0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->logRotationStats(III)V

    .line 217
    :goto_72
    monitor-exit v2

    return-void

    :catchall_74
    move-exception v0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_f .. :try_end_76} :catchall_74

    throw v0
.end method
