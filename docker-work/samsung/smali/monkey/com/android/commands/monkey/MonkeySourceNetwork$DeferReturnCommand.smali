.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;
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
    name = "DeferReturnCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>()V

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

    .line 410
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4c

    .line 411
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    .local v0, "event":Ljava/lang/String;
    const-string v2, "screenchange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 414
    const/4 v2, 0x1

    .line 418
    .local v2, "eventId":I
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 419
    .local v3, "timeout":J
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->-$$Nest$sfgetCOMMAND_MAP()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    .line 420
    .local v5, "deferredCommand":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    if-eqz v5, :cond_4c

    .line 421
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 422
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v1, p2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v6

    .line 423
    .local v6, "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-direct {v7, v2, v6, v3, v4}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;-><init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V

    invoke-static {v7}, Lcom/android/commands/monkey/MonkeySourceNetwork;->-$$Nest$sfputdeferredReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)V

    .line 424
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v7

    .line 416
    .end local v1    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "eventId":I
    .end local v3    # "timeout":J
    .end local v5    # "deferredCommand":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;
    .end local v6    # "ret":Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    :cond_49
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v1

    .line 427
    .end local v0    # "event":Ljava/lang/String;
    :cond_4c
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
