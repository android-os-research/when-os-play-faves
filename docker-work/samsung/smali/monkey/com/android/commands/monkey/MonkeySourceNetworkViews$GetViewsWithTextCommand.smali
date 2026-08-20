.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetViewsWithTextCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 15
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .line 260
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_65

    .line 261
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .local v1, "text":Ljava/lang/String;
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v2}, Landroid/app/UiAutomation;->getConnectionId()I

    move-result v8

    .line 263
    .local v8, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    const v4, 0x7fffffff

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 264
    move v3, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v3, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    .line 268
    .local v3, "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v5, "ids":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 271
    .local v7, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {v3, v7, v4}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v9

    .line 272
    .local v9, "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    invoke-virtual {v9}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v10

    if-nez v10, :cond_4d

    .line 273
    return-object v9

    .line 275
    :cond_4d
    invoke-virtual {v9}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .end local v7    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "result":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    goto :goto_36

    .line 277
    :cond_5b
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v6

    .line 279
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "idGetter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    .end local v4    # "emptyArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "ids":Ljava/lang/StringBuilder;
    .end local v8    # "connectionId":I
    :cond_65
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
