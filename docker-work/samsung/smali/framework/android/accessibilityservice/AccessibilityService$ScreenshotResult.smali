.class public final Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenshotResult"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTimestamp:J


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V
    .registers 6
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "timestamp"    # J

    .line 3231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3232
    const-string v0, "hardwareBuffer cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3233
    const-string v0, "colorSpace cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 3235
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 3236
    iput-wide p3, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    .line 3237
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;JLandroid/accessibilityservice/AccessibilityService$ScreenshotResult-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 3247
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 3261
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 3271
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-wide v0
.end method
