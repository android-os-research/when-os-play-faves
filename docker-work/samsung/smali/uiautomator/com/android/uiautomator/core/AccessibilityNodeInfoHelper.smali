.class Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;
    .registers 6
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .local v0, "nodeRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .local v1, "displayRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 45
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 46
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 47
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 50
    return-object v0

    .line 52
    :cond_21
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    return-object v2
.end method
