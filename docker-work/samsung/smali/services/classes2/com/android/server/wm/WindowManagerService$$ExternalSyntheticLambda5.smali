.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;
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

    new-instance p0, Landroid/view/SurfaceControl$Builder;

    check-cast p1, Landroid/view/SurfaceSession;

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object p0
.end method
