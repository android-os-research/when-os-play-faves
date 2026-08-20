.class Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;
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
    name = "WakeCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 4
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

    .line 325
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->-$$Nest$smwake()Z

    move-result v0

    if-nez v0, :cond_9

    .line 326
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0

    .line 328
    :cond_9
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0
.end method
