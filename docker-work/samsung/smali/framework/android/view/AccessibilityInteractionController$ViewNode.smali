.class Landroid/view/AccessibilityInteractionController$ViewNode;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/view/AccessibilityInteractionController$DequeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewNode"
.end annotation


# instance fields
.field private final blacklist mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V
    .registers 3
    .param p2, "view"    # Landroid/view/View;

    .line 1874
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1872
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mTempViewList:Ljava/util/ArrayList;

    .line 1875
    iput-object p2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    .line 1876
    return-void
.end method

.method private blacklist addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V
    .registers 8
    .param p1, "deque"    # Ljava/util/ArrayDeque;
    .param p2, "child"    # Landroid/view/View;

    .line 1915
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0, p2}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1916
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1917
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_19

    .line 1918
    new-instance v1, Landroid/view/AccessibilityInteractionController$ViewNode;

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {v1, v2, p2}, Landroid/view/AccessibilityInteractionController$ViewNode;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_25

    .line 1920
    :cond_19
    new-instance v1, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->this$0:Landroid/view/AccessibilityInteractionController;

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 1924
    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 7
    .param p1, "virtualRoot"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 1888
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1889
    return-void

    .line 1891
    :cond_5
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 1892
    return-void

    .line 1894
    :cond_a
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mTempViewList:Ljava/util/ArrayList;

    .line 1895
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1897
    :try_start_f
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1898
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1900
    .local v1, "childCount":I
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1901
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_20
    if-ltz v2, :cond_2e

    .line 1902
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, p2, v3}, Landroid/view/AccessibilityInteractionController$ViewNode;->addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V

    .line 1901
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .end local v2    # "i":I
    :cond_2e
    goto :goto_3e

    .line 1905
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_30
    if-ge v2, v1, :cond_3e

    .line 1906
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, p2, v3}, Landroid/view/AccessibilityInteractionController$ViewNode;->addChild(Ljava/util/ArrayDeque;Landroid/view/View;)V
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_43

    .line 1905
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 1910
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1911
    nop

    .line 1912
    return-void

    .line 1910
    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1911
    throw v1
.end method

.method public blacklist getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 1880
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$ViewNode;->mView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1881
    const/4 v0, 0x0

    return-object v0

    .line 1883
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
