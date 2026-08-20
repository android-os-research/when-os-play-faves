.class public final Lcom/android/server/display/color/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/color/ColorDisplayService$BinderService;,
        Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;,
        Lcom/android/server/display/color/ColorDisplayService$TintHandler;,
        Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;,
        Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;,
        Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;,
        Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;,
        Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;,
        Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    }
.end annotation


# static fields
.field public static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

.field public static final MATRIX_GRAYSCALE:[F

.field public static final MATRIX_IDENTITY:[F

.field public static final MATRIX_INVERT_COLOR:[F

.field public static final MSG_APPLY_DISPLAY_WHITE_BALANCE:I = 0x5

.field public static final MSG_APPLY_GLOBAL_SATURATION:I = 0x4

.field public static final MSG_APPLY_NIGHT_DISPLAY_ANIMATED:I = 0x3

.field public static final MSG_APPLY_NIGHT_DISPLAY_IMMEDIATE:I = 0x2

.field public static final MSG_APPLY_REDUCE_BRIGHT_COLORS:I = 0x6

.field public static final MSG_SET_UP:I = 0x1

.field public static final MSG_USER_CHANGED:I = 0x0

.field public static final NOT_SET:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field public static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field public final mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

.field public mBootCompleted:Z

.field public mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

.field public mContentObserver:Landroid/database/ContentObserver;

.field public mCurrentUser:I

.field public mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

.field public final mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

.field public final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

.field public final mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

.field public mReduceBrightColorsListener:Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;

.field public final mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

.field public mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$-6SRj2w8CA2IkowcIpt6fwPL9Vw(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->lambda$applyTint$0(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSaturationController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalSaturationTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightDisplayAutoMode(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayWhiteBalanceListener(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReduceBrightColorsListener(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsListener:Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSetupObserver(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetNightDisplayAutoModeRawInternal(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTransformCapabilitiesInternal(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getTransformCapabilitiesInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceColorManagedInternal(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDeviceColorManagedInternal()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDisplayWhiteBalanceSettingEnabled(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monAccessibilityActivated(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityActivated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAccessibilityDaltonizerChanged(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAccessibilityInversionChanged(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDisplayColorModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNightDisplayAutoModeChanged(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNightDisplayCustomEndTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNightDisplayCustomStartTimeChanged(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monReduceBrightColorsActivationChanged(Lcom/android/server/display/color/ColorDisplayService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsActivationChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monReduceBrightColorsStrengthLevelChanged(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsStrengthLevelChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setColorModeInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisplayWhiteBalanceSettingEnabled(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setDisplayWhiteBalanceSettingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayAutoModeInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetReduceBrightColorsActivatedInternal(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setReduceBrightColorsActivatedInternal(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetReduceBrightColorsStrengthInternal(Lcom/android/server/display/color/ColorDisplayService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setReduceBrightColorsStrengthInternal(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetUp(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 108
    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v2, 0x0

    .line 111
    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 135
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator-IA;)V

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    new-array v1, v0, [F

    .line 139
    fill-array-data v1, :array_22

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    new-array v0, v0, [F

    .line 152
    fill-array-data v0, :array_46

    sput-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    return-void

    nop

    :array_22
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_46
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance p1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 162
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController-IA;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 164
    new-instance p1, Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-direct {p1}, Lcom/android/server/display/color/GlobalSaturationTintController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    .line 166
    new-instance p1, Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-direct {p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 172
    new-instance p1, Lcom/android/server/display/color/AppSaturationController;

    invoke-direct {p1}, Lcom/android/server/display/color/AppSaturationController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    const/16 p1, -0x2710

    .line 174
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 188
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 192
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$TintHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$TintHandler-IA;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 749
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 750
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result p0

    .line 749
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 753
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_24
    return-object p0
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 733
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 734
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result p0

    .line 733
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 737
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_24
    return-object p0
.end method

.method public static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 4

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    .line 277
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    move v1, p1

    :cond_c
    return v1
.end method

.method public static synthetic lambda$applyTint$0(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 688
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 689
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 690
    check-cast p2, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->updateMinMaxComponents()V

    return-void
.end method


# virtual methods
.method public final applyTint(Lcom/android/server/display/color/TintController;Z)V
    .registers 8

    .line 672
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 674
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 675
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 676
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getMatrix()[F

    move-result-object v2

    if-eqz p2, :cond_21

    .line 679
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_5d

    .line 681
    :cond_21
    sget-object p2, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v1, :cond_2b

    .line 682
    sget-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :cond_2b
    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 681
    invoke-static {p2, v3}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    move-result-object p2

    .line 683
    invoke-virtual {p1, p2}, Lcom/android/server/display/color/TintController;->setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V

    const-wide/16 v3, 0xbb8

    .line 684
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 686
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000d

    .line 685
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 692
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$3;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$3;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 720
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :goto_5d
    return-void
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "COLOR DISPLAY MANAGER dumpsys (color_display)"

    .line 1024
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Night display:"

    .line 1026
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "    Activated: "

    const-string v2, "    Not available"

    if-eqz v0, :cond_4d

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Color temp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_50

    .line 1031
    :cond_4d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_50
    const-string v0, "Global saturation:"

    .line 1034
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 1038
    :cond_7a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    :goto_7d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/AppSaturationController;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "Display white balance:"

    .line 1043
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_b4

    .line 1048
    :cond_b1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b4
    const-string v0, "Reduce bright colors:"

    .line 1051
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e6

    .line 1056
    :cond_e3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    :goto_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getColorModeInternal()I
    .registers 5

    .line 949
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 950
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 952
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ltz v1, :cond_20

    return v1

    .line 959
    :cond_20
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2f

    .line 963
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getCurrentColorModeFromSystemProperties()I

    move-result v0

    .line 968
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 969
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    if-eq v0, v3, :cond_54

    .line 971
    array-length v2, v1

    if-le v2, v0, :cond_54

    aget v2, v1, v0

    .line 972
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 973
    aget v3, v1, v0

    goto :goto_6b

    .line 975
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 977
    array-length v0, p0

    if-lez v0, :cond_6b

    const/4 v0, 0x0

    .line 978
    aget v3, p0, v0

    goto :goto_6b

    :cond_6a
    move v3, v0

    :cond_6b
    :goto_6b
    return v3
.end method

.method public final getCompositionColorSpace(I)I
    .registers 3

    .line 547
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    .line 551
    :cond_6
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getCurrentColorModeFromSystemProperties()I
    .registers 3

    const-string/jumbo p0, "persist.sys.sf.native_mode"

    const/4 v0, 0x0

    .line 994
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1a

    const-string/jumbo p0, "persist.sys.sf.color_saturation"

    .line 996
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1.0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1a
    const/4 v1, 0x2

    if-ne p0, v0, :cond_1e

    return v1

    :cond_1e
    if-ne p0, v1, :cond_22

    const/4 p0, 0x3

    return p0

    :cond_22
    const/16 v0, 0x100

    if-lt p0, v0, :cond_2b

    const/16 v0, 0x1ff

    if-gt p0, v0, :cond_2b

    return p0

    :cond_2b
    const/4 p0, -0x1

    return p0
.end method

.method public final getNightDisplayAutoModeInternal()I
    .registers 3

    .line 846
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 848
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0062

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_16
    if-eqz v0, :cond_35

    const/4 p0, 0x1

    if-eq v0, p0, :cond_35

    const/4 p0, 0x2

    if-eq v0, p0, :cond_35

    .line 854
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid autoMode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ColorDisplayService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_35
    return v0
.end method

.method public final getNightDisplayAutoModeRawInternal()I
    .registers 4

    .line 861
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    return v1

    .line 865
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;
    .registers 5

    .line 887
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_custom_end_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_23

    .line 890
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 893
    :cond_23
    new-instance p0, Landroid/hardware/display/Time;

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object p0
.end method

.method public final getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;
    .registers 5

    .line 870
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_custom_start_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_23

    .line 873
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0064

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 876
    :cond_23
    new-instance p0, Landroid/hardware/display/Time;

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object p0
.end method

.method public final getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;
    .registers 3

    .line 907
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 909
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string/jumbo v1, "night_display_last_activated_time"

    .line 908
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 912
    :try_start_19
    invoke-static {p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0
    :try_end_1d
    .catch Ljava/time/format/DateTimeParseException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    .line 918
    :catch_1e
    :try_start_1e
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 919
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 917
    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0
    :try_end_2e
    .catch Ljava/time/DateTimeException; {:try_start_1e .. :try_end_2e} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2e} :catch_2f

    return-object p0

    .line 923
    :catch_2f
    :cond_2f
    sget-object p0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getTransformCapabilitiesInternal()I
    .registers 3

    .line 821
    invoke-static {}, Landroid/view/SurfaceControl;->getProtectedContentSupport()Z

    move-result v0

    .line 824
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x11101ac

    .line 825
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x2

    :cond_17
    const v1, 0x11101ad

    .line 828
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_22

    or-int/lit8 v0, v0, 0x4

    :cond_22
    return v0
.end method

.method public final isAccessibilityEnabled()Z
    .registers 2

    .line 597
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final isAccessiblityDaltonizerEnabled()Z
    .registers 4

    .line 587
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public final isAccessiblityInversionEnabled()Z
    .registers 4

    .line 592
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v1, "accessibility_display_inversion_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public final isColorModeAvailable(I)Z
    .registers 6

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    .line 1014
    array-length v1, p0

    move v2, v0

    :goto_14
    if-ge v2, v1, :cond_1f

    aget v3, p0, v2

    if-ne v3, p1, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1f
    return v0
.end method

.method public final isDeviceColorManagedInternal()Z
    .registers 2

    .line 815
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 816
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayTransformManager;->isDeviceColorManaged()Z

    move-result p0

    return p0
.end method

.method public final isDisplayWhiteBalanceSettingEnabled()Z
    .registers 5

    .line 787
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    return v1

    .line 790
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 792
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110119

    .line 793
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 794
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v3, "display_white_balance_enabled"

    .line 790
    invoke-static {v0, v3, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2b

    move v1, v0

    :cond_2b
    return v1
.end method

.method public final onAccessibilityActivated()V
    .registers 2

    .line 583
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void
.end method

.method public final onAccessibilityDaltonizerChanged()V
    .registers 6

    .line 604
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    return-void

    .line 607
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_21

    .line 608
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v4, "accessibility_display_daltonizer"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_22

    :cond_21
    move v0, v1

    .line 613
    :goto_22
    const-class v2, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/color/DisplayTransformManager;

    const/16 v2, 0xc8

    if-nez v0, :cond_37

    .line 616
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 618
    invoke-virtual {p0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    goto :goto_3e

    :cond_37
    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 621
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    :goto_3e
    return-void
.end method

.method public final onAccessibilityInversionChanged()V
    .registers 3

    .line 629
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    return-void

    .line 632
    :cond_7
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    const/16 v1, 0x12c

    .line 634
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 633
    :goto_1b
    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_16

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 208
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_16

    .line 209
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_16
    return-void
.end method

.method public final onDisplayColorModeChanged(I)V
    .registers 6

    .line 555
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    return-void

    .line 559
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 560
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 562
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 564
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 565
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 566
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 573
    :cond_38
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 574
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getMatrix()[F

    move-result-object v1

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getCompositionColorSpace(I)I

    move-result v2

    .line 574
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMode(I[FI)Z

    .line 577
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 578
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    :cond_5a
    return-void
.end method

.method public final onNightDisplayAutoModeChanged(I)V
    .registers 4

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayAutoModeChanged: autoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_21

    .line 515
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    :cond_21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    .line 520
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    goto :goto_36

    :cond_2c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_36

    .line 522
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;

    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 525
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz p0, :cond_3d

    .line 526
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStart()V

    :cond_3d
    return-void
.end method

.method public final onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 4

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomEndTimeChanged: endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz p0, :cond_1e

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    :cond_1e
    return-void
.end method

.method public final onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 4

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomStartTimeChanged: startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz p0, :cond_1e

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    :cond_1e
    return-void
.end method

.method public final onReduceBrightColorsActivationChanged(Z)V
    .registers 6

    .line 638
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    return-void

    .line 641
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "reduce_bright_colors_activated"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    move v3, v1

    .line 643
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 644
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsListener:Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;

    if-eqz p0, :cond_2d

    .line 645
    invoke-interface {p0, v3, p1}, Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;->onReduceBrightColorsActivationChanged(ZZ)V

    :cond_2d
    return-void
.end method

.method public final onReduceBrightColorsStrengthLevelChanged()V
    .registers 5

    .line 651
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    return-void

    .line 654
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "reduce_bright_colors_level"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 657
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 660
    :cond_2a
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setMatrix(I)V

    .line 661
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsListener:Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;

    if-eqz p0, :cond_36

    .line 662
    invoke-interface {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;->onReduceBrightColorsStrengthChanged(I)V

    :cond_36
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 197
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$BinderService;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    const-string v1, "color_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 198
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 199
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    new-instance v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {v1}, Lcom/android/server/display/color/DisplayTransformManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserChanged(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_20

    .line 243
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_19

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_20

    .line 246
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_20

    .line 247
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->tearDown()V

    .line 251
    :cond_20
    :goto_20
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq p1, v2, :cond_4a

    .line 254
    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-nez p1, :cond_43

    .line 255
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$1;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService$1;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    const-string/jumbo p1, "user_setup_complete"

    .line 268
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_4a

    .line 270
    :cond_43
    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz p1, :cond_4a

    .line 271
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 216
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_18

    .line 217
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 219
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 232
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-ne v0, p1, :cond_18

    .line 233
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/16 v0, -0x2710

    .line 234
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 235
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 225
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 226
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 227
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final resetReduceBrightColors()Z
    .registers 8

    .line 486
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    return v1

    .line 490
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "reduce_bright_colors_activated"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    .line 495
    :goto_1f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v6, "reduce_bright_colors_persist_across_reboots"

    invoke-static {v4, v6, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_33

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    if-eqz v0, :cond_4f

    .line 503
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isActivatedStateNotSet()Z

    move-result v0

    if-eqz v0, :cond_4f

    if-eqz v2, :cond_4f

    .line 505
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v3, v1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_4f
    return v1
.end method

.method public setAppSaturationLevelInternal(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 934
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 935
    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/display/color/AppSaturationController;->setSaturationLevel(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setColorModeInternal(I)V
    .registers 4

    .line 940
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 943
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v1, "display_color_mode"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 941
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDisplayWhiteBalanceSettingEnabled(Z)Z
    .registers 4

    .line 778
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 781
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 783
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v1, "display_white_balance_enabled"

    .line 781
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setNightDisplayAutoModeInternal(I)Z
    .registers 6

    .line 835
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 836
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_last_activated_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 841
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v1, "night_display_auto_mode"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z
    .registers 4

    .line 897
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 898
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v1, "night_display_custom_end_time"

    .line 897
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z
    .registers 4

    .line 880
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 882
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v1, "night_display_custom_start_time"

    .line 880
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setReduceBrightColorsActivatedInternal(Z)Z
    .registers 4

    .line 799
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 802
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 803
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v1, "reduce_bright_colors_activated"

    .line 802
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setReduceBrightColorsStrengthInternal(I)Z
    .registers 4

    .line 807
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 810
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v1, "reduce_bright_colors_level"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setSaturationLevelInternal(I)V
    .registers 4

    .line 927
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 928
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 929
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setUp()V
    .registers 6

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUp: currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_26

    .line 309
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$2;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$2;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    .line 375
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_activated"

    .line 376
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "night_display_color_temperature"

    .line 378
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "night_display_auto_mode"

    .line 380
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "night_display_custom_start_time"

    .line 382
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "night_display_custom_end_time"

    .line 384
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "display_color_mode"

    .line 386
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "accessibility_display_inversion_enabled"

    .line 388
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "accessibility_display_daltonizer_enabled"

    .line 391
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 390
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "accessibility_display_daltonizer"

    .line 393
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "display_white_balance_enabled"

    .line 395
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "reduce_bright_colors_activated"

    .line 397
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "reduce_bright_colors_level"

    .line 399
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 403
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 404
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 406
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 412
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 413
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 415
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 419
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 420
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 426
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v1

    if-eqz v1, :cond_136

    .line 427
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 428
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 432
    :cond_136
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 434
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setUp(Landroid/content/Context;Z)V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 439
    :cond_14f
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 440
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setUp(Landroid/content/Context;Z)V

    .line 441
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsStrengthLevelChanged()V

    .line 442
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->resetReduceBrightColors()Z

    move-result v0

    if-nez v0, :cond_17a

    .line 444
    invoke-virtual {p0, v4}, Lcom/android/server/display/color/ColorDisplayService;->onReduceBrightColorsActivationChanged(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :cond_17a
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 452
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Lcom/android/server/display/color/TintController;->setUp(Landroid/content/Context;Z)V

    :cond_18f
    return-void
.end method

.method public final setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V
    .registers 7

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    const v0, 0x10700a9

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const v1, 0x10700aa

    .line 288
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    .line 293
    :cond_17
    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_23

    const-string p0, "ColorDisplayService"

    const-string p1, "Number of composition color spaces doesn\'t match specified color modes"

    .line 294
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_23
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 299
    :goto_2c
    array-length v2, v0

    if-ge v1, v2, :cond_3b

    .line 300
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    aget v3, v0, v1

    aget v4, p1, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3b
    return-void
.end method

.method public final tearDown()V
    .registers 4

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tearDown: currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2a

    .line 461
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 465
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_40

    .line 466
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 467
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 469
    :cond_40
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->endAnimator()V

    .line 472
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 473
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->endAnimator()V

    .line 476
    :cond_56
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 477
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 480
    :cond_67
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 481
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    invoke-virtual {p0, v1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setActivated(Ljava/lang/Boolean;)V

    :cond_78
    return-void
.end method

.method public updateDisplayWhiteBalanceStatus()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    .line 759
    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 760
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 761
    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 762
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 763
    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 760
    :goto_2d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 764
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v1

    .line 766
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    if-eqz v2, :cond_43

    if-eq v0, v1, :cond_43

    .line 767
    invoke-interface {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;->onDisplayWhiteBalanceStatusChanged(Z)V

    :cond_43
    if-nez v1, :cond_4b

    .line 773
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4b
    return-void
.end method
