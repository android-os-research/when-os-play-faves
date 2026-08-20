.class public Lcom/android/server/wm/CustomLetterboxConfiguration;
.super Ljava/lang/Object;
.source "CustomLetterboxConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CustomLetterboxConfiguration$Mode;,
        Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;
    }
.end annotation


# static fields
.field public static final ALLOW_LIVE_WALLPAPER_BELOW_LETTERBOX:Z = false

.field public static final DEFAULT_ENHANCED_MODE:I

.field public static final DEFAULT_MODE:I

.field public static final MODE_COMMAND:Ljava/lang/String; = "-setCustomLetterboxMode"

.field public static final TAG:Ljava/lang/String; = "CustomLetterbox"

.field public static final UNKNOWN_BACKGROUND_TYPE:I = -0x1

.field public static final UNKNOWN_DARK_SCRIM_ALPHA:F = -1.0f

.field public static final UNKNOWN_RADIUS:I = -0x1


# instance fields
.field public mDisplayBoundsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mEnhancedControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/CustomLetterboxEnhancedController;",
            ">;"
        }
    .end annotation
.end field

.field public mHasLiveWallpaper:Z

.field public mLetterboxActivityCornersRadius:I

.field public final mLetterboxBackgroundColor:Landroid/graphics/Color;

.field public mLetterboxBackgroundWallpaperBlurRadius:I

.field public final mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mMode:I

.field public mNightMode:I

.field public mTopOpeningAppWithWallpaperLetterbox:Lcom/android/server/wm/ActivityRecord;

.field public mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$HWIBpAm9gXZ_7dtUeb8tKcri_2I(Lcom/android/server/wm/CustomLetterboxConfiguration;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->lambda$updateWallpaperType$2(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R8zUupS7MyniNg9AKt-GoJQdusw(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->lambda$registerWallpaperChangedReceiver$1(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wrw-PTGEJhl7xZkQybSn7m9CYg0(Lcom/android/server/wm/CustomLetterboxConfiguration;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->lambda$onUiModeChanged$0(Lcom/android/server/wm/CustomLetterboxConfiguration;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmWmService(Lcom/android/server/wm/CustomLetterboxConfiguration;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateWallpaperType(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->updateWallpaperType()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 82
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ONE_UI_5_1:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x7

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    .line 83
    :goto_b
    sput v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_ENHANCED_MODE:I

    .line 85
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    sput v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    iput v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/high16 v0, -0x1000000

    .line 92
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundColor:Landroid/graphics/Color;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mDisplayBoundsArray:Landroid/util/SparseArray;

    .line 276
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v0, :cond_23

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    iput-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxConfiguration-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;-><init>()V

    return-void
.end method

.method public static adjustAnimationDurationIfNeeded(Landroid/view/animation/Animation;Z)V
    .registers 2

    if-nez p1, :cond_f

    .line 265
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/CustomLetterboxConfiguration;->mTopOpeningAppWithWallpaperLetterbox:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_b

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 268
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_f
    :goto_f
    return-void
.end method

.method public static adjustLetterboxes(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_5

    return-void

    .line 217
    :cond_5
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 218
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 219
    iget-object v2, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mDisplayBoundsArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_1f

    .line 221
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 222
    iget-object v3, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mDisplayBoundsArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2e

    .line 227
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 230
    :cond_2e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v1, :cond_35

    .line 231
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;Z)V

    :cond_35
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 374
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6

    const-string v0, "-setCustomLetterboxMode"

    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 409
    :cond_a
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_14

    const-string p0, "Too many arguments."

    .line 410
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 413
    :cond_14
    sget v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    .line 415
    :try_start_16
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1c

    .line 418
    :catch_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Mode="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->setMode(I)V

    return v2
.end method

.method public static getCustomLetterboxActivityCornersRadius(Lcom/android/server/wm/ActivityRecord;)I
    .registers 2

    .line 178
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 179
    :cond_8
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x6

    if-ne p0, v0, :cond_18

    goto :goto_1f

    .line 185
    :cond_18
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static getCustomLetterboxBackgroundColor(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Color;
    .registers 1

    .line 189
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_8
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundColor:Landroid/graphics/Color;

    return-object p0
.end method

.method public static getCustomLetterboxBackgroundType(Lcom/android/server/wm/ActivityRecord;)I
    .registers 2

    .line 170
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 171
    :cond_8
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x3

    return p0
.end method

.method public static getCustomLetterboxBackgroundWallpaperBlurRadius(Lcom/android/server/wm/ActivityRecord;)I
    .registers 2

    .line 199
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 200
    :cond_8
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    goto :goto_1e

    .line 206
    :cond_19
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getLetterboxBackgroundWallpaperBlurRadius()I

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static getCustomLetterboxBackgroundWallpaperDarkScrimAlpha(Lcom/android/server/wm/ActivityRecord;)F
    .registers 1

    .line 194
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_9

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 195
    :cond_9
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;
    .registers 1

    .line 65
    sget-object v0, Lcom/android/server/wm/CustomLetterboxConfiguration$LazyHolder;->sInstance:Lcom/android/server/wm/CustomLetterboxConfiguration;

    return-object v0
.end method

.method public static getLetterboxBackgroundWallpaperBlurRadius()I
    .registers 1

    .line 210
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return v0
.end method

.method public static hasLetterboxSurface(Lcom/android/server/wm/DisplayContent;)Z
    .registers 6

    .line 236
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 237
    iget v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_32

    const/4 v3, 0x5

    if-ne v1, v3, :cond_e

    goto :goto_32

    .line 242
    :cond_e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    .line 243
    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isEnabledEnhanced(I)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz p0, :cond_31

    .line 247
    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    .line 247
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_2f

    .line 249
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldShowLetterboxLocked()Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2f
    move v2, v4

    :cond_30
    return v2

    :cond_31
    return v4

    :cond_32
    :goto_32
    return v2
.end method

.method public static hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 132
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxUiController;->hasWallpaperBackgroudForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isAllowWallpaperBelowLetterbox()Z
    .registers 2

    .line 369
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static isCustomLetterboxEnabled(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 159
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    if-eqz v0, :cond_18

    if-eqz p0, :cond_18

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/wm/BoundsCompatController;->isCustomLetterboxEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static isEnabledEnhanced(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static isWaitingForEnhancedEnabled(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 355
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_1e

    .line 356
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 357
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isWaitingForEnhancedEnabledLocked()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static synthetic lambda$onUiModeChanged$0(Lcom/android/server/wm/CustomLetterboxConfiguration;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public static synthetic lambda$registerWallpaperChangedReceiver$1(Lcom/android/server/wm/CustomLetterboxConfiguration;)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/CustomLetterboxConfiguration$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CustomLetterboxConfiguration$1;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->updateWallpaperType()V

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "CustomLetterbox"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSystemReady: hasLiveWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$updateWallpaperType$2(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "ENABLED_BLACK_LETTERBOX"

    return-object p0

    :pswitch_1d
    const-string p0, "ENABLED_ENHANCED_HIDING_WALLPAPER"

    return-object p0

    :pswitch_20
    const-string p0, "ENABLED_ENHANCED_WITHOUT_ROUNDED_CORNER"

    return-object p0

    :pswitch_23
    const-string p0, "ENABLED_WITHOUT_BLUR_AND_ROUNDED_CORNER"

    return-object p0

    :pswitch_26
    const-string p0, "ENABLED_WITHOUT_ROUNDED_CORNER"

    return-object p0

    :pswitch_29
    const-string p0, "ENABLED_WITHOUT_BLUR"

    return-object p0

    :pswitch_2c
    const-string p0, "ENABLED_ENHANCED"

    return-object p0

    :pswitch_2f
    const-string p0, "ENABLED"

    return-object p0

    :pswitch_32
    const-string p0, "DISABLED"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static onConfigurationChanged()V
    .registers 3

    .line 108
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 109
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object v1, v1, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500dc

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    const v2, 0x10500dd

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return-void
.end method

.method public static onUiModeChanged()V
    .registers 4

    .line 117
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 118
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLetterboxConfiguration:Lcom/android/server/wm/LetterboxConfiguration;

    iget-object v1, v1, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 120
    iget v2, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mNightMode:I

    if-ne v1, v2, :cond_1b

    return-void

    .line 123
    :cond_1b
    iput v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mNightMode:I

    .line 124
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v2, :cond_44

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUiModeChanged: nightMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomLetterbox"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    :cond_44
    return-void
.end method

.method public static performEnhancedControllerIfNonNull(Lcom/android/server/wm/DisplayContent;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/CustomLetterboxEnhancedController;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 347
    :cond_3
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_1c

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 349
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public static registerWallpaperChangedReceiver()V
    .registers 3

    .line 279
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 280
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setMode(I)V
    .registers 4

    .line 141
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isEnabledEnhanced(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 144
    :cond_b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_HIDING_WALLPAPER:Z

    if-nez v0, :cond_13

    const/4 v0, 0x7

    if-ne p0, v0, :cond_13

    return-void

    .line 148
    :cond_13
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    .line 149
    iget-object v1, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 150
    iget v2, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    if-ne p0, v2, :cond_28

    .line 151
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 153
    :cond_28
    :try_start_28
    iput p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    .line 154
    iget-object p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 155
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static setUseLetterbox(Z)V
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x8

    goto :goto_7

    .line 137
    :cond_5
    sget p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->DEFAULT_MODE:I

    :goto_7
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->setMode(I)V

    return-void
.end method

.method public static setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 104
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iput-object p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static shouldHideWallpaper(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 364
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-eqz p0, :cond_1e

    .line 365
    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->shouldHideWallpaper()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static updateTopOpeningApp(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    if-eqz p0, :cond_9

    .line 258
    invoke-static {p0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, 0x0

    .line 261
    :cond_9
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getInstance()Lcom/android/server/wm/CustomLetterboxConfiguration;

    move-result-object v0

    iput-object p0, v0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mTopOpeningAppWithWallpaperLetterbox:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final applyLetterboxEnhancedIfNeeded(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 6

    .line 321
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isEnabledEnhanced(I)Z

    move-result v0

    .line 322
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 323
    iget-object v2, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    if-nez v0, :cond_1d

    if-nez v2, :cond_17

    return-void

    .line 328
    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_33

    :cond_1d
    if-nez v2, :cond_33

    .line 330
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v2, :cond_29

    .line 331
    new-instance v2, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;

    invoke-direct {v2, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaper;-><init>(Lcom/android/server/wm/DisplayContent;)V

    goto :goto_2e

    .line 333
    :cond_29
    new-instance v2, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    invoke-direct {v2, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 335
    :goto_2e
    iget-object p1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    :cond_33
    :goto_33
    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    invoke-virtual {v2, v0, p0, p2}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->applyLetterboxEnhancedIfNeededLocked(ZZZ)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "CustomLetterboxConfiguration"

    .line 379
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Mode="

    .line 381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mMode:I

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", CornersRadius="

    .line 383
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", BlurRadius="

    .line 385
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mTopOpeningAppWithWallpaperLetterbox:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3b

    const-string v0, ", mTopOpeningApp="

    .line 388
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mTopOpeningAppWithWallpaperLetterbox:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 391
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 392
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v0, :cond_66

    .line 393
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "HasLiveWallpaper="

    .line 394
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 v0, 0x0

    .line 396
    :goto_50
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_66

    .line 397
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mEnhancedControllers:Landroid/util/SparseArray;

    .line 398
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/CustomLetterboxEnhancedController;

    .line 399
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_66
    return-void
.end method

.method public final updateWallpaperType()V
    .registers 6

    .line 301
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/util/SafetySystemService;->getWallpaperManager()Landroid/app/WallpaperManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 305
    :cond_7
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 306
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_51

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 307
    iget-boolean v2, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    if-ne v0, v2, :cond_21

    .line 308
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 310
    :cond_21
    :try_start_21
    iput-boolean v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mHasLiveWallpaper:Z

    const-string v2, "CustomLetterbox"

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWallpaperType: hasLiveWallpaper="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxConfiguration;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/CustomLetterboxConfiguration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/CustomLetterboxConfiguration;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 314
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_4b

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_51

    goto :goto_55

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    return-void
.end method
