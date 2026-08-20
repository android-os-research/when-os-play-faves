.class public Lcom/android/server/utils/WatchedSparseArray$1;
.super Lcom/android/server/utils/Watcher;
.source "WatchedSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/WatchedSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/WatchedSparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseArray$1;->this$0:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray$1;->this$0:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method
