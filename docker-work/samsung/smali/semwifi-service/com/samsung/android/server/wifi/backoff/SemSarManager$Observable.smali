.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;
.super Ljava/lang/Object;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Observable"
.end annotation


# instance fields
.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;->observers:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastWifiState(Landroid/content/Context;I)V
    .registers 4

    .line 326
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;->observers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;

    .line 327
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;->updateWifiState(Landroid/content/Context;I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public registObserver(Lcom/samsung/android/server/wifi/backoff/SemSarManager$IObserver;)V
    .registers 2

    .line 322
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;->observers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
