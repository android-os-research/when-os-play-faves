.class public Lcom/android/server/wm/DexCompatController;
.super Ljava/lang/Object;
.source "DexCompatController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexCompatController$H;,
        Lcom/android/server/wm/DexCompatController$Request;
    }
.end annotation


# static fields
.field public static final DEBUG_DEX_COMPAT:Z

.field public static final TAG:Ljava/lang/String; = "DexCompatController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDecorCaptionHeightInFreeform:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDecorCaptionHeightInFullscreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/DexCompatController$H;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$Ia3O2-4THGs606-xPHcVAvjlp_0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DexCompatController;->lambda$getTopCompatActivityLocked$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXw2dw9-RT7MR0MGZ2qxCtW65FI(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/DexCompatController;->lambda$getTopCompatActivityLocked$1(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartActivityAsToggleFreeform(Lcom/android/server/wm/DexCompatController;Lcom/android/server/wm/DexCompatController$Request;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexCompatController;->startActivityAsToggleFreeform(Lcom/android/server/wm/DexCompatController$Request;IZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 75
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/DexCompatController;->DEBUG_DEX_COMPAT:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFullscreen:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFreeform:Landroid/util/SparseArray;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 87
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/DexCompatController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static convertToConfigurationOrientation(I)I
    .registers 3

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_13

    const/16 v1, 0xc

    if-eq p0, v1, :cond_12

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :cond_12
    :pswitch_12
    return v0

    :cond_13
    :pswitch_13
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x6
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public static synthetic lambda$getTopCompatActivityLocked$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static synthetic lambda$getTopCompatActivityLocked$1(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 225
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public applyDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 12

    if-eqz p2, :cond_10c

    .line 128
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_10c

    :cond_8
    if-nez p1, :cond_e

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexCompatController;->getTopCompatActivityLocked(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :cond_e
    if-eqz p1, :cond_15

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_30

    .line 143
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->dexCompatEnabled:I

    if-ne v4, v3, :cond_25

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v1

    .line 147
    :goto_26
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_31

    move v5, v3

    goto :goto_32

    :cond_30
    move v4, v1

    :cond_31
    move v5, v2

    :goto_32
    const-string v6, "DexCompatController"

    if-eqz v4, :cond_3f

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/content/res/Configuration;->updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I

    goto/16 :goto_d4

    .line 156
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    if-ne v0, v2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v3

    .line 158
    :goto_4b
    iget-object v4, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_56

    return-void

    .line 163
    :cond_56
    iget-object v4, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 164
    iget-object v1, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 165
    invoke-static {v0, p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultWidth(II)I

    move-result v1

    .line 166
    invoke-static {v0, p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultHeight(II)I

    move-result p0

    if-lez v1, :cond_77

    if-gtz p0, :cond_94

    .line 169
    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyDexCompatConfigurationLocked: Invalid size, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    if-ne v5, v2, :cond_9f

    .line 173
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 174
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_a7

    .line 176
    :cond_9f
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 181
    :goto_a7
    iget v1, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3bcccccd    # 0.00625f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    add-float/2addr p0, v2

    float-to-int p0, p0

    .line 184
    iget v1, p3, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v1

    .line 185
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 186
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 188
    iput v0, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 189
    iput p0, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 190
    iput v4, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 191
    iput v5, p3, Landroid/content/res/Configuration;->orientation:I

    .line 192
    invoke-static {v1, v2, v4}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result p0

    iput p0, p3, Landroid/content/res/Configuration;->screenLayout:I

    .line 196
    :goto_d4
    iput v3, p3, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 198
    sget-boolean p0, Lcom/android/server/wm/DexCompatController;->DEBUG_DEX_COMPAT:Z

    if-nez p0, :cond_de

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_10c

    .line 199
    :cond_de
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DexCompat] applyDexCompatConfigurationLocked:  packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", outConfig="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", candidate="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10c
    :goto_10c
    return-void
.end method

.method public changeWindowingModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 14

    .line 325
    new-instance v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v9}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 326
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v1, p2

    move-object v3, p3

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 328
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    .line 329
    iget p3, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p3, :cond_51

    if-ne p0, p3, :cond_23

    goto :goto_51

    .line 334
    :cond_23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DexCompat] changeWindowingModeIfNeeded: prev="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", next="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", task="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DexCompatController"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget p0, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    :cond_51
    :goto_51
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string p0, "[DexCompatController]"

    .line 694
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getAppOrientation(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I
    .registers 3

    .line 399
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 401
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_12

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result p0

    goto :goto_16

    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :goto_16
    return p0

    :cond_17
    if-eqz p2, :cond_29

    .line 405
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 406
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result p0

    goto :goto_28

    .line 407
    :cond_24
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    :goto_28
    return p0

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public getCompatBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 383
    iget v0, p1, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DexCompatController;->getCompatBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public getCompatBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5

    .line 388
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DexCompatController;->getCompatBoundsProvider(I)Lcom/android/server/wm/DexCompatBoundsProvider;

    move-result-object p4

    if-nez p4, :cond_1e

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "rotateDexCompatTaskLocked: cannot found bounds provider, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexCompatController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_1e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DexCompatController;->getAppOrientation(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    invoke-virtual {p4, p1, p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->setInitialState(Lcom/android/server/wm/Task;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 394
    invoke-virtual {p4, p2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getBounds(Landroid/graphics/Rect;)V

    :cond_2b
    return-void
.end method

.method public getCompatBoundsProvider(I)Lcom/android/server/wm/DexCompatBoundsProvider;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_9

    .line 366
    new-instance p0, Lcom/android/server/wm/DexCompatBoundsProvider;

    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;-><init>()V

    return-object p0

    :cond_9
    const/4 p0, 0x2

    if-ne p1, p0, :cond_12

    .line 369
    new-instance p0, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;

    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;-><init>()V

    return-object p0

    :cond_12
    const/4 p0, 0x3

    if-ne p1, p0, :cond_1b

    .line 372
    new-instance p0, Lcom/android/server/wm/DexCompatBoundsProvider$FullscreenDexCompatBoundsProvider;

    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider$FullscreenDexCompatBoundsProvider;-><init>()V

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDecorCaptionHeight(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 275
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFullscreen:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_19

    :cond_c
    const/4 v0, 0x5

    if-ne p2, v0, :cond_18

    .line 277
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFreeform:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    if-eqz p0, :cond_20

    .line 280
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final getDexScreenSizeLocked()Landroid/graphics/Point;
    .registers 3

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 479
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexDisplaySizeLocked()Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    .line 482
    :cond_14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 483
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getOrientationFromTaskBounds(Lcom/android/server/wm/Task;)I
    .registers 6

    .line 489
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 492
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 493
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 497
    :goto_17
    iget v3, p1, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    if-eq v3, v2, :cond_4f

    if-eq v3, v1, :cond_32

    const/4 p1, 0x3

    if-eq v3, p1, :cond_21

    goto :goto_55

    .line 526
    :cond_21
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_63

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p1, p0, :cond_62

    goto :goto_63

    .line 508
    :cond_32
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 509
    iget-object p0, p1, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    if-nez p0, :cond_3d

    goto :goto_55

    .line 512
    :cond_3d
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    if-le p1, p0, :cond_62

    goto :goto_63

    .line 518
    :cond_44
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p1, p0, :cond_62

    goto :goto_63

    .line 499
    :cond_4f
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_57

    :goto_55
    move v1, v0

    goto :goto_63

    .line 501
    :cond_57
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p1, p0, :cond_62

    goto :goto_63

    :cond_62
    move v1, v2

    :cond_63
    :goto_63
    return v1
.end method

.method public final getResolvedLaunchPolicyForPackage(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;)I
    .registers 6

    .line 234
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", DesktopModeService is null, caller="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x6

    .line 237
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexCompatController"

    .line 236
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    if-nez p1, :cond_3a

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0

    .line 245
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_8e

    .line 249
    :cond_47
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    if-nez v0, :cond_64

    .line 250
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    iput p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 251
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result p0

    if-nez p0, :cond_61

    .line 252
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    or-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    .line 254
    :cond_61
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    return p0

    .line 255
    :cond_64
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8d

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8d

    .line 257
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    .line 260
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result p1

    if-nez p1, :cond_8c

    or-int/lit8 p0, p0, 0x1

    :cond_8c
    return p0

    :cond_8d
    return v1

    .line 246
    :cond_8e
    :goto_8e
    iput v1, p1, Lcom/android/server/wm/ActivityRecord;->mProcessAppLaunchPolicy:I

    return v1
.end method

.method public final getTopCompatActivityLocked(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_16

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    goto :goto_23

    :cond_16
    if-ne v0, v1, :cond_22

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    goto :goto_23

    :cond_22
    move-object p0, v3

    :goto_23
    if-eqz p1, :cond_51

    if-nez p0, :cond_28

    goto :goto_51

    .line 217
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v2, Lcom/android/server/wm/DexCompatController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/DexCompatController$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 224
    new-instance v2, Lcom/android/server/wm/DexCompatController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/wm/DexCompatController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_39

    return-object v0

    :cond_51
    :goto_51
    return-object v3
.end method

.method public initialize()V
    .registers 3

    .line 92
    new-instance v0, Lcom/android/server/wm/DexCompatController$H;

    iget-object v1, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexCompatController$H;-><init>(Lcom/android/server/wm/DexCompatController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DexCompatController;->mH:Lcom/android/server/wm/DexCompatController$H;

    return-void
.end method

.method public isOrientationChangedLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6

    .line 340
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 344
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 345
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v0, :cond_4a

    if-eqz p2, :cond_4a

    if-eqz v2, :cond_19

    if-eq v2, p2, :cond_19

    goto :goto_4a

    .line 351
    :cond_19
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p2

    invoke-static {p2}, Lcom/android/server/wm/DexCompatController;->convertToConfigurationOrientation(I)I

    move-result p2

    if-eqz p2, :cond_4a

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 354
    iget-object p1, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le p1, p0, :cond_44

    goto :goto_46

    :cond_44
    move p0, v0

    goto :goto_47

    :cond_46
    :goto_46
    const/4 p0, 0x2

    :goto_47
    if-eq p0, p2, :cond_4a

    move v1, v0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public loadResources(I)V
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "DexCompatController"

    const-string p1, "loadResources: failed, cannot find display!"

    .line 290
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DexController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_20

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 298
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFullscreen:Landroid/util/SparseArray;

    .line 300
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 299
    invoke-static {v0, v2}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeightInFullscreenMode(Landroid/content/Context;Landroid/content/res/Resources;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 298
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mDecorCaptionHeightInFreeform:Landroid/util/SparseArray;

    .line 303
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeightInFreeformMode(Landroid/content/Context;Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 301
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public resolveDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILandroid/content/res/Configuration;Ljava/lang/String;)Z
    .registers 6

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexCompatController;->shouldBeApplyDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;I)Z

    move-result p3

    if-nez p3, :cond_8

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_8
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/wm/DexCompatController;->applyDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public rotateDexCompatTaskLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 413
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_e5

    .line 414
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_e5

    .line 418
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v1, v4, :cond_25

    goto :goto_27

    :cond_25
    move v1, v3

    goto :goto_28

    :cond_27
    :goto_27
    move v1, v2

    .line 423
    :goto_28
    iget v4, p1, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DexCompatController;->getCompatBoundsProvider(I)Lcom/android/server/wm/DexCompatBoundsProvider;

    move-result-object v4

    const-string v5, "DexCompatController"

    if-nez v4, :cond_48

    .line 425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "rotateDexCompatTaskLocked: cannot found bounds provider, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_48
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 429
    invoke-virtual {v4, p1, v1}, Lcom/android/server/wm/DexCompatBoundsProvider;->setInitialState(Lcom/android/server/wm/Task;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 430
    invoke-virtual {v4, v6}, Lcom/android/server/wm/DexCompatBoundsProvider;->getBounds(Landroid/graphics/Rect;)V

    .line 432
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 433
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b2

    if-eqz v1, :cond_6c

    .line 434
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_6c

    const/4 v2, 0x5

    .line 435
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 438
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatController;->getDexScreenSizeLocked()Landroid/graphics/Point;

    move-result-object v1

    .line 440
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 442
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_84

    .line 443
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 444
    iget v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_85

    :cond_84
    move v4, v3

    .line 446
    :goto_85
    invoke-virtual {v6, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 450
    iget v2, v6, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_8e

    neg-int v2, v2

    goto :goto_98

    .line 452
    :cond_8e
    iget v2, v6, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-le v2, v4, :cond_97

    sub-int v2, v4, v2

    goto :goto_98

    :cond_97
    move v2, v3

    .line 455
    :goto_98
    iget v4, v6, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_9e

    neg-int v1, v4

    goto :goto_a7

    .line 457
    :cond_9e
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v4, v1, :cond_a6

    sub-int/2addr v1, v4

    goto :goto_a7

    :cond_a6
    move v1, v3

    .line 460
    :goto_a7
    invoke-virtual {v6, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 462
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v1, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_bd

    .line 464
    :cond_b2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexCompatUiFullscreen()Z

    move-result p0

    if-eqz p0, :cond_bd

    if-eqz v1, :cond_bd

    .line 466
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 471
    :cond_bd
    :goto_bd
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_e5

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DexCompat] rotateCompatTaskLocked: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", prev="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", new="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    :goto_e5
    return-void
.end method

.method public final scheduleStartActivityAsToggleFreeform(Lcom/android/server/wm/DexCompatController$Request;I)V
    .registers 4

    .line 608
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mH:Lcom/android/server/wm/DexCompatController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shouldBeApplyDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;I)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 109
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    if-nez p2, :cond_c

    :cond_b
    return v0

    :cond_c
    if-eqz p1, :cond_19

    .line 112
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_19

    return v0

    .line 116
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    if-eqz p3, :cond_2b

    :cond_26
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2d

    if-ne p3, v3, :cond_2d

    :cond_2b
    move p3, v2

    goto :goto_2e

    :cond_2d
    move p3, v0

    :goto_2e
    if-nez p3, :cond_31

    return v0

    .line 123
    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexCompatController;->getResolvedLaunchPolicyForPackage(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    and-int/2addr p0, v2

    if-eqz p0, :cond_39

    move v0, v2

    :cond_39
    return v0
.end method

.method public final startActivityAsToggleFreeform(Lcom/android/server/wm/DexCompatController$Request;IZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 612
    iget-object v3, v1, Lcom/android/server/wm/DexCompatController$Request;->wpc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_15

    .line 613
    iget-object v4, v0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v5, v1, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    move/from16 v6, p3

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/android/server/wm/DexController;->killProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;Z)Z

    .line 615
    :cond_15
    iget-object v3, v0, Lcom/android/server/wm/DexCompatController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 616
    iget-object v4, v0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-nez v4, :cond_41

    const-string v0, "DexCompatController"

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityAsToggleFreeform: failed, cannot find display#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_41
    const/4 v2, 0x6

    .line 622
    :try_start_42
    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 623
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 624
    iget-object v0, v0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    iget v3, v1, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    iget v4, v1, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    iget v5, v1, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    iget-object v6, v1, Lcom/android/server/wm/DexCompatController$Request;->callingPackage:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/DexCompatController$Request;->callingFeatureId:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/wm/DexCompatController$Request;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/wm/DexCompatController$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iget v15, v1, Lcom/android/server/wm/DexCompatController$Request;->userId:I

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    return-void

    :catchall_74
    move-exception v0

    .line 623
    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public toggleFreeformWindowingMode(Lcom/android/server/wm/Task;)V
    .registers 9

    .line 559
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 564
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    const-string p0, "DexCompatController"

    const-string p1, "[DexCompat] Display is not invalid."

    .line 566
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 570
    :cond_16
    iget-object v2, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/high16 v3, 0x100000

    .line 571
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 573
    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 576
    iget v4, p1, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_38

    .line 578
    iget-object v4, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 579
    iget-object v4, p0, Lcom/android/server/wm/DexCompatController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 580
    invoke-virtual {v3, v6}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    goto :goto_3c

    :cond_38
    const/4 v4, 0x5

    .line 582
    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 586
    :goto_3c
    new-instance v4, Lcom/android/server/wm/DexCompatController$Request;

    invoke-direct {v4}, Lcom/android/server/wm/DexCompatController$Request;-><init>()V

    .line 587
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, v4, Lcom/android/server/wm/DexCompatController$Request;->wpc:Lcom/android/server/wm/WindowProcessController;

    .line 588
    iput-object v2, v4, Lcom/android/server/wm/DexCompatController$Request;->intent:Landroid/content/Intent;

    .line 589
    iget v0, p1, Lcom/android/server/wm/Task;->mCallingUid:I

    iput v0, v4, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    .line 590
    iget-object v0, p1, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/server/wm/DexCompatController$Request;->callingPackage:Ljava/lang/String;

    .line 591
    iget-object v0, p1, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/server/wm/DexCompatController$Request;->callingFeatureId:Ljava/lang/String;

    .line 592
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, v4, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, v4, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    .line 594
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v0, v3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iput-object v0, v4, Lcom/android/server/wm/DexCompatController$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    const-string/jumbo v0, "toggleFreeformWindowingMode"

    .line 595
    iput-object v0, v4, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    .line 596
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    iput v2, v4, Lcom/android/server/wm/DexCompatController$Request;->userId:I

    .line 598
    iget-object v2, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 600
    :try_start_74
    iget-object v2, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v6, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 601
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/DexCompatController;->scheduleStartActivityAsToggleFreeform(Lcom/android/server/wm/DexCompatController$Request;I)V
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_87

    .line 603
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_87
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 604
    throw p1
.end method

.method public updateDexCompatLaunchPolicy(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V
    .registers 4

    .line 309
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 312
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DexCompatController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    iput p0, p1, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    const/4 p0, 0x0

    .line 313
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result p0

    if-nez p0, :cond_20

    .line 314
    iget p0, p1, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    or-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    .line 316
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[DexCompat] DexCompatLaunchPolicy: task="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mDexLaunchPolicy=0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/wm/Task;->mDexLaunchPolicy:I

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mResizeMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " info="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    sget-boolean p1, Lcom/android/server/wm/DexCompatController;->DEBUG_DEX_COMPAT:Z

    if-eqz p1, :cond_68

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", caller="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x6

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6a

    :cond_68
    const-string p1, ""

    :goto_6a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexCompatController"

    .line 316
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
