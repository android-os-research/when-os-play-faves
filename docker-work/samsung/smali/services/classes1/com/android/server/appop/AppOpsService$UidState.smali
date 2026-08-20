.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidState"
.end annotation


# instance fields
.field public appWidgetVisible:Z

.field public capability:I

.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingAppWidgetVisible:Z

.field public pendingCapability:I

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public setOpUids:Landroid/util/SparseIntArray;

.field public state:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .registers 3

    .line 600
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2bc

    .line 582
    iput p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 583
    iput p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 601
    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 606
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 608
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 695
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 696
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 697
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_2c

    .line 698
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v1, :cond_29

    if-nez v2, :cond_20

    .line 700
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 702
    :cond_20
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 706
    :cond_2c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_68

    .line 707
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_36
    if-ltz v0, :cond_68

    .line 708
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 709
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_46
    if-ltz v4, :cond_65

    .line 710
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-ne v5, v1, :cond_62

    if-nez v2, :cond_5b

    .line 712
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 714
    :cond_5b
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p0, v5, p1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    :cond_62
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    :cond_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 719
    :cond_68
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public final evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 680
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-eqz p2, :cond_28

    .line 682
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_13
    if-nez v0, :cond_28

    if-ltz v1, :cond_28

    .line 683
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_25

    .line 685
    iput-boolean v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    move v0, v2

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 690
    :cond_28
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public evalMode(II)I
    .registers 9

    const/4 v0, 0x4

    if-ne p2, v0, :cond_f5

    .line 620
    iget-boolean p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    return v1

    .line 622
    :cond_9
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object p2

    iget v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 623
    invoke-virtual {p2, v2}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result p2

    if-eqz p2, :cond_20

    return v1

    .line 625
    :cond_20
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object p2

    if-eqz p2, :cond_37

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object p2

    iget v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 626
    invoke-virtual {p2, v2}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result p2

    if-eqz p2, :cond_37

    return v1

    .line 628
    :cond_37
    iget p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v2, 0xc8

    if-gt p2, v2, :cond_3e

    return v1

    .line 631
    :cond_3e
    invoke-static {p1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v2

    const-string v3, ", capability - "

    const-string v4, "AppOps"

    const/4 v5, 0x1

    if-gt p2, v2, :cond_ce

    if-eqz p1, :cond_a9

    if-eq p1, v5, :cond_a9

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_83

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_5e

    const/16 p2, 0x29

    if-eq p1, p2, :cond_a9

    const/16 p2, 0x2a

    if-eq p1, p2, :cond_a9

    return v1

    .line 656
    :cond_5e
    iget p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_64

    return v1

    .line 659
    :cond_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "evalMode() Foreground Record OP returned IGNORE, uid - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 647
    :cond_83
    iget p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8a

    return v1

    .line 650
    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "evalMode() Foreground Camera OP returned IGNORE, uid - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 638
    :cond_a9
    iget p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/2addr p1, v5

    if-eqz p1, :cond_af

    return v1

    .line 641
    :cond_af
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "evalMode() Foreground Location OP returned IGNORE, uid - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 669
    :cond_ce
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "evalMode() Foreground mode : uid - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", op - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_f5
    return p2
.end method

.method public isDefault()Z
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_14

    .line 613
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_20

    :cond_14
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_20

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne p0, v1, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method
