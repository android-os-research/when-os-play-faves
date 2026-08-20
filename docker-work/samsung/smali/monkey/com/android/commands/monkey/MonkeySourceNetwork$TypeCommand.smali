.class Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 11
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

    .line 297
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    .line 298
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 304
    .local v1, "chars":[C
    const/4 v2, -0x1

    .line 305
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 306
    .local v2, "keyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 309
    .local v3, "events":[Landroid/view/KeyEvent;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_30

    aget-object v6, v3, v5

    .line 310
    .local v6, "event":Landroid/view/KeyEvent;
    new-instance v7, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v7, v6}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-interface {p2, v7}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 309
    .end local v6    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 312
    :cond_30
    sget-object v4, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v4

    .line 314
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "chars":[C
    .end local v2    # "keyCharacterMap":Landroid/view/KeyCharacterMap;
    .end local v3    # "events":[Landroid/view/KeyEvent;
    :cond_33
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
