.class Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;
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
    name = "TrackballCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 9
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

    .line 183
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "dx":I
    const/4 v1, 0x0

    .line 187
    .local v1, "dy":I
    const/4 v2, 0x1

    :try_start_a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 188
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_20} :catch_34

    move v1, v3

    .line 193
    nop

    .line 194
    new-instance v3, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v3, v2}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    const/4 v2, 0x0

    int-to-float v4, v0

    int-to-float v5, v1

    .line 195
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 194
    invoke-interface {p2, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 196
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v2

    .line 189
    :catch_34
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MonkeyStub"

    const-string v4, "Got something that wasn\'t a number"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v3

    .line 199
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
