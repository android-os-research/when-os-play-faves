.class public final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaturalSurfaceLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;
    }
.end annotation


# instance fields
.field public mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

.field public mBlastControl:Landroid/view/SurfaceControl;

.field public mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayWidth:I

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;)V
    .registers 6

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1075
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 1076
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1077
    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    const/4 p3, 0x0

    .line 1079
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    .line 1080
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    .line 1081
    iput-object p4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

    .line 1082
    iput-object p5, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_25

    .line 1084
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 1085
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    :cond_25
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 1091
    monitor-enter p0

    const/4 v0, 0x0

    .line 1092
    :try_start_2
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1093
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    .line 1094
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void

    :catchall_b
    move-exception v0

    .line 1093
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    .line 1099
    monitor-enter p0

    .line 1100
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7

    .line 1101
    monitor-exit p0

    return-void

    .line 1104
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1108
    monitor-exit p0

    return-void

    .line 1111
    :cond_13
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_37

    const/4 v3, 0x3

    if-eq v1, v3, :cond_22

    goto :goto_75

    .line 1126
    :cond_22
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1127
    iget-object v5, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_75

    .line 1121
    :cond_37
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1123
    iget-object v5, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_75

    .line 1117
    :cond_4f
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1118
    iget-object v5, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_75

    .line 1113
    :cond_64
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1114
    iget-object v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1131
    :goto_75
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    .line 1133
    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    if-eq v2, v1, :cond_e9

    .line 1134
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    const-string v2, "ColorFade"

    .line 1135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorFade_d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Surface Size Changing From("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") To("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iput v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 1138
    iput v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 1140
    iget-object v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1141
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1143
    iget-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

    if-eqz p1, :cond_e2

    .line 1144
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1147
    :cond_e2
    iget-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    if-eqz p1, :cond_e9

    .line 1148
    invoke-interface {p1}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;->onResolutionChanged()V

    .line 1152
    :cond_e9
    monitor-exit p0

    return-void

    :catchall_eb
    move-exception p1

    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_1 .. :try_end_ed} :catchall_eb

    throw p1
.end method

.method public setOnResolutionChangedCb(Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;)V
    .registers 2

    .line 1068
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    return-void
.end method
