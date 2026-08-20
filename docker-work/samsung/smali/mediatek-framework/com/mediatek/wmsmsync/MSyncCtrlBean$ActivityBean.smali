.class public Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;
.super Ljava/lang/Object;
.source "MSyncCtrlBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wmsmsync/MSyncCtrlBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityBean"
.end annotation


# instance fields
.field private blacklist mFps:F

.field private blacklist mImeFps:F

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mVoiceFps:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFps()F
    .registers 2

    .line 132
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mFps:F

    return v0
.end method

.method public blacklist getImeFps()F
    .registers 2

    .line 116
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mImeFps:F

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVoiceFps()F
    .registers 2

    .line 140
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mVoiceFps:F

    return v0
.end method

.method public blacklist setFps(F)V
    .registers 2
    .param p1, "fps"    # F

    .line 136
    iput p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mFps:F

    .line 137
    return-void
.end method

.method public blacklist setImeFps(F)V
    .registers 2
    .param p1, "imeFps"    # F

    .line 120
    iput p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mImeFps:F

    .line 121
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public blacklist setVoiceFps(F)V
    .registers 2
    .param p1, "voiceFps"    # F

    .line 144
    iput p1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mVoiceFps:F

    .line 145
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imeFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mImeFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voiceFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->mVoiceFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
