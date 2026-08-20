.class public Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
.super Ljava/lang/Object;
.source "ResolutionTunerAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Applic"
.end annotation


# instance fields
.field private blacklist filteredWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist scale:F

.field private blacklist scaleHeight:F

.field private blacklist scaleWidth:F

.field private blacklist scalingFlow:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist addFilteredWindow(Ljava/lang/String;)V
    .registers 3
    .param p1, "windowName"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScale()F
    .registers 2

    .line 212
    iget v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scale:F

    return v0
.end method

.method public blacklist getScaleHeight()F
    .registers 2

    .line 233
    iget v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    return v0
.end method

.method public blacklist getScaleWidth()F
    .registers 2

    .line 225
    iget v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    return v0
.end method

.method public blacklist getScalingFlow()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFiltered(Ljava/lang/String;)Z
    .registers 3
    .param p1, "windowName"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isGameFlow()Z
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    const-string v1, "game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->packageName:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public blacklist setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 216
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scale:F

    .line 217
    return-void
.end method

.method public blacklist setScale(FF)V
    .registers 3
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .line 220
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    .line 221
    iput p2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    .line 222
    return-void
.end method

.method public blacklist setScaleHeight(F)V
    .registers 2
    .param p1, "scaleHeight"    # F

    .line 237
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    .line 238
    return-void
.end method

.method public blacklist setScaleWidth(F)V
    .registers 2
    .param p1, "scaleWidth"    # F

    .line 229
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    .line 230
    return-void
.end method

.method public blacklist setScalingFlow(Ljava/lang/String;)V
    .registers 2
    .param p1, "scalingFlow"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scale=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scaleWidth=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scaleHeight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", filteredWindows= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scalingFlow= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
