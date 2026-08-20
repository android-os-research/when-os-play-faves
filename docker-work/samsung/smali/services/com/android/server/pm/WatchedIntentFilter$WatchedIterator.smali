.class public Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;
.super Ljava/lang/Object;
.source "WatchedIntentFilter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/WatchedIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WatchedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/pm/WatchedIntentFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->this$0:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 66
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->this$0:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-static {p0}, Lcom/android/server/pm/WatchedIntentFilter;->-$$Nest$monChanged(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method public hasNext()Z
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 62
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;->this$0:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-static {p0}, Lcom/android/server/pm/WatchedIntentFilter;->-$$Nest$monChanged(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method
