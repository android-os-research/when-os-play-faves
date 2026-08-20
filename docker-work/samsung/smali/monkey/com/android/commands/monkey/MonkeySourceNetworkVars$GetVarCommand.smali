.class public Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetVarCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 7
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

    .line 192
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 193
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkVars;->-$$Nest$sfgetVAR_MAP()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;

    .line 194
    .local v0, "getter":Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    if-nez v0, :cond_21

    .line 195
    new-instance v1, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v2, 0x0

    const-string v3, "unknown var"

    invoke-direct {v1, v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 197
    :cond_21
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-interface {v0}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;->get()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 199
    .end local v0    # "getter":Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;
    :cond_2b
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
