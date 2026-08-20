.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .line 7857
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7858
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 7859
    return-void
.end method

.method private blacklist doDirectWritingIfNeeded(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 7888
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDesktopMode(Landroid/view/ViewRootImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingState;->isDirectWritingUsable(Ljava/lang/Boolean;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 7889
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirectWritingTrigger(Landroid/view/ViewRootImpl;)Landroid/widget/directwriting/DirectWritingTrigger;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/directwriting/DirectWritingTrigger;->procDirectWritingFlag(Landroid/content/Context;Z)V

    .line 7890
    return v1

    .line 7892
    :cond_1f
    const/16 v0, 0x4002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 7893
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmSendLastEvent(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 7894
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmSendLastEvent(Landroid/view/ViewRootImpl;Z)V

    .line 7895
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirectWritingTrigger(Landroid/view/ViewRootImpl;)Landroid/widget/directwriting/DirectWritingTrigger;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmSendLastEvent(Landroid/view/ViewRootImpl;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/directwriting/DirectWritingTrigger;->procDirectWritingFlag(Landroid/content/Context;Z)V

    .line 7897
    :cond_47
    return v1

    .line 7899
    :cond_48
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-$$Nest$fputmSendLastEvent(Landroid/view/ViewRootImpl;Z)V

    .line 7903
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmEventHandledOnDWT(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 7904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_64

    .line 7905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_69

    .line 7907
    :cond_64
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->updateEditTextVisible(Z)V

    .line 7913
    :cond_69
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirectWritingTrigger(Landroid/view/ViewRootImpl;)Landroid/widget/directwriting/DirectWritingTrigger;

    move-result-object v0

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Landroid/widget/directwriting/DirectWritingTrigger;->onPenEvent(Landroid/content/Context;Landroid/view/InputEvent;)Z

    move-result v0

    .line 7915
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_9c

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirectWritingTrigger(Landroid/view/ViewRootImpl;)Landroid/widget/directwriting/DirectWritingTrigger;

    move-result-object v3

    .line 7916
    invoke-virtual {v3}, Landroid/widget/directwriting/DirectWritingTrigger;->isNeedToBlockIME()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 7917
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirectWritingTrigger(Landroid/view/ViewRootImpl;)Landroid/widget/directwriting/DirectWritingTrigger;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmSendLastEvent(Landroid/view/ViewRootImpl;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/directwriting/DirectWritingTrigger;->procDirectWritingFlag(Landroid/content/Context;Z)V

    .line 7920
    :cond_9c
    if-eqz v0, :cond_b6

    .line 7921
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmEventHandledOnDWT(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 7922
    return v2

    .line 7924
    :cond_a7
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DirectWriting, Event is handled on DWS!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7925
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 7927
    :cond_b6
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->-$$Nest$fputmEventHandledOnDWT(Landroid/view/ViewRootImpl;Z)V

    .line 7928
    return v1
.end method

.method private greylist-max-o maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x4002

    .line 8169
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 8171
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    const/16 v3, 0xa

    if-eq v0, v2, :cond_27

    .line 8172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_2c

    .line 8175
    :cond_27
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPointerIconType(Landroid/view/ViewRootImpl;I)V

    .line 8178
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_4d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4d

    .line 8179
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 8180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4d

    .line 8181
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPointerIconType(Landroid/view/ViewRootImpl;I)V

    .line 8185
    :cond_4d
    return-void
.end method

.method private greylist-max-o performFocusNavigation(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 7944
    const/4 v0, 0x0

    .line 7945
    .local v0, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_b6

    goto :goto_3d

    .line 7967
    :sswitch_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 7968
    const/4 v0, 0x2

    goto :goto_3d

    .line 7969
    :cond_12
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 7970
    const/4 v0, 0x1

    goto :goto_3d

    .line 7952
    :sswitch_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 7953
    const/16 v0, 0x42

    goto :goto_3d

    .line 7947
    :sswitch_23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 7948
    const/16 v0, 0x11

    goto :goto_3d

    .line 7962
    :sswitch_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 7963
    const/16 v0, 0x82

    goto :goto_3d

    .line 7957
    :sswitch_35
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 7958
    const/16 v0, 0x21

    .line 7974
    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    if-eqz v0, :cond_b5

    .line 7975
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 7976
    .local v3, "focused":Landroid/view/View;
    if-eqz v3, :cond_aa

    .line 7977
    invoke-virtual {v3, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .line 7978
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_9e

    if-eq v4, v3, :cond_9e

    .line 7982
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 7983
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_81

    .line 7984
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7986
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7989
    :cond_81
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTempRect(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 7990
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_94

    move v1, v2

    .line 7991
    .local v1, "isFastScrolling":Z
    :cond_94
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7992
    invoke-static {v0, v1}, Landroid/view/SoundEffectConstants;->getConstantForFocusDirection(IZ)I

    move-result v6

    .line 7991
    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 7994
    return v2

    .line 7999
    .end local v1    # "isFastScrolling":Z
    :cond_9e
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v3, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 8000
    return v2

    .line 8002
    .end local v4    # "v":Landroid/view/View;
    :cond_a9
    goto :goto_b5

    .line 8003
    :cond_aa
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 8004
    return v2

    .line 8008
    .end local v3    # "focused":Landroid/view/View;
    :cond_b5
    :goto_b5
    return v1

    :sswitch_data_b6
    .sparse-switch
        0x13 -> :sswitch_35
        0x14 -> :sswitch_2c
        0x15 -> :sswitch_23
        0x16 -> :sswitch_1a
        0x3d -> :sswitch_a
    .end sparse-switch
.end method

.method private greylist-max-o performKeyboardGroupNavigation(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 8012
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 8013
    .local v0, "focused":Landroid/view/View;
    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8014
    return v1

    .line 8016
    :cond_16
    const/4 v2, 0x0

    if-nez v0, :cond_20

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_24

    .line 8017
    :cond_20
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :goto_24
    nop

    .line 8021
    .local v3, "cluster":Landroid/view/View;
    move v4, p1

    .line 8022
    .local v4, "realDirection":I
    const/4 v5, 0x2

    if-eq p1, v5, :cond_2b

    if-ne p1, v1, :cond_2d

    .line 8023
    :cond_2b
    const/16 v4, 0x82

    .line 8026
    :cond_2d
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 8028
    invoke-virtual {v3}, Landroid/view/View;->restoreFocusNotInCluster()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 8029
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 8030
    return v1

    .line 8033
    :cond_45
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v2, p1}, Landroid/view/ViewRootImpl;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 8036
    :cond_4b
    if-eqz v3, :cond_5d

    invoke-virtual {v3, v4}, Landroid/view/View;->restoreFocusInCluster(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 8037
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 8038
    return v1

    .line 8041
    :cond_5d
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8203
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8205
    .local v0, "event":Landroid/view/MotionEvent;
    const v1, 0x100008

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 8206
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8207
    return v2

    .line 8212
    :cond_21
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 8213
    return v2

    .line 8215
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 9
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8045
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    .line 8047
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preViewDispatch(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 8048
    return v2

    .line 8052
    :cond_12
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViewPostIme key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8056
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    .line 8058
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-nez v1, :cond_41

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_62

    .line 8059
    :cond_41
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x3f7

    if-eq v1, v4, :cond_51

    .line 8060
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x437

    if-ne v1, v4, :cond_62

    :cond_51
    nop

    .line 8061
    const-string/jumbo v1, "sys.datawedge.prop"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_62

    .line 8062
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8067
    :cond_62
    return v2

    .line 8070
    :cond_63
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_6b

    .line 8071
    return v4

    .line 8077
    :cond_6b
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmUnhandledKeyManager(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;

    move-result-object v1

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v5, v0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 8078
    return v2

    .line 8081
    :cond_7c
    const/4 v1, 0x0

    .line 8083
    .local v1, "groupNavigationDirection":I
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_a7

    .line 8084
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_a7

    .line 8085
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    const/high16 v6, 0x10000

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 8086
    const/4 v1, 0x2

    goto :goto_a7

    .line 8087
    :cond_99
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    const v6, 0x10001

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 8089
    const/4 v1, 0x1

    .line 8094
    :cond_a7
    :goto_a7
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_db

    .line 8095
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v5

    if-nez v5, :cond_db

    .line 8096
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_db

    .line 8097
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_db

    if-nez v1, :cond_db

    .line 8099
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 8100
    return v2

    .line 8102
    :cond_d4
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 8103
    return v4

    .line 8108
    :cond_db
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v0}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 8109
    return v2

    .line 8111
    :cond_e6
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 8112
    return v4

    .line 8116
    :cond_ed
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_103

    .line 8117
    if-eqz v1, :cond_fc

    .line 8118
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performKeyboardGroupNavigation(I)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 8119
    return v2

    .line 8122
    :cond_fc
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->performFocusNavigation(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_103

    .line 8123
    return v2

    .line 8127
    :cond_103
    return v3
.end method

.method private greylist-max-o processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8131
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8134
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 8139
    .local v1, "action":I
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmMotionEventMonitor(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 8140
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmMotionEventMonitor(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v2

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl$MotionEventMonitor;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 8144
    :cond_1b
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmHandwritingInitiator(Landroid/view/ViewRootImpl;)Landroid/view/HandwritingInitiator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/HandwritingInitiator;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8146
    const/4 v2, 0x1

    if-eqz v1, :cond_37

    if-eq v1, v2, :cond_37

    sget-boolean v3, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v3, :cond_4f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4f

    const/4 v3, 0x7

    if-eq v1, v3, :cond_4f

    const/16 v3, 0xd5

    if-eq v1, v3, :cond_4f

    .line 8148
    :cond_37
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ViewPostIme pointer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8151
    :cond_4f
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    .line 8152
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 8153
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 8154
    .local v3, "handled":Z
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->maybeUpdatePointerIcon(Landroid/view/MotionEvent;)V

    .line 8155
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeUpdateTooltip(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 8156
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHandlingPointerEvent:Z

    .line 8157
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v4, :cond_8f

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v4, :cond_8f

    .line 8158
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v2, v4, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 8159
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v2, :cond_8f

    .line 8160
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    .line 8163
    :cond_8f
    return v3
.end method

.method private greylist-max-o processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 5
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8188
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 8190
    .local v0, "event":Landroid/view/MotionEvent;
    const v1, 0x20004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 8191
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->hasPointerCapture()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchCapturedPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8192
    :cond_20
    return v2

    .line 8196
    :cond_21
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 8197
    return v2

    .line 8199
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7933
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 7935
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7936
    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7937
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 7938
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 7940
    :cond_28
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7941
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7863
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_b

    .line 7864
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    return v0

    .line 7867
    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_DIRECT_WRITING:Z

    if-eqz v0, :cond_1b

    .line 7868
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->doDirectWritingIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7869
    .local v0, "eventHandledByDW":Z
    if-eqz v0, :cond_1b

    .line 7870
    const/4 v1, 0x1

    return v1

    .line 7875
    .end local v0    # "eventHandledByDW":Z
    :cond_1b
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 7876
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2a

    .line 7877
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 7878
    :cond_2a
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_33

    .line 7879
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    .line 7881
    :cond_33
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1
.end method
