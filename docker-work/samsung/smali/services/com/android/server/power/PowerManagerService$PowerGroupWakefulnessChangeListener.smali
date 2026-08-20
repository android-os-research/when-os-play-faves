.class public final Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/PowerGroup$PowerGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerGroupWakefulnessChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public static synthetic $r8$lambda$ALRmK3Qt5KAdEWkgfaFJEcUGVig(Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->lambda$onWakefulnessChangedLocked$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 862
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method private synthetic lambda$onWakefulnessChangedLocked$0()V
    .registers 3

    .line 887
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmInternalDisplayOffByPowerKeyIntent(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onWakefulnessChangedLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v11, p5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const/16 v4, 0xd

    if-ne v11, v4, :cond_d

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    move v9, v3

    .line 874
    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/power/PowerGroup;

    const/4 v8, 0x0

    move-wide v6, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z

    .line 877
    :cond_23
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    if-nez v1, :cond_5d

    .line 881
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v3

    .line 882
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v4

    .line 881
    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier;->onInternalDisplayStateChange(Z)V

    .line 884
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsDualViewMode(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-static {p2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v3

    if-nez v3, :cond_5d

    const/4 v3, 0x4

    if-ne v11, v3, :cond_5d

    .line 886
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandlerPmsMisc(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_5d
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v3 .. v10}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdateGlobalWakefulnessLocked(Lcom/android/server/power/PowerManagerService;JIIILjava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 895
    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->getGlobalWakefulnessLocked()I

    move-result v4

    .line 894
    invoke-virtual {v3, p1, p2, v11, v4}, Lcom/android/server/power/Notifier;->onPowerGroupWakefulnessChanged(IIII)V

    .line 896
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method
