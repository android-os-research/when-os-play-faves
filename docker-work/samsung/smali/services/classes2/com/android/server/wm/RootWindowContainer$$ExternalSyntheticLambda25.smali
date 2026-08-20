.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$dzY_5PPyti-McNEUKZ8rcWHn6gs(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
