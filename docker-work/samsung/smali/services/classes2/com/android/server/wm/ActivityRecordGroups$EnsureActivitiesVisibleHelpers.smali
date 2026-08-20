.class public Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;
.super Ljava/lang/Object;
.source "ActivityRecordGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecordGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnsureActivitiesVisibleHelpers"
.end annotation


# instance fields
.field public final helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityRecordGroups;


# direct methods
.method public static synthetic $r8$lambda$QHvbeuXQKnSCnYcJRj4PfngbdLE(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->lambda$reset$1(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eBTgXODVRVgVgp2iEgUbPVCMcDs(Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;Lcom/android/server/wm/Task;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->lambda$new$0(Lcom/android/server/wm/Task;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kWFdg1DQQccewWrkCqF_s3ylliw(ZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->lambda$setBehindFullscreenActivity$2(ZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecordGroups;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 110
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->this$0:Lcom/android/server/wm/ActivityRecordGroups;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Lcom/android/server/wm/ActivityRecordGroups;->-$$Nest$sfgetGROUPS()[I

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 111
    invoke-static {}, Lcom/android/server/wm/ActivityRecordGroups;->-$$Nest$sfgetGROUPS()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;Lcom/android/server/wm/Task;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/Task;I)V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleInActivityGroupHelper;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->this$0:Lcom/android/server/wm/ActivityRecordGroups;

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecordGroups;->-$$Nest$fgetmChildren(Lcom/android/server/wm/ActivityRecordGroups;)Ljava/util/Map;

    move-result-object p0

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecordGroup;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleInActivityGroupHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecordGroup;)V

    aput-object v1, v0, p2

    return-void
.end method

.method public static synthetic lambda$reset$1(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)V
    .registers 5

    .line 118
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method public static synthetic lambda$setBehindFullscreenActivity$2(ZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)V
    .registers 2

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setBehindFullscreenActivity(Z)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isOccluded()Z
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->isBehindFullscreenActivity()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    aget-object p0, p0, v2

    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->isBehindFullscreenActivity()Z

    move-result p0

    if-eqz p0, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method public reset(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 6

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 118
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBehindFullscreenActivity(Z)V
    .registers 3

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->helpers:[Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 123
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
