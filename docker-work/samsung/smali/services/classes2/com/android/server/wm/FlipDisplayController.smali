.class public Lcom/android/server/wm/FlipDisplayController;
.super Lcom/android/server/wm/FlexibleDisplayController;
.source "FlipDisplayController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
    .registers 3

    .line 38
    new-instance v0, Lcom/android/server/wm/FlipDisplayController$1;

    new-instance v1, Lcom/android/server/wm/FlipDisplayController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FlipDisplayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FlipDisplayController;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FlipDisplayController$1;-><init>(Lcom/android/server/wm/FlipDisplayController;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Ljava/lang/Boolean;
    .registers 4

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/FlexibleDisplayController;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onFoldChangedLocked(Z)V
    .registers 2

    return-void
.end method
