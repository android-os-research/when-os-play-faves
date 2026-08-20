.class public Lcom/android/server/wm/DisplayContent$2;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayContent;->findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field public behindTopWindow:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic val$searchBehind:Lcom/android/server/wm/WindowState;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V
    .registers 4

    .line 7677
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$2;->val$searchBehind:Lcom/android/server/wm/WindowState;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$2;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 7678
    :goto_e
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$2;->behindTopWindow:Z

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 7682
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$2;->behindTopWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 7683
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$2;->val$searchBehind:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_c

    .line 7684
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent$2;->behindTopWindow:Z

    :cond_c
    return v2

    .line 7688
    :cond_d
    iget v0, p0, Lcom/android/server/wm/DisplayContent$2;->val$taskId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_19

    .line 7689
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p0

    if-nez p0, :cond_28

    return v2

    .line 7693
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 7694
    iget p0, p0, Lcom/android/server/wm/DisplayContent$2;->val$taskId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_30

    .line 7698
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    if-eqz p0, :cond_2f

    return v2

    :cond_2f
    return v1

    :cond_30
    :goto_30
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 7677
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$2;->test(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
