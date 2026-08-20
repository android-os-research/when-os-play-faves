.class Lcom/android/server/knox/dar/DarDatabaseCache$1;
.super Ljava/util/LinkedHashMap;
.source "DarDatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/DarDatabaseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5dbe90b824986878L


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/DarDatabaseCache;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarDatabaseCache;IFZ)V
    .registers 5

    .line 38
    iput-object p1, p0, Lcom/android/server/knox/dar/DarDatabaseCache$1;->this$0:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
