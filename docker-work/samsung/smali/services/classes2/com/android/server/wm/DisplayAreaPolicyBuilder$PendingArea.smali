.class public Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingArea"
.end annotation


# instance fields
.field public final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;",
            ">;"
        }
    .end annotation
.end field

.field public mExisting:Lcom/android/server/wm/DisplayArea;

.field public final mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

.field public mMaxLayer:I

.field public final mMinLayer:I

.field public final mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

.field public mSkipTokens:Z


# direct methods
.method public static synthetic $r8$lambda$IKzgZCfeAEjRmzsllaOOd6Z8MC4(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->lambda$instantiateChildren$0(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .registers 5

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 896
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    .line 899
    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    .line 900
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    .line 901
    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    return-void
.end method

.method public static synthetic lambda$instantiateChildren$0(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I
    .registers 1

    .line 913
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    return p0
.end method


# virtual methods
.method public computeMaxLayer()I
    .registers 4

    const/4 v0, 0x0

    .line 905
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 906
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 908
    :cond_20
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    return p0
.end method

.method public final createArea(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayArea;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            ")",
            "Lcom/android/server/wm/DisplayArea;"
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_16

    .line 934
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 936
    iget-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 938
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    return-object p0

    .line 940
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    if-eqz v0, :cond_1c

    const/4 p0, 0x0

    return-object p0

    .line 944
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 945
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_2d

    .line 946
    :cond_24
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-ge v0, v1, :cond_2b

    .line 947
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_2d

    .line 949
    :cond_2b
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 951
    :goto_2d
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    const-string v2, ":"

    if-nez v1, :cond_59

    .line 952
    new-instance v1, Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leaf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V

    return-object v1

    .line 957
    :cond_59
    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmName(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->-$$Nest$fgetmId(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result p0

    invoke-interface {p2, p1, v0, v1, p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public final fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V
    .registers 5

    .line 963
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    :goto_2
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-gt v0, v1, :cond_b

    .line 964
    aput-object p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 914
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 915
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    .line 916
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->createArea(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    if-nez v2, :cond_26

    goto :goto_3e

    :cond_26
    const v3, 0x7fffffff

    .line 922
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 923
    iget-object v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    if-eqz v3, :cond_39

    .line 924
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v3, p3, 0x1

    .line 926
    invoke-virtual {v1, v2, p2, v3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_41
    return-void
.end method
