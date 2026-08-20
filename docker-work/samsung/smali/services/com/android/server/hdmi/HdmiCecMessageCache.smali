.class public final Lcom/android/server/hdmi/HdmiCecMessageCache;
.super Ljava/lang/Object;
.source "HdmiCecMessageCache.java"


# static fields
.field public static final CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 30
    new-instance v0, Landroid/util/FastImmutableArraySet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x47

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x84

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x87

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x9e

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 85
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageCache;->isCacheable(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 90
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_23

    .line 93
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 94
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_23
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public flushAll()V
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public flushMessagesFrom(I)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_c
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0
.end method

.method public final isCacheable(I)Z
    .registers 2

    .line 100
    sget-object p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
