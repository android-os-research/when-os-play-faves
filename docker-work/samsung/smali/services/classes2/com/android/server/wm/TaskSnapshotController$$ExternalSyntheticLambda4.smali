.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotController;->$r8$lambda$1W8lCIrR8JunCBCcmwSrcjpQdsw(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
