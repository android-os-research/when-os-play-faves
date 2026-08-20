.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final synthetic val$asSystemService:Z

.field public final synthetic val$direction:I

.field public final synthetic val$flags:I

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$suggestedStream:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V
    .registers 10

    .line 2437
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    iput p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    iput-object p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 2443
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    if-eqz v0, :cond_19

    .line 2444
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2445
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 2446
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    goto :goto_1f

    .line 2448
    :cond_19
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    .line 2449
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 2450
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    :goto_1f
    move-object v7, v0

    move v8, v1

    move v9, v2

    .line 2453
    :try_start_22
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmAudioManager(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2455
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2453
    invoke-virtual/range {v3 .. v10}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_41} :catch_42

    goto :goto_8d

    :catch_42
    move-exception v0

    .line 2457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot adjust volume: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", suggestedStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystemService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaSessionService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8d
    return-void
.end method
