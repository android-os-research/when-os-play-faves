.class public final synthetic Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    iput-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$2:Z

    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->$r8$lambda$Q9RVOmzsLa7MKS_Lh2LZ5Am_JMc(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
