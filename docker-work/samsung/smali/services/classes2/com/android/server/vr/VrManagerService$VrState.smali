.class public Lcom/android/server/vr/VrManagerService$VrState;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VrState"
.end annotation


# instance fields
.field public final callingPackage:Landroid/content/ComponentName;

.field public final defaultPermissionsGranted:Z

.field public final enabled:Z

.field public final processId:I

.field public final running2dInVr:Z

.field public final targetPackageName:Landroid/content/ComponentName;

.field public final timestamp:J

.field public final userId:I


# direct methods
.method public constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 7

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 388
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 389
    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 390
    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 391
    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 392
    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 393
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    return-void
.end method

.method public constructor <init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V
    .registers 8

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 400
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 401
    iput p4, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 402
    iput p5, p0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 403
    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 404
    iput-object p6, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 405
    iput-boolean p7, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    return-void
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 6

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "  "

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "State changed to:"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v1, :cond_24

    const-string v1, "ENABLED"

    goto :goto_26

    :cond_24
    const-string v1, "DISABLED"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    if-eqz v2, :cond_82

    .line 420
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User="

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Current VR Activity="

    .line 425
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    const-string v3, "None"

    if-nez v2, :cond_52

    move-object v2, v3

    goto :goto_56

    :cond_52
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :goto_56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bound VrListenerService="

    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    if-nez v2, :cond_69

    goto :goto_6d

    .line 431
    :cond_69
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 430
    :goto_6d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService$VrState;->defaultPermissionsGranted:Z

    if-eqz p0, :cond_82

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Default permissions granted to the bound VrListenerService."

    .line 435
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
