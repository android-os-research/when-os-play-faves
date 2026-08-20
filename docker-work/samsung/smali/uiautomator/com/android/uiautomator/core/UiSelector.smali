.class public Lcom/android/uiautomator/core/UiSelector;
.super Ljava/lang/Object;
.source "UiSelector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final SELECTOR_CHECKABLE:I = 0x1e

.field static final SELECTOR_CHECKED:I = 0xf

.field static final SELECTOR_CHILD:I = 0x13

.field static final SELECTOR_CLASS:I = 0x4

.field static final SELECTOR_CLASS_REGEX:I = 0x1a

.field static final SELECTOR_CLICKABLE:I = 0xe

.field static final SELECTOR_CONTAINER:I = 0x14

.field static final SELECTOR_CONTAINS_DESCRIPTION:I = 0x7

.field static final SELECTOR_CONTAINS_TEXT:I = 0x3

.field static final SELECTOR_COUNT:I = 0x17

.field static final SELECTOR_DESCRIPTION:I = 0x5

.field static final SELECTOR_DESCRIPTION_REGEX:I = 0x1b

.field static final SELECTOR_ENABLED:I = 0xa

.field static final SELECTOR_FOCUSABLE:I = 0xc

.field static final SELECTOR_FOCUSED:I = 0xb

.field static final SELECTOR_ID:I = 0x11

.field static final SELECTOR_INDEX:I = 0x8

.field static final SELECTOR_INSTANCE:I = 0x9

.field static final SELECTOR_LONG_CLICKABLE:I = 0x18

.field static final SELECTOR_NIL:I = 0x0

.field static final SELECTOR_PACKAGE_NAME:I = 0x12

.field static final SELECTOR_PACKAGE_NAME_REGEX:I = 0x1c

.field static final SELECTOR_PARENT:I = 0x16

.field static final SELECTOR_PATTERN:I = 0x15

.field static final SELECTOR_RESOURCE_ID:I = 0x1d

.field static final SELECTOR_RESOURCE_ID_REGEX:I = 0x1f

.field static final SELECTOR_SCROLLABLE:I = 0xd

.field static final SELECTOR_SELECTED:I = 0x10

.field static final SELECTOR_START_DESCRIPTION:I = 0x6

.field static final SELECTOR_START_TEXT:I = 0x2

.field static final SELECTOR_TEXT:I = 0x1

.field static final SELECTOR_TEXT_REGEX:I = 0x19


# instance fields
.field private mSelectorAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 74
    return-void
.end method

.method constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {p1}, Lcom/android/uiautomator/core/UiSelector;->cloneSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    iget-object v0, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 78
    return-void
.end method

.method private buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;
    .registers 5
    .param p1, "selectorId"    # I
    .param p2, "selectorValue"    # Ljava/lang/Object;

    .line 589
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 590
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    const/16 v1, 0x13

    if-eq p1, v1, :cond_14

    const/16 v1, 0x16

    if-ne p1, v1, :cond_e

    goto :goto_14

    .line 593
    :cond_e
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1d

    .line 591
    :cond_14
    :goto_14
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    iget-object v1, v1, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    :goto_1d
    return-object v0
.end method

.method private containerSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 542
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method private getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 3

    .line 882
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 883
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 884
    .local v0, "child":Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    if-nez v1, :cond_19

    .line 885
    return-object v0

    .line 887
    :cond_19
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    return-object v1

    .line 888
    .end local v0    # "child":Lcom/android/uiautomator/core/UiSelector;
    :cond_1e
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3c

    .line 889
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 890
    .local v0, "parent":Lcom/android/uiautomator/core/UiSelector;
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    if-nez v1, :cond_37

    .line 891
    return-object v0

    .line 893
    :cond_37
    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;->getLastSubSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    return-object v1

    .line 895
    .end local v0    # "parent":Lcom/android/uiautomator/core/UiSelector;
    :cond_3c
    return-object p0
.end method

.method private matchOrUpdateInstance()Z
    .registers 6

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "currentSelectorCounter":I
    const/4 v1, 0x0

    .line 812
    .local v1, "currentSelectorInstance":I
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_18

    .line 813
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 814
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 818
    :cond_18
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2e

    .line 819
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 823
    :cond_2e
    if-ne v1, v0, :cond_32

    .line 824
    const/4 v2, 0x1

    return v2

    .line 827
    :cond_32
    if-le v1, v0, :cond_3f

    .line 828
    iget-object v2, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 830
    :cond_3f
    const/4 v2, 0x0

    return v2
.end method

.method static patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .registers 2
    .param p0, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 96
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v0

    if-nez v0, :cond_10

    .line 97
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/uiautomator/core/UiSelector;->patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0

    .line 99
    :cond_10
    return-object p0
.end method

.method static patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p0, "container"    # Lcom/android/uiautomator/core/UiSelector;
    .param p1, "pattern"    # Lcom/android/uiautomator/core/UiSelector;

    .line 103
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    .line 104
    invoke-direct {v1, p0}, Lcom/android/uiautomator/core/UiSelector;->containerSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/uiautomator/core/UiSelector;->patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 103
    return-object v0
.end method

.method private patternSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 538
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkable(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 501
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public checked(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 463
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public childSelector(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 534
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public className(Ljava/lang/Class;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/uiautomator/core/UiSelector;"
        }
    .end annotation

    .line 198
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public className(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public classNameMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 186
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public clickable(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 482
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method protected cloneSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 6

    .line 84
    new-instance v0, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v0}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    .line 85
    .local v0, "ret":Lcom/android/uiautomator/core/UiSelector;
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasChildSelector()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 87
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v2, 0x13

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getChildSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    :cond_23
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasParentSelector()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 89
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v2, 0x16

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getParentSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    :cond_39
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->hasPatternSelector()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 91
    iget-object v1, v0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v2, 0x15

    new-instance v3, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiSelector;->getPatternSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_4f
    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "desc"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "desc"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public descriptionMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 238
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public descriptionStartsWith(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "desc"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method dumpToString(Z)Ljava/lang/String;
    .registers 8
    .param p1, "all"    # Z

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/uiautomator/core/UiSelector;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    iget-object v1, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 907
    .local v1, "criterionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_291

    .line 908
    if-lez v2, :cond_31

    .line 909
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :cond_31
    iget-object v3, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 912
    .local v3, "criterion":I
    packed-switch v3, :pswitch_data_29c

    .line 1019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNDEFINED="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_28d

    .line 1016
    :pswitch_62
    const-string v4, "RESOURCE_ID_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1017
    goto/16 :goto_28d

    .line 965
    :pswitch_73
    const-string v4, "CHECKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 966
    goto/16 :goto_28d

    .line 1013
    :pswitch_84
    const-string v4, "RESOURCE_ID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1014
    goto/16 :goto_28d

    .line 1010
    :pswitch_95
    const-string v4, "PACKAGE_NAME_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1011
    goto/16 :goto_28d

    .line 935
    :pswitch_a6
    const-string v4, "DESCRIPTION_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 936
    goto/16 :goto_28d

    .line 929
    :pswitch_b7
    const-string v4, "CLASS_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 930
    goto/16 :goto_28d

    .line 917
    :pswitch_c8
    const-string v4, "TEXT_REGEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 918
    goto/16 :goto_28d

    .line 968
    :pswitch_d9
    const-string v4, "LONG_CLICKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 969
    goto/16 :goto_28d

    .line 1004
    :pswitch_ea
    const-string v4, "COUNT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1005
    goto/16 :goto_28d

    .line 998
    :pswitch_fb
    if-eqz p1, :cond_10e

    .line 999
    const-string v4, "PARENT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_28d

    .line 1001
    :cond_10e
    const-string v4, "PARENT[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    goto/16 :goto_28d

    .line 986
    :pswitch_115
    if-eqz p1, :cond_128

    .line 987
    const-string v4, "PATTERN="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_28d

    .line 989
    :cond_128
    const-string v4, "PATTERN[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    goto/16 :goto_28d

    .line 992
    :pswitch_12f
    if-eqz p1, :cond_142

    .line 993
    const-string v4, "CONTAINER="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_28d

    .line 995
    :cond_142
    const-string v4, "CONTAINER[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    goto/16 :goto_28d

    .line 980
    :pswitch_149
    if-eqz p1, :cond_15c

    .line 981
    const-string v4, "CHILD="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_28d

    .line 983
    :cond_15c
    const-string v4, "CHILD[..]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    goto/16 :goto_28d

    .line 1007
    :pswitch_163
    const-string v4, "PACKAGE NAME="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1008
    goto/16 :goto_28d

    .line 977
    :pswitch_174
    const-string v4, "ID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 978
    goto/16 :goto_28d

    .line 974
    :pswitch_185
    const-string v4, "SELECTED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 975
    goto/16 :goto_28d

    .line 971
    :pswitch_196
    const-string v4, "CHECKED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 972
    goto/16 :goto_28d

    .line 962
    :pswitch_1a7
    const-string v4, "CLICKABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 963
    goto/16 :goto_28d

    .line 959
    :pswitch_1b8
    const-string v4, "SCROLLABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 960
    goto/16 :goto_28d

    .line 956
    :pswitch_1c9
    const-string v4, "FOCUSABLE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 957
    goto/16 :goto_28d

    .line 953
    :pswitch_1da
    const-string v4, "FOCUSED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 954
    goto/16 :goto_28d

    .line 950
    :pswitch_1eb
    const-string v4, "ENABLED="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 951
    goto/16 :goto_28d

    .line 947
    :pswitch_1fc
    const-string v4, "INSTANCE="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    goto/16 :goto_28d

    .line 944
    :pswitch_20d
    const-string v4, "INDEX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 945
    goto :goto_28d

    .line 941
    :pswitch_21d
    const-string v4, "CONTAINS_DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    goto :goto_28d

    .line 938
    :pswitch_22d
    const-string v4, "START_DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 939
    goto :goto_28d

    .line 932
    :pswitch_23d
    const-string v4, "DESCRIPTION="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 933
    goto :goto_28d

    .line 926
    :pswitch_24d
    const-string v4, "CLASS="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 927
    goto :goto_28d

    .line 923
    :pswitch_25d
    const-string v4, "CONTAINS_TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 924
    goto :goto_28d

    .line 920
    :pswitch_26d
    const-string v4, "START_TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    goto :goto_28d

    .line 914
    :pswitch_27d
    const-string v4, "TEXT="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 915
    nop

    .line 907
    .end local v3    # "criterion":I
    :goto_28d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_28

    .line 1022
    .end local v2    # "i":I
    :cond_291
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_27d
        :pswitch_26d
        :pswitch_25d
        :pswitch_24d
        :pswitch_23d
        :pswitch_22d
        :pswitch_21d
        :pswitch_20d
        :pswitch_1fc
        :pswitch_1eb
        :pswitch_1da
        :pswitch_1c9
        :pswitch_1b8
        :pswitch_1a7
        :pswitch_196
        :pswitch_185
        :pswitch_174
        :pswitch_163
        :pswitch_149
        :pswitch_12f
        :pswitch_115
        :pswitch_fb
        :pswitch_ea
        :pswitch_d9
        :pswitch_c8
        :pswitch_b7
        :pswitch_a6
        :pswitch_95
        :pswitch_84
        :pswitch_73
        :pswitch_62
    .end packed-switch
.end method

.method public enabled(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 366
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public focusable(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 404
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public focused(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 385
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public fromParent(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 557
    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method getBoolean(I)Z
    .registers 4
    .param p1, "criterion"    # I

    .line 646
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getChildSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 608
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_13

    .line 609
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1

    .line 610
    :cond_13
    return-object v2
.end method

.method getContainerSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 4

    .line 622
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 623
    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 624
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_13

    .line 625
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1

    .line 626
    :cond_13
    return-object v2
.end method

.method getInstance()I
    .registers 2

    .line 638
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->getInt(I)I

    move-result v0

    return v0
.end method

.method getInt(I)I
    .registers 4
    .param p1, "criterion"    # I

    .line 650
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getParentSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 631
    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 632
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_13

    .line 633
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1

    .line 634
    :cond_13
    return-object v2
.end method

.method getPattern(I)Ljava/util/regex/Pattern;
    .registers 4
    .param p1, "criterion"    # I

    .line 654
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method getPatternSelector()Lcom/android/uiautomator/core/UiSelector;
    .registers 4

    .line 614
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    .line 615
    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/uiautomator/core/UiSelector;

    .line 616
    .local v0, "selector":Lcom/android/uiautomator/core/UiSelector;
    if-eqz v0, :cond_13

    .line 617
    new-instance v1, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiSelector;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1

    .line 618
    :cond_13
    return-object v2
.end method

.method getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "criterion"    # I

    .line 642
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method hasChildSelector()Z
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_c

    .line 848
    const/4 v0, 0x0

    return v0

    .line 850
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method hasContainerSelector()Z
    .registers 3

    .line 861
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_c

    .line 862
    const/4 v0, 0x0

    return v0

    .line 864
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method hasParentSelector()Z
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_c

    .line 869
    const/4 v0, 0x0

    return v0

    .line 871
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method hasPatternSelector()Z
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_c

    .line 855
    const/4 v0, 0x0

    return v0

    .line 857
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public index(I)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "index"    # I

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public instance(I)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "instance"    # I

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method isLeaf()Z
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_16

    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    const/16 v1, 0x16

    .line 840
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_16

    .line 841
    const/4 v0, 0x1

    return v0

    .line 843
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method isMatchFor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z
    .registers 10
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "index"    # I

    .line 658
    iget-object v0, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 659
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_7
    if-ge v1, v0, :cond_1cc

    .line 660
    const/4 v2, 0x0

    .line 661
    .local v2, "s":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/uiautomator/core/UiSelector;->mSelectorAttributes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 662
    .local v3, "criterion":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_1d2

    :pswitch_14
    goto/16 :goto_1c8

    .line 797
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    .line 798
    if-eqz v2, :cond_2a

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 799
    :cond_2a
    return v4

    .line 690
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 691
    return v4

    .line 791
    :pswitch_36
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    .line 792
    if-eqz v2, :cond_4a

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 793
    :cond_4a
    return v4

    .line 775
    :pswitch_4b
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 776
    if-eqz v2, :cond_5f

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 777
    :cond_5f
    return v4

    .line 720
    :pswitch_60
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 721
    if-eqz v2, :cond_74

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 722
    :cond_74
    return v4

    .line 679
    :pswitch_75
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 680
    if-eqz v2, :cond_89

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 681
    :cond_89
    return v4

    .line 746
    :pswitch_8a
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 747
    if-eqz v2, :cond_9e

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 748
    :cond_9e
    return v4

    .line 695
    :pswitch_9f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 696
    return v4

    .line 769
    :pswitch_aa
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 770
    if-eqz v2, :cond_be

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 771
    :cond_be
    return v4

    .line 767
    :pswitch_bf
    goto/16 :goto_1c8

    .line 786
    :pswitch_c1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 787
    return v4

    .line 668
    :pswitch_cc
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 669
    return v4

    .line 685
    :pswitch_d7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 686
    return v4

    .line 781
    :pswitch_e2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 782
    return v4

    .line 757
    :pswitch_ed
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 758
    return v4

    .line 762
    :pswitch_f8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 763
    return v4

    .line 752
    :pswitch_103
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_1c8

    .line 753
    return v4

    .line 664
    :pswitch_10e
    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getInt(I)I

    move-result v5

    if-eq p2, v5, :cond_1c8

    .line 665
    return v4

    .line 700
    :pswitch_115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 701
    if-eqz v2, :cond_131

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 702
    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 703
    :cond_131
    return v4

    .line 707
    :pswitch_132
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 708
    if-eqz v2, :cond_14e

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 709
    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 710
    :cond_14e
    return v4

    .line 714
    :pswitch_14f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 715
    if-eqz v2, :cond_163

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 716
    :cond_163
    return v4

    .line 673
    :pswitch_164
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 674
    if-eqz v2, :cond_178

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 675
    :cond_178
    return v4

    .line 726
    :pswitch_179
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 727
    if-eqz v2, :cond_195

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 728
    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 729
    :cond_195
    return v4

    .line 733
    :pswitch_196
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 734
    if-eqz v2, :cond_1b2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 735
    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 736
    :cond_1b2
    return v4

    .line 740
    :pswitch_1b3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 741
    if-eqz v2, :cond_1c7

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/uiautomator/core/UiSelector;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c8

    .line 742
    :cond_1c7
    return v4

    .line 659
    .end local v2    # "s":Ljava/lang/CharSequence;
    .end local v3    # "criterion":I
    :cond_1c8
    :goto_1c8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 804
    .end local v1    # "x":I
    :cond_1cc
    invoke-direct {p0}, Lcom/android/uiautomator/core/UiSelector;->matchOrUpdateInstance()Z

    move-result v1

    return v1

    nop

    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_1b3
        :pswitch_196
        :pswitch_179
        :pswitch_164
        :pswitch_14f
        :pswitch_132
        :pswitch_115
        :pswitch_10e
        :pswitch_14
        :pswitch_103
        :pswitch_f8
        :pswitch_ed
        :pswitch_e2
        :pswitch_d7
        :pswitch_cc
        :pswitch_c1
        :pswitch_bf
        :pswitch_aa
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_9f
        :pswitch_8a
        :pswitch_75
        :pswitch_60
        :pswitch_4b
        :pswitch_36
        :pswitch_2b
        :pswitch_16
    .end packed-switch
.end method

.method public longClickable(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 520
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 569
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public packageNameMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 581
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public resourceId(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 291
    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public resourceIdMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 303
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public scrollable(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 423
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public selected(Z)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "val"    # Z

    .line 443
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public textContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public textMatches(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .line 134
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/16 v1, 0x19

    invoke-direct {p0, v1, v0}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public textStartsWith(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/uiautomator/core/UiSelector;->buildSelector(ILjava/lang/Object;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/uiautomator/core/UiSelector;->dumpToString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
