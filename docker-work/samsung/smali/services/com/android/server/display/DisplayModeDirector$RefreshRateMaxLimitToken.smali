.class public Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;
.super Lcom/android/server/display/RefreshRateToken;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshRateMaxLimitToken"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 3761
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Lcom/android/server/display/RefreshRateToken;-><init>()V

    return-void
.end method


# virtual methods
.method public updateVote()V
    .registers 2

    .line 3764
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isPassiveLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->updateVote(Z)V

    return-void
.end method

.method public updateVote(Z)V
    .registers 7

    .line 3768
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5e

    .line 3773
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    invoke-virtual {v0}, Lcom/android/server/display/RefreshRateTokenController;->getRefreshRateTokenList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3774
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move v2, v1

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/RefreshRateToken;

    .line 3775
    instance-of v4, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;

    if-nez v4, :cond_2e

    goto :goto_1d

    .line 3778
    :cond_2e
    iget-object v3, v3, Lcom/android/server/display/RefreshRateToken;->mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    iget v3, v3, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_1d

    if-gt v3, v2, :cond_1d

    move v2, v3

    goto :goto_1d

    :cond_3a
    if-ge v2, v1, :cond_57

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    .line 3787
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object p1

    .line 3788
    invoke-virtual {p1, v2}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->getSupportedRefreshRateForPassive(I)I

    move-result p1

    int-to-float p1, p1

    .line 3786
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    goto :goto_58

    :cond_51
    int-to-float p1, v2

    .line 3790
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    .line 3795
    :goto_58
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    :cond_5e
    :goto_5e
    return-void
.end method
