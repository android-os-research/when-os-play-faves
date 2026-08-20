.class public Lcom/mediatek/wmsmsync/MSyncCtrlBean;
.super Ljava/lang/Object;
.source "MSyncCtrlBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;
    }
.end annotation


# instance fields
.field private blacklist mActivityBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFps:F

.field private blacklist mImeFps:F

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mSlideResponse:Z

.field private blacklist mVoiceFps:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getActivityBeans()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mActivityBeans:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getFps()F
    .registers 2

    .line 84
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mFps:F

    return v0
.end method

.method public blacklist getImeFps()F
    .registers 2

    .line 68
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mImeFps:F

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVoiceFps()F
    .registers 2

    .line 92
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mVoiceFps:F

    return v0
.end method

.method public blacklist isSlideResponse()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mSlideResponse:Z

    return v0
.end method

.method public blacklist setActivityBeans(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "activityBeans":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;>;"
    iput-object p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mActivityBeans:Ljava/util/List;

    .line 65
    return-void
.end method

.method public blacklist setFps(F)V
    .registers 2
    .param p1, "defaultFps"    # F

    .line 88
    iput p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mFps:F

    .line 89
    return-void
.end method

.method public blacklist setImeFps(F)V
    .registers 2
    .param p1, "imeFps"    # F

    .line 72
    iput p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mImeFps:F

    .line 73
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public blacklist setSlideResponse(Z)V
    .registers 2
    .param p1, "slideResponse"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mSlideResponse:Z

    .line 81
    return-void
.end method

.method public blacklist setVoiceFps(F)V
    .registers 2
    .param p1, "voiceFps"    # F

    .line 96
    iput p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mVoiceFps:F

    .line 97
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSyncCtrlTableBean{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityBeans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mActivityBeans:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slideResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mSlideResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imeFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mImeFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voiceFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->mVoiceFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
