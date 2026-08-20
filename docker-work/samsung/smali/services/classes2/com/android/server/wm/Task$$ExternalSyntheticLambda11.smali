.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Landroid/os/IBinder;

    invoke-static {p1, p0, p3}, Lcom/android/server/wm/Task;->$r8$lambda$I3V5t7ZX1Ip_YH884BnxvjqYRZw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method
