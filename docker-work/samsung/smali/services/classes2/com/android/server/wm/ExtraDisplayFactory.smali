.class public final Lcom/android/server/wm/ExtraDisplayFactory;
.super Ljava/lang/Object;
.source "ExtraDisplayFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ExtraDisplayFactory$Dummy;
    }
.end annotation


# instance fields
.field public final mController:Lcom/android/server/wm/ExtraDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ExtraDisplayController;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/ExtraDisplayFactory;->mController:Lcom/android/server/wm/ExtraDisplayController;

    return-void
.end method

.method public static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/ExtraDisplayController;
    .registers 2

    .line 34
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    new-instance v0, Lcom/android/server/wm/CoverDisplayController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CoverDisplayController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0

    .line 37
    :cond_c
    new-instance v0, Lcom/android/server/wm/ExtraDisplayFactory$Dummy;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ExtraDisplayFactory$Dummy;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method


# virtual methods
.method public cover()Lcom/android/server/wm/CoverDisplayController;
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayFactory;->mController:Lcom/android/server/wm/ExtraDisplayController;

    instance-of v0, p0, Lcom/android/server/wm/CoverDisplayController;

    if-eqz v0, :cond_9

    .line 84
    check-cast p0, Lcom/android/server/wm/CoverDisplayController;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public flexible()Lcom/android/server/wm/FlexibleDisplayController;
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayFactory;->mController:Lcom/android/server/wm/ExtraDisplayController;

    instance-of v0, p0, Lcom/android/server/wm/FlexibleDisplayController;

    if-eqz v0, :cond_9

    .line 50
    check-cast p0, Lcom/android/server/wm/FlexibleDisplayController;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public flip()Lcom/android/server/wm/FlipDisplayController;
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayFactory;->mController:Lcom/android/server/wm/ExtraDisplayController;

    instance-of v0, p0, Lcom/android/server/wm/FlipDisplayController;

    if-eqz v0, :cond_9

    .line 72
    check-cast p0, Lcom/android/server/wm/FlipDisplayController;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public fold()Lcom/android/server/wm/FoldDisplayController;
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayFactory;->mController:Lcom/android/server/wm/ExtraDisplayController;

    instance-of v0, p0, Lcom/android/server/wm/FoldDisplayController;

    if-eqz v0, :cond_9

    .line 61
    check-cast p0, Lcom/android/server/wm/FoldDisplayController;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
