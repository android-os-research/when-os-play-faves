.class public Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;
.super Lcom/android/server/display/RefreshRateToken;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshRateMinLimitToken"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 3805
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Lcom/android/server/display/RefreshRateToken;-><init>()V

    return-void
.end method


# virtual methods
.method public updateVote()V
    .registers 6

    .line 3808
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4a

    .line 3813
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    invoke-virtual {v0}, Lcom/android/server/display/RefreshRateTokenController;->getRefreshRateTokenList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3814
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, -0x80000000

    move v2, v1

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/RefreshRateToken;

    .line 3815
    instance-of v4, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;

    if-nez v4, :cond_2d

    goto :goto_1c

    .line 3818
    :cond_2d
    iget-object v3, v3, Lcom/android/server/display/RefreshRateToken;->mInfo:Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;

    iget v3, v3, Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_1c

    if-lt v3, v2, :cond_1c

    move v2, v3

    goto :goto_1c

    :cond_39
    if-le v2, v1, :cond_43

    int-to-float v0, v2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 3824
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    .line 3825
    :goto_44
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMinLimitToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    :cond_4a
    :goto_4a
    return-void
.end method
