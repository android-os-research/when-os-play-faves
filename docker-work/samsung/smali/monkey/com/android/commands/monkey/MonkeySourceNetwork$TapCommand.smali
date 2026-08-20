.class Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;
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
    name = "TapCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>()V

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

    .line 340
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "x":I
    const/4 v1, 0x0

    .line 344
    .local v1, "y":I
    const/4 v2, 0x1

    :try_start_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 345
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_20} :catch_42

    move v1, v3

    .line 350
    nop

    .line 352
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    int-to-float v5, v0

    int-to-float v6, v1

    .line 353
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/commands/monkey/MonkeyTouchEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 352
    invoke-interface {p2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 354
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v3, v2}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    int-to-float v2, v0

    int-to-float v5, v1

    .line 355
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 354
    invoke-interface {p2, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 356
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v2

    .line 346
    :catch_42
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MonkeyStub"

    const-string v4, "Got something that wasn\'t a number"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v3

    .line 358
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4d
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
