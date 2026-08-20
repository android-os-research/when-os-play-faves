.class Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;
.super Ljava/util/LinkedHashMap;
.source "InterceptedActivityRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/remoteappmode/InterceptedActivityRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/remoteappmode/InterceptedActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/InterceptedActivityRepo;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/InterceptedActivityRepo;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;->this$0:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2

    .line 22
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
