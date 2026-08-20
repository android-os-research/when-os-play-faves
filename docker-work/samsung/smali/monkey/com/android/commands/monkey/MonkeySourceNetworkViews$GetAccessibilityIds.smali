.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;
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
    name = "GetAccessibilityIds"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 8
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

    .line 463
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_53

    .line 466
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 467
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "mAccessibilityViewId"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 468
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 469
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_1f} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1f} :catch_41

    .line 474
    .end local v1    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v0, "viewId":I
    nop

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "ids":Ljava/lang/String;
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-direct {v2, v3, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 472
    .end local v0    # "viewId":I
    .end local v1    # "ids":Ljava/lang/String;
    :catch_41
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v3, "Access exception"

    invoke-direct {v2, v0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 470
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4a
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v3, "Node with given ID does not exist"

    invoke-direct {v2, v0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 478
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_53
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
