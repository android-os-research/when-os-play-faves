.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildren"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 11
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .line 513
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_46

    .line 514
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    .line 515
    .local v0, "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v1, "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v2, "ids":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    .line 518
    .local v3, "totalChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v3, :cond_3b

    .line 519
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-interface {v0, v5, v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v5

    .line 520
    .local v5, "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 521
    return-object v5

    .line 523
    :cond_2b
    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .end local v5    # "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 526
    .end local v4    # "i":I
    :cond_3b
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v4

    .line 528
    .end local v0    # "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v1    # "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "ids":Ljava/lang/StringBuilder;
    .end local v3    # "totalChildren":I
    :cond_46
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
