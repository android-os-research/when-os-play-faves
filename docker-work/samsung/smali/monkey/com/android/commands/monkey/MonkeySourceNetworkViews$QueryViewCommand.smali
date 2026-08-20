.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;
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
    name = "QueryViewCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 10
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

    .line 200
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_8a

    .line 201
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "idType":Ljava/lang/String;
    const-string v2, "viewid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    .line 207
    :try_start_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-$$Nest$smgetNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 208
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, "viewQuery":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3
    :try_end_31
    .catch Lcom/android/commands/monkey/MonkeyViewException; {:try_start_19 .. :try_end_31} :catch_32

    .line 212
    .local v3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_65

    .line 210
    .end local v1    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "viewQuery":Ljava/lang/String;
    .end local v3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_32
    move-exception v1

    .line 211
    .local v1, "e":Lcom/android/commands/monkey/MonkeyViewException;
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyViewException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 213
    .end local v1    # "e":Lcom/android/commands/monkey/MonkeyViewException;
    :cond_3d
    const-string v2, "accessibilityids"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 215
    :try_start_45
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-$$Nest$smgetNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 216
    .local v1, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .restart local v2    # "viewQuery":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_64} :catch_83

    .line 220
    .restart local v3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 224
    :goto_65
    if-nez v1, :cond_6f

    .line 225
    new-instance v4, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v6, "Node with given ID does not exist"

    invoke-direct {v4, v5, v6}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v4

    .line 227
    :cond_6f
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-$$Nest$sfgetCOMMAND_MAP()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;

    .line 228
    .local v4, "getter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    if-eqz v4, :cond_80

    .line 229
    invoke-interface {v4, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v5

    return-object v5

    .line 231
    :cond_80
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v5

    .line 218
    .end local v1    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "viewQuery":Ljava/lang/String;
    .end local v3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "getter":Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    :catch_83
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v2

    .line 222
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_87
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v1

    .line 234
    .end local v0    # "idType":Ljava/lang/String;
    :cond_8a
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
