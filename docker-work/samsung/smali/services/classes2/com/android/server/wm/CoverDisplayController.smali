.class public Lcom/android/server/wm/CoverDisplayController;
.super Lcom/android/server/wm/ExtraDisplayController;
.source "CoverDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public static synthetic $r8$lambda$8SBS-cLYV95EnMe-xbY8gxpOC-A(Lcom/android/server/wm/CoverDisplayController;)Ljava/lang/Boolean;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/CoverDisplayController;->lambda$getExtraDisplayPolicy$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/wm/ExtraDisplayController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method private synthetic lambda$getExtraDisplayPolicy$0()Ljava/lang/Boolean;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/wm/CoverDisplayController;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addViewCoverDisplay(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayController;->getExtraDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/CoverDisplayController;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_c
    return-void
.end method

.method public getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
    .registers 3

    .line 44
    new-instance v0, Lcom/android/server/wm/CoverDisplayController$1;

    new-instance v1, Lcom/android/server/wm/CoverDisplayController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CoverDisplayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverDisplayController;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/CoverDisplayController$1;-><init>(Lcom/android/server/wm/CoverDisplayController;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public removeViewCoverDisplay(I)V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayController;->getExtraDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/CoverDisplayController;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_9
    return-void
.end method

.method public updateCoverStateLocked()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/CoverDisplayController;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_5

    return-void

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ExtraDisplayController;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayController;->getExtraDisplayId()I

    move-result p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 70
    :goto_19
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt;->moveDisplayToTop(I)V

    return-void
.end method
