.class public Lcom/android/server/wm/ActivityRecordGroup;
.super Ljava/lang/Object;
.source "ActivityRecordGroup.java"


# static fields
.field public static final CENTER:I = 0x2

.field public static final DIVIDER_WIDTH:I = 0x0

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mReturnBounds:Landroid/graphics/Rect;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mZone:I


# direct methods
.method public static synthetic $r8$lambda$LGacryIUq2uKlO-hN7iusFa-0Mc(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecordGroup;->lambda$topRunningActivity$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;I)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mReturnBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    .line 56
    iput p2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    return-void
.end method

.method public static synthetic lambda$topRunningActivity$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5

    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v0

    if-nez v0, :cond_40

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result v0

    const v1, 0x7fffffff

    if-ne p2, v1, :cond_23

    .line 69
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 70
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecordGroup;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_28

    :cond_23
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_28

    const/4 p2, 0x0

    .line 76
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->onActivityGroupChanged(Lcom/android/server/wm/ActivityRecordGroup;)V

    if-nez v0, :cond_3f

    .line 79
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 80
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->enterSplitActivityMode(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3f
    return-void

    .line 61
    :cond_40
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n callers="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xf

    const-string p1, "\n"

    .line 64
    invoke-static {p0, p1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final dismiss()V
    .registers 4

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_17

    .line 122
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecordGroup;->removeChild(Lcom/android/server/wm/ActivityRecord;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 258
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 259
    iget v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    const/4 v0, 0x2

    aput-object p0, p2, v0

    const-string p0, "ActivityRecordGroup{zone=%s, bounds=%s, children=%s}"

    .line 259
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecordGroup;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1a

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_31

    .line 243
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllActivities(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 246
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_31

    .line 248
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllActivities(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_31
    return-void
.end method

.method public forAllActivities(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecordGroup;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public forAllActivities(Ljava/util/function/Predicate;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 221
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_b
    if-ltz v2, :cond_3a

    .line 222
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 226
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_26
    if-ge v3, v2, :cond_3a

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    return v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_3a
    return v0
.end method

.method public final getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecordGroup;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecordGroup;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    if-eqz p2, :cond_21

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_3f

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-ne v1, p3, :cond_17

    return-object p3

    .line 194
    :cond_17
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 200
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_3f

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-ne v2, p3, :cond_35

    return-object p3

    .line 206
    :cond_35
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3c

    return-object v2

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mReturnBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getActivityGroups()Lcom/android/server/wm/ActivityRecordGroups;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecordGroups;->getOppositeGroup(I)Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    return-object p0
.end method

.method public getOppositeResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 311
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 312
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public isRootOfActivityGroup(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 294
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public removeChild(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 8

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_12

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecordGroup;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 89
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 90
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v2, :cond_3b

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 92
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 93
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 95
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 100
    :cond_3b
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->onActivityGroupChanged(Lcom/android/server/wm/ActivityRecordGroup;)V

    if-nez p2, :cond_64

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_64

    .line 106
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result p1

    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p2

    if-eqz p2, :cond_55

    .line 111
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecordGroup;->dismiss()V

    :cond_55
    if-eqz p1, :cond_64

    .line 114
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result p1

    if-nez p1, :cond_64

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->exitSplitActivityMode()V

    :cond_64
    return-void

    .line 102
    :cond_65
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a child of container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordGroup;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public removeTargetActivities(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 316
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTargetSplitActivities()Ljava/util/List;

    move-result-object p0

    .line 317
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_56

    .line 318
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 319
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 320
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3a

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-eqz v3, :cond_3a

    .line 321
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_3a

    :cond_38
    move v3, v4

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v3, v1

    :goto_3b
    if-eqz v3, :cond_4a

    .line 323
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getSourceSplitActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 324
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->setSourceSplitActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz v3, :cond_53

    .line 326
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityRecord;->addTargetSplitActivities(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_53

    .line 329
    :cond_4a
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setRequestFinishFromSourceActivity(Z)V

    const-string/jumbo v3, "remove-source"

    .line 330
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_53
    :goto_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 334
    :cond_56
    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x0

    .line 335
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityRecord;->setSourceSplitActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public setResumedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRecordGroup{mTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecordGroup;->zoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResumedActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecordGroup;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    if-eqz p1, :cond_c

    .line 172
    new-instance p1, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecordGroup;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    .line 174
    :cond_c
    new-instance p1, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/wm/ActivityRecordGroup$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecordGroup;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    .line 134
    iget v2, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_22

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    iput v4, p0, Landroid/graphics/Rect;->left:I

    .line 136
    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 137
    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    div-int/2addr v0, v3

    add-int/2addr p2, v0

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 138
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_22
    const/4 v5, 0x1

    if-ne v2, v5, :cond_37

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    add-int/2addr v0, v4

    div-int/2addr v0, v3

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 143
    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 144
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 145
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_37
    if-ne v2, v3, :cond_4e

    .line 149
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mBounds:Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 150
    iput v4, p0, Landroid/graphics/Rect;->top:I

    .line 151
    iget p2, p2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p2, v0

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 152
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 155
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActivityRecordGroup has wrong zone : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zone()I
    .registers 1

    .line 254
    iget p0, p0, Lcom/android/server/wm/ActivityRecordGroup;->mZone:I

    return p0
.end method

.method public final zoneToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_26

    const/4 p0, 0x1

    if-eq p1, p0, :cond_23

    const/4 p0, 0x2

    if-ne p1, p0, :cond_b

    const-string p0, "CENTER"

    return-object p0

    .line 286
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong zone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    const-string p0, "RIGHT"

    return-object p0

    :cond_26
    const-string p0, "LEFT"

    return-object p0
.end method
