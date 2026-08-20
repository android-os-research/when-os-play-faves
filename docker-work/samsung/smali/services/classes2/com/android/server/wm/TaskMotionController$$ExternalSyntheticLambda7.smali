.class public final synthetic Lcom/android/server/wm/TaskMotionController$$ExternalSyntheticLambda7;
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

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/TaskMotionController;->$r8$lambda$-DYSMshEhl6Ne9BAhzin6tYPxPg(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
