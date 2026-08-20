.class public Lcom/android/server/wm/ActivityRecordGroups;
.super Ljava/lang/Object;
.source "ActivityRecordGroups.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;,
        Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;
    }
.end annotation


# static fields
.field public static final GROUPS:[I


# instance fields
.field public final mChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/ActivityRecordGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnsureActivitiesVisibleHelpers:Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

.field public final mOccludedHolder:Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;


# direct methods
.method public static synthetic $r8$lambda$tPKRAsQ2bPj1ujoLXooMY2bWaJ0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/ActivityRecordGroup;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityRecordGroups;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/ActivityRecordGroup;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmChildren(Lcom/android/server/wm/ActivityRecordGroups;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetGROUPS()[I
    .registers 1

    sget-object v0, Lcom/android/server/wm/ActivityRecordGroups;->GROUPS:[I

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/wm/ActivityRecordGroups;->GROUPS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wm/Task;)V
    .registers 9

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mOccludedHolder:Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;

    .line 41
    sget-object v0, Lcom/android/server/wm/ActivityRecordGroups;->GROUPS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2a

    aget v3, v0, v2

    .line 42
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/ActivityRecordGroup;

    invoke-direct {v6, p1, v3}, Lcom/android/server/wm/ActivityRecordGroup;-><init>(Lcom/android/server/wm/Task;I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 44
    :cond_2a
    new-instance v0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;-><init>(Lcom/android/server/wm/ActivityRecordGroups;Lcom/android/server/wm/Task;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mEnsureActivitiesVisibleHelpers:Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/ActivityRecordGroup;)V
    .registers 3

    .line 59
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/ActivityRecordGroup;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 59
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/ActivityRecordGroups$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ActivityRecordGroups$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public get(I)Lcom/android/server/wm/ActivityRecordGroup;
    .registers 2

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecordGroup;

    return-object p0
.end method

.method public getEnsureActivitiesVisibleHelpers()Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mEnsureActivitiesVisibleHelpers:Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

    return-object p0
.end method

.method public getOccludedHolder()Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mOccludedHolder:Lcom/android/server/wm/ActivityRecordGroups$OccludedHolder;

    return-object p0
.end method

.method public getOppositeGroup(I)Lcom/android/server/wm/ActivityRecordGroup;
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecordGroups;->get(I)Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    return-object p0

    .line 65
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecordGroups;->get(I)Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p0

    return-object p0
.end method

.method public hasActivity()Z
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecordGroup;

    .line 75
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecordGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups;->mChildren:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecordGroup;

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityRecordGroup;->updateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_1a
    return-void
.end method
