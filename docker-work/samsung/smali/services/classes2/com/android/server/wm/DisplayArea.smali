.class public Lcom/android/server/wm/DisplayArea;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayArea$Type;,
        Lcom/android/server/wm/DisplayArea$Dimmable;,
        Lcom/android/server/wm/DisplayArea$Tokens;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final mFeatureId:I

.field public final mName:Ljava/lang/String;

.field public mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field public final mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public mSetIgnoreOrientationRequest:Z

.field public final mTmpConfiguration:Landroid/content/res/Configuration;

.field public final mType:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 6

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x2

    .line 101
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 102
    iput-object p2, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 103
    iput-object p3, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 105
    new-instance p2, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {p2, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 106
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-void
.end method


# virtual methods
.method public final asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    return-object p0
.end method

.method public asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5

    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 307
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-eqz p3, :cond_1b

    .line 308
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSetIgnoreOrientationRequest=true"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasRequestedOverrideConfiguration()Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 311
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "overrideConfig="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_17
    if-ltz v1, :cond_4f

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    if-nez v2, :cond_24

    goto :goto_4c

    .line 322
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_4c

    .line 327
    :cond_46
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 328
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_4f
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 290
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 294
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 295
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10900000002L

    .line 296
    iget-object p4, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10800000004L

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000005L

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p4

    if-eqz p4, :cond_39

    const/4 p4, 0x1

    goto :goto_3a

    :cond_39
    const/4 p4, 0x0

    :goto_3a
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000006L

    .line 299
    iget p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000007L

    .line 300
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 301
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public fillsParent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .registers 4

    .line 248
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-lez v0, :cond_1c

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    if-ne v1, p1, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .registers 4

    .line 258
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object p1

    const/4 v0, 0x0

    .line 259
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 264
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I
    .registers 5

    .line 233
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v0

    .line 242
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result p0

    .line 244
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 234
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "positionChildAt: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " current parent="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 350
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_7

    return-void

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_12

    add-int/lit8 v1, v0, -0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-ltz v1, :cond_33

    if-ge v1, v0, :cond_33

    .line 385
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 387
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 388
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    :cond_2c
    if-eqz p2, :cond_30

    const/4 v2, -0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x1

    :goto_31
    add-int/2addr v1, v2

    goto :goto_13

    :cond_33
    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)Z"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 361
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_13

    add-int/lit8 v1, v0, -0x1

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    if-ltz v1, :cond_37

    if-ge v1, v0, :cond_37

    .line 364
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 366
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    .line 367
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_32

    return v5

    :cond_32
    if-eqz p2, :cond_35

    const/4 v5, -0x1

    :cond_35
    add-int/2addr v1, v5

    goto :goto_14

    :cond_37
    return v2
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    return-object p0
.end method

.method public getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .registers 5

    .line 517
    new-instance v0, Landroid/window/DisplayAreaInfo;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 518
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/window/WindowContainerToken;II)V

    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 520
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :cond_1f
    iget v1, v1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    iput v1, v0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    .line 521
    iget-object v1, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public bridge synthetic getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getIgnoreOrientationRequest()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/DisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 421
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_b

    .line 422
    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return-object v2

    .line 434
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_13

    add-int/lit8 v1, v0, -0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-ltz v1, :cond_38

    if-ge v1, v0, :cond_38

    .line 437
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 439
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 440
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    .line 441
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_31

    return-object v3

    :cond_31
    if-eqz p2, :cond_35

    const/4 v3, -0x1

    goto :goto_36

    :cond_35
    const/4 v3, 0x1

    :goto_36
    add-int/2addr v1, v3

    goto :goto_14

    :cond_38
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation(I)I
    .registers 3

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p0, -0x2

    return p0

    .line 157
    :cond_b
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000004L

    return-wide v0
.end method

.method public bridge synthetic getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getStableRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_8

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    return-void

    .line 536
    :cond_8
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 163
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isOrganized()Z
    .registers 1

    .line 512
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isTaskDisplayArea()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public needsZBoost()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 112
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayArea$Type;->checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 117
    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    .line 123
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_34

    add-int/lit8 v1, v0, -0x1

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq p1, v1, :cond_26

    if-ne p1, v2, :cond_31

    .line 127
    :cond_26
    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayArea$Type;->checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_34
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 486
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 488
    iget-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    if-eqz p1, :cond_23

    .line 489
    iget-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    :cond_23
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 171
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .registers 1

    .line 75
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onUnfrozen()V

    return-void
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_a

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    .line 140
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I

    move-result v0

    const/4 v1, 0x0

    .line 141
    invoke-super {p0, v0, p2, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-eqz p3, :cond_2b

    if-eqz p2, :cond_2b

    const p3, 0x7fffffff

    if-eq p1, p3, :cond_27

    const/high16 p3, -0x80000000

    if-ne p1, p3, :cond_2b

    :cond_27
    const/4 p3, 0x1

    .line 146
    invoke-virtual {p2, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_2b
    return-void
.end method

.method public providesMaxBounds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_7

    return-object p2

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p3, :cond_12

    add-int/lit8 v1, v0, -0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-ltz v1, :cond_34

    if-ge v1, v0, :cond_34

    .line 407
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 409
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 410
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    .line 411
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    :cond_2d
    if-eqz p3, :cond_31

    const/4 v2, -0x1

    goto :goto_32

    :cond_31
    const/4 v2, 0x1

    :goto_32
    add-int/2addr v1, v2

    goto :goto_13

    :cond_34
    return-object p2
.end method

.method public removeImmediately()V
    .registers 2

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 552
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 5

    .line 495
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 497
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 498
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 499
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 502
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_27
    if-eqz p1, :cond_3c

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 504
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 505
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 506
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_3c
    return-void
.end method

.method public sendDisplayAreaAppeared()V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-nez v0, :cond_5

    return-void

    .line 474
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 479
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method public setIgnoreOrientationRequest(Z)Z
    .registers 5

    .line 181
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    .line 184
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_d

    return v1

    .line 191
    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_18

    .line 195
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    :cond_18
    if-nez p1, :cond_21

    .line 200
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result p0

    return p0

    .line 203
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p1

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v2, -0x2

    if-eq p1, v2, :cond_45

    const/4 v2, -0x1

    if-ne p1, v2, :cond_34

    goto :goto_45

    :cond_34
    if-eqz v0, :cond_3e

    .line 210
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    return v1

    .line 212
    :cond_3e
    :goto_3e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result p0

    return p0

    :cond_45
    :goto_45
    return v1
.end method

.method public setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 3

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    return-void
.end method

.method public setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-ne v0, p1, :cond_5

    return-void

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 465
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V

    if-nez p2, :cond_1b

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaAppeared()V

    :cond_1b
    return-void

    .line 458
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Don\'t organize or trigger events for unavailable or untrusted display."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
