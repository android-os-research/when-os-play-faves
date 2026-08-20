.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;
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
    name = "GetText"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 6
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

    .line 314
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_32

    .line 315
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 316
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v1, 0x0

    const-string v2, "Node contains a password"

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 320
    :cond_15
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    .line 321
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 323
    :cond_24
    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 325
    :cond_32
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
