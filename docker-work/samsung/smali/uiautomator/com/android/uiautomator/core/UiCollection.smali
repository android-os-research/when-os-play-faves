.class public Lcom/android/uiautomator/core/UiCollection;
.super Lcom/android/uiautomator/core/UiObject;
.source "UiCollection.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/UiSelector;)V
    .registers 2
    .param p1, "selector"    # Lcom/android/uiautomator/core/UiSelector;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getChildByDescription(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .registers 9
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 56
    if-eqz p2, :cond_3d

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v0

    .line 58
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_13
    if-ge v1, v0, :cond_3d

    .line 59
    invoke-virtual {p0, p1, v1}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    move-result-object v2

    .line 60
    .local v2, "row":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiObject;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "nodeDesc":Ljava/lang/String;
    if-eqz v3, :cond_26

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 62
    return-object v2

    .line 64
    :cond_26
    new-instance v4, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v4}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v4, p2}, Lcom/android/uiautomator/core/UiSelector;->descriptionContains(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v4

    .line 65
    .local v4, "item":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 66
    return-object v2

    .line 58
    .end local v2    # "row":Lcom/android/uiautomator/core/UiObject;
    .end local v3    # "nodeDesc":Ljava/lang/String;
    .end local v4    # "item":Lcom/android/uiautomator/core/UiObject;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 70
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_3d
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for description= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;
    .registers 6
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "instance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/uiautomator/core/UiSelector;->instance(I)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 92
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    new-instance v1, Lcom/android/uiautomator/core/UiObject;

    invoke-direct {v1, v0}, Lcom/android/uiautomator/core/UiObject;-><init>(Lcom/android/uiautomator/core/UiSelector;)V

    return-object v1
.end method

.method public getChildByText(Lcom/android/uiautomator/core/UiSelector;Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    .registers 9
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/uiautomator/core/UiObjectNotFoundException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 114
    if-eqz p2, :cond_3b

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiCollection;->getChildCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v0

    .line 116
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_13
    if-ge v1, v0, :cond_3b

    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/android/uiautomator/core/UiCollection;->getChildByInstance(Lcom/android/uiautomator/core/UiSelector;I)Lcom/android/uiautomator/core/UiObject;

    move-result-object v2

    .line 118
    .local v2, "row":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v2}, Lcom/android/uiautomator/core/UiObject;->getText()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "nodeText":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 120
    return-object v2

    .line 122
    :cond_24
    new-instance v4, Lcom/android/uiautomator/core/UiSelector;

    invoke-direct {v4}, Lcom/android/uiautomator/core/UiSelector;-><init>()V

    invoke-virtual {v4, p2}, Lcom/android/uiautomator/core/UiSelector;->text(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/uiautomator/core/UiObject;->getChild(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiObject;

    move-result-object v4

    .line 123
    .local v4, "item":Lcom/android/uiautomator/core/UiObject;
    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiObject;->exists()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 124
    return-object v2

    .line 116
    .end local v2    # "row":Lcom/android/uiautomator/core/UiObject;
    .end local v3    # "nodeText":Ljava/lang/String;
    .end local v4    # "item":Lcom/android/uiautomator/core/UiObject;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 128
    .end local v0    # "count":I
    .end local v1    # "x":I
    :cond_3b
    new-instance v0, Lcom/android/uiautomator/core/UiObjectNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for text= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/UiObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount(Lcom/android/uiautomator/core/UiSelector;)I
    .registers 4
    .param p1, "childPattern"    # Lcom/android/uiautomator/core/UiSelector;

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/android/uiautomator/core/Tracer;->trace([Ljava/lang/Object;)V

    .line 144
    nop

    .line 145
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getSelector()Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    invoke-static {p1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/uiautomator/core/UiSelector;->patternBuilder(Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)Lcom/android/uiautomator/core/UiSelector;

    move-result-object v0

    .line 146
    .local v0, "patternSelector":Lcom/android/uiautomator/core/UiSelector;
    invoke-virtual {p0}, Lcom/android/uiautomator/core/UiCollection;->getQueryController()Lcom/android/uiautomator/core/QueryController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/uiautomator/core/QueryController;->getPatternCount(Lcom/android/uiautomator/core/UiSelector;)I

    move-result v1

    return v1
.end method
