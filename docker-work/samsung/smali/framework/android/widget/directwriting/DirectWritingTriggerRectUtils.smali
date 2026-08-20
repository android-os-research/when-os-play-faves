.class public Landroid/widget/directwriting/DirectWritingTriggerRectUtils;
.super Ljava/lang/Object;
.source "DirectWritingTriggerRectUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist adjustHeight(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/directwriting/RectInfo;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p0, "rectInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/RectInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/directwriting/RectInfo;

    .line 120
    .local v1, "rectInfo":Landroid/widget/directwriting/RectInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/directwriting/RectInfo;

    .line 121
    .local v3, "rectInfo2":Landroid/widget/directwriting/RectInfo;
    if-ne v1, v3, :cond_23

    .line 122
    goto :goto_14

    .line 126
    :cond_23
    iget-object v4, v1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget-object v5, v3, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->isOverlappedVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v4, v1, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    iget-object v5, v3, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 127
    invoke-static {v4, v5}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->isOverlappedVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, v1, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    iget-object v5, v3, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 128
    invoke-static {v4, v5}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->isOverlappedHorizontally(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 129
    invoke-static {v1, v3}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->modifyHeightOfTriggerRect(Landroid/widget/directwriting/RectInfo;Landroid/widget/directwriting/RectInfo;)V

    .line 131
    .end local v3    # "rectInfo2":Landroid/widget/directwriting/RectInfo;
    :cond_44
    goto :goto_14

    .line 132
    .end local v1    # "rectInfo":Landroid/widget/directwriting/RectInfo;
    :cond_45
    goto :goto_4

    .line 133
    :cond_46
    return-void
.end method

.method private static blacklist adjustWebViewTriggerRect(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/directwriting/RectInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p0, "rectInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/RectInfo;>;"
    .local p1, "isOptionRestrictDwArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 220
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 221
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/directwriting/RectInfo;

    iget-object v1, v1, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/directwriting/RectInfo;

    iget-object v2, v2, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 219
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method private static blacklist adjustWidth(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/directwriting/RectInfo;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p0, "rectInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/RectInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "modified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/directwriting/RectInfo;

    .line 82
    .local v2, "rectInfo":Landroid/widget/directwriting/RectInfo;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "rectInfo":Landroid/widget/directwriting/RectInfo;
    goto :goto_9

    .line 84
    :cond_1e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/directwriting/RectInfo;

    .line 85
    .restart local v2    # "rectInfo":Landroid/widget/directwriting/RectInfo;
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 86
    goto :goto_22

    .line 90
    :cond_3f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v3, "overlappedList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/RectInfo;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/directwriting/RectInfo;

    .line 93
    .local v5, "rectInfo2":Landroid/widget/directwriting/RectInfo;
    invoke-interface {p0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 94
    goto :goto_4b

    .line 96
    :cond_68
    if-ne v2, v5, :cond_6b

    .line 97
    goto :goto_4b

    .line 99
    :cond_6b
    iget-object v6, v2, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget-object v7, v5, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->isOverlappedVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 100
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v5    # "rectInfo2":Landroid/widget/directwriting/RectInfo;
    :cond_78
    goto :goto_4b

    .line 104
    :cond_79
    new-instance v4, Landroid/widget/directwriting/DirectWritingTriggerRectUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 106
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_82
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_a4

    .line 107
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-eq v4, v5, :cond_a1

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/directwriting/RectInfo;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/directwriting/RectInfo;

    invoke-static {v5, v6}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->modifyWidthOfTriggerRect(Landroid/widget/directwriting/RectInfo;Landroid/widget/directwriting/RectInfo;)V

    .line 106
    :cond_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 112
    .end local v4    # "i":I
    :cond_a4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/directwriting/RectInfo;

    .line 113
    .local v5, "rectInfo1":Landroid/widget/directwriting/RectInfo;
    invoke-interface {p0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v5    # "rectInfo1":Landroid/widget/directwriting/RectInfo;
    goto :goto_a8

    .line 115
    .end local v2    # "rectInfo":Landroid/widget/directwriting/RectInfo;
    .end local v3    # "overlappedList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/RectInfo;>;"
    :cond_c0
    goto/16 :goto_22

    .line 116
    :cond_c2
    return-void
.end method

.method private static blacklist isOverlappedHorizontally(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "rect1"    # Landroid/graphics/Rect;
    .param p1, "rect2"    # Landroid/graphics/Rect;

    .line 143
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_30

    :cond_c
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_18

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_30

    :cond_18
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_24

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_30

    :cond_24
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_32

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method private static blacklist isOverlappedVertically(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "rect1"    # Landroid/graphics/Rect;
    .param p1, "rect2"    # Landroid/graphics/Rect;

    .line 136
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_30

    :cond_c
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_18

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_30

    :cond_18
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_24

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_30

    :cond_24
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_32

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method static synthetic blacklist lambda$adjustWidth$0(Landroid/widget/directwriting/RectInfo;Landroid/widget/directwriting/RectInfo;)I
    .registers 4
    .param p0, "o1"    # Landroid/widget/directwriting/RectInfo;
    .param p1, "o2"    # Landroid/widget/directwriting/RectInfo;

    .line 104
    iget-object v0, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static blacklist makeTriggerRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 11
    .param p0, "viewRect"    # Landroid/graphics/Rect;
    .param p1, "rootViewRect"    # Landroid/graphics/Rect;
    .param p2, "horizontalSpace"    # I
    .param p3, "verticalSpace"    # I

    .line 54
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 55
    .local v0, "width":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 56
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p2

    .line 57
    invoke-static {v3}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->reviseMaxValue(I)I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p3

    .line 58
    invoke-static {v4}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->reviseMaxValue(I)I

    move-result v4

    iget v5, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, p2

    .line 59
    invoke-static {v5, v0}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->reviseMinValue(II)I

    move-result v5

    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p3

    .line 60
    invoke-static {v6, v1}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->reviseMinValue(II)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .local v2, "adjustedRect":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeTriggerRect viewRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rootViewRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", adjustedRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DWT]"

    invoke-static {v4, v3}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v2
.end method

.method private static blacklist modifyHeightOfTriggerRect(Landroid/widget/directwriting/RectInfo;Landroid/widget/directwriting/RectInfo;)V
    .registers 7
    .param p0, "r1"    # Landroid/widget/directwriting/RectInfo;
    .param p1, "r2"    # Landroid/widget/directwriting/RectInfo;

    .line 184
    iget-object v0, p0, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 185
    .local v0, "rect1":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 187
    .local v1, "rect2":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_50

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_50

    .line 190
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 191
    .local v2, "halfSpace":I
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iget-object v4, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_2f

    .line 192
    iget-object v3, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_4f

    .line 194
    :cond_2f
    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget-object v4, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_45

    .line 195
    iget-object v3, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 196
    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4f

    .line 198
    :cond_45
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 199
    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 201
    .end local v2    # "halfSpace":I
    :goto_4f
    goto :goto_8f

    .line 204
    :cond_50
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 205
    .restart local v2    # "halfSpace":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iget-object v4, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_6f

    .line 206
    iget-object v3, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 207
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_8f

    .line 208
    :cond_6f
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_85

    .line 209
    iget-object v3, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 210
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8f

    .line 212
    :cond_85
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 213
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 216
    .end local v2    # "halfSpace":I
    :goto_8f
    return-void
.end method

.method private static blacklist modifyWidthOfTriggerRect(Landroid/widget/directwriting/RectInfo;Landroid/widget/directwriting/RectInfo;)V
    .registers 7
    .param p0, "r1"    # Landroid/widget/directwriting/RectInfo;
    .param p1, "r2"    # Landroid/widget/directwriting/RectInfo;

    .line 150
    iget-object v0, p0, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 151
    .local v0, "rect1":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 152
    .local v1, "rect2":Landroid/graphics/Rect;
    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->isOverlappedHorizontally(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 153
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_56

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_56

    .line 155
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 156
    .local v2, "halfSpace":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iget-object v4, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_35

    .line 157
    iget-object v3, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 158
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_55

    .line 159
    :cond_35
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget-object v4, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_4b

    .line 160
    iget-object v3, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 161
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_55

    .line 163
    :cond_4b
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 164
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 166
    .end local v2    # "halfSpace":I
    :goto_55
    goto :goto_95

    .line 168
    :cond_56
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 169
    .restart local v2    # "halfSpace":I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iget-object v4, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_75

    .line 170
    iget-object v3, p1, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 171
    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_95

    .line 172
    :cond_75
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_8b

    .line 173
    iget-object v3, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 174
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_95

    .line 176
    :cond_8b
    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 177
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 181
    .end local v2    # "halfSpace":I
    :cond_95
    :goto_95
    return-void
.end method

.method private static blacklist reviseMaxValue(I)I
    .registers 2
    .param p0, "value"    # I

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static blacklist reviseMinValue(II)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "maxValue"    # I

    .line 71
    if-gez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static blacklist switchToTriggerRect(Ljava/util/List;Landroid/graphics/Rect;IILjava/util/List;)Ljava/util/List;
    .registers 10
    .param p1, "rootViewRect"    # Landroid/graphics/Rect;
    .param p2, "horizontalSpace"    # I
    .param p3, "verticalSpace"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 30
    .local p0, "editTextRectList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p4, "isOptionRestrictDwArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "rectInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/RectInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 32
    .local v2, "editTextRect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1d

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_9

    :cond_1d
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_26

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-gez v3, :cond_26

    .line 33
    goto :goto_9

    .line 35
    :cond_26
    invoke-static {v2, p1, p2, p3}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->makeTriggerRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 36
    .local v3, "triggerViewRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/widget/directwriting/RectInfo;

    invoke-direct {v4, v2, v3}, Landroid/widget/directwriting/RectInfo;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v2    # "editTextRect":Landroid/graphics/Rect;
    .end local v3    # "triggerViewRect":Landroid/graphics/Rect;
    goto :goto_9

    .line 38
    :cond_33
    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->adjustWidth(Ljava/util/List;)V

    .line 39
    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->adjustHeight(Ljava/util/List;)V

    .line 40
    invoke-static {v0, p4}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->adjustWebViewTriggerRect(Ljava/util/List;Ljava/util/List;)V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "triggerRectList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/directwriting/RectInfo;

    .line 44
    .local v3, "rectInfo":Landroid/widget/directwriting/RectInfo;
    iget-object v4, v3, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v3    # "rectInfo":Landroid/widget/directwriting/RectInfo;
    goto :goto_45

    .line 46
    :cond_57
    return-object v1
.end method
