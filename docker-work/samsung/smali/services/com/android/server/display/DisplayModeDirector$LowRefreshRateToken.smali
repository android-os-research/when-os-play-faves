.class public Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;
.super Lcom/android/server/display/RefreshRateToken;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LowRefreshRateToken"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 3740
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Lcom/android/server/display/RefreshRateToken;-><init>()V

    return-void
.end method


# virtual methods
.method public updateVote()V
    .registers 3

    .line 3744
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRateTokenController:Lcom/android/server/display/RefreshRateTokenController;

    invoke-virtual {v0}, Lcom/android/server/display/RefreshRateTokenController;->getRefreshRateTokenList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3745
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/RefreshRateToken;

    .line 3746
    instance-of v1, v1, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    .line 3747
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 3751
    :goto_25
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$LowRefreshRateToken;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method
