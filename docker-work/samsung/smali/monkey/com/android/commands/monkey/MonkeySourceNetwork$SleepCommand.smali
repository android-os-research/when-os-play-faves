.class Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;
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
    name = "SleepCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 8
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

    .line 274
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 275
    const/4 v0, -0x1

    .line 276
    .local v0, "sleep":I
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, "sleepStr":Ljava/lang/String;
    :try_start_f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_21

    move v0, v2

    .line 282
    nop

    .line 283
    new-instance v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/android/commands/monkey/MonkeyThrottleEvent;-><init>(J)V

    invoke-interface {p2, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 284
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v2

    .line 279
    :catch_21
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MonkeyStub"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v3

    .line 286
    .end local v0    # "sleep":I
    .end local v1    # "sleepStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3d
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
