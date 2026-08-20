.class public final synthetic Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->$r8$lambda$jPDCSxML4DZ5p_BIe-Gmt7fFgWE(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method
