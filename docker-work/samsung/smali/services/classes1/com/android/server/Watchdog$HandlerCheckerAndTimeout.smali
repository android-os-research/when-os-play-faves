.class public final Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerCheckerAndTimeout"
.end annotation


# instance fields
.field public final mCustomTimeoutMillis:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/Watchdog$HandlerChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 266
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    return-void
.end method

.method public static withCustomTimeout(Lcom/android/server/Watchdog$HandlerChecker;J)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .registers 4

    .line 292
    new-instance v0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    return-object v0
.end method

.method public static withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .registers 3

    .line 283
    new-instance v0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public checker()Lcom/android/server/Watchdog$HandlerChecker;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    return-object p0
.end method

.method public customTimeoutMillis()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    return-object p0
.end method
