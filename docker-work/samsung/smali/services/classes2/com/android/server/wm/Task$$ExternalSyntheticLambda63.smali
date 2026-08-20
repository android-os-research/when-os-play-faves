.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda63;
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

    invoke-static {p1}, Lcom/android/server/wm/Task;->$r8$lambda$L-UhtZvUr6xFnpEmwT08R6R0qY8(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
