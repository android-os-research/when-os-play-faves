.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/WindowOrganizerController;->$r8$lambda$DuM4cb78d0hetIEryNu-YK1z9aQ(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
