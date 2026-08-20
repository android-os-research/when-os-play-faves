.class public final synthetic Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1}, Lcom/android/server/wm/InsetsStateController;->$r8$lambda$Lu3zi1kahJ0A9k96fqCGj2GWTiE(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
