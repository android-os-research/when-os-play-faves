.class public Lcom/android/server/DssController$Tools;
.super Ljava/lang/Object;
.source "DssController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tools"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$9HiiB19R1ZDUD55ZGSmiYKVpfio(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$3(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ef1Njm6mO9S-7i_wflPqaRf9hJ8(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$2(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMP3jxNKQ-lJBk-FaeN6b1mcROM(FLcom/android/server/DssController$PairConfiguration;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$4(FLcom/android/server/DssController$PairConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1aFeqDPLKmB5_ZN5zQodIptCzE(FLandroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToConfiguration$0(FLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hX3f_tdw2IhCV610S1kA09i4dWY(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->lambda$applyDssToMergedConfiguration$1(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDssToConfiguration(Landroid/content/res/Configuration;F)V
    .registers 3

    .line 122
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_a

    .line 123
    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 126
    :cond_a
    new-instance v0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda0;-><init>(F)V

    .line 132
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 134
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static applyDssToMergedConfiguration(Landroid/util/MergedConfiguration;F)V
    .registers 11

    .line 141
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 142
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 143
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz v1, :cond_1e

    .line 146
    invoke-static {v1, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_26

    :cond_1e
    if-eqz v0, :cond_26

    .line 150
    invoke-static {v0, p1}, Lcom/android/server/DssController$Tools;->scaleDpiValue(IF)I

    move-result v0

    iput v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 153
    :cond_26
    :goto_26
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 154
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 155
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 157
    new-instance v4, Lcom/android/server/DssController$PairConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 158
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    new-instance v7, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda1;

    invoke-direct {v7, v3}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda1;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 160
    new-instance v5, Lcom/android/server/DssController$PairConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 161
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;

    invoke-direct {v8, v3}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 163
    new-instance v6, Lcom/android/server/DssController$PairConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 164
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v7, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;

    invoke-direct {v7, v3}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda3;-><init>(Landroid/app/WindowConfiguration;)V

    invoke-direct {v6, v0, v1, v7}, Lcom/android/server/DssController$PairConfiguration;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda4;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 183
    invoke-virtual {p0, v2}, Landroid/util/MergedConfiguration;->setOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static applyScaleToCompatFrame(Landroid/graphics/Rect;F)V
    .registers 5

    .line 193
    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 194
    iget v1, p0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 195
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 196
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    neg-int p1, p1

    .line 197
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static synthetic lambda$applyDssToConfiguration$0(FLandroid/graphics/Rect;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 128
    invoke-static {p1, p0}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$1(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$2(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .registers 2

    .line 161
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$3(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V
    .registers 2

    .line 164
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$applyDssToMergedConfiguration$4(FLcom/android/server/DssController$PairConfiguration;)V
    .registers 4

    .line 172
    iget-object v0, p1, Lcom/android/server/DssController$PairConfiguration;->mAppGlobal:Landroid/graphics/Rect;

    .line 173
    iget-object v1, p1, Lcom/android/server/DssController$PairConfiguration;->mAppOverride:Landroid/graphics/Rect;

    if-eqz v1, :cond_c

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_16

    :cond_c
    if-eqz v0, :cond_15

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_20

    .line 178
    invoke-static {v0, p0}, Lcom/android/server/DssController$Tools;->applyScaleToCompatFrame(Landroid/graphics/Rect;F)V

    .line 179
    iget-object p0, p1, Lcom/android/server/DssController$PairConfiguration;->mBound:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method public static scaleDpiValue(IF)I
    .registers 2

    int-to-float p0, p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method
