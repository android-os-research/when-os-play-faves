.class public final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final DEBUG:Z = false

.field public static final DEJANK_FRAMES:I = 0x3

.field public static final EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I = 0x3490

.field public static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field public static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_SEC_COOL_DOWN:I = 0x3

.field public static final MODE_WARM_UP:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ColorFade"


# instance fields
.field public mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mBLASTSurfaceControl:Landroid/view/SurfaceControl;

.field public mContext:Landroid/content/Context;

.field public mCreatedResources:Z

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayLayerStack:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayWidth:I

.field public mEglConfig:Landroid/opengl/EGLConfig;

.field public mEglContext:Landroid/opengl/EGLContext;

.field public mEglDisplay:Landroid/opengl/EGLDisplay;

.field public mEglSurface:Landroid/opengl/EGLSurface;

.field public final mGLBuffers:[I

.field public mGammaLoc:I

.field public mIsResolutionChanged:Z

.field public mLastWasProtectedContent:Z

.field public mLastWasWideColor:Z

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mMode:I

.field public mOpacityLoc:I

.field public mPrepared:Z

.field public mProgram:I

.field public final mProjMatrix:[F

.field public mProjMatrixLoc:I

.field public mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

.field public mSaturationLoc:I

.field public mScaleLoc:I

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceAlpha:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field public mSurfaceVisible:Z

.field public final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field public mTexCoordLoc:I

.field public final mTexMatrix:[F

.field public mTexMatrixLoc:I

.field public final mTexNames:[I

.field public mTexNamesGenerated:Z

.field public mTexUnitLoc:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mVertexLoc:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmIsResolutionChanged(Lcom/android/server/display/ColorFade;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 114
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 119
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    new-array v0, v0, [F

    .line 120
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 121
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v0, 0x8

    .line 132
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 133
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 135
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 844
    new-instance v0, Lcom/android/server/display/ColorFade$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorFade$1;-><init>(Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    .line 160
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 161
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method

.method public static checkGlErrors(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    .line 1018
    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 1024
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p1, :cond_27

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    const/4 v0, 0x1

    goto :goto_1

    :cond_29
    return v0
.end method

.method public static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 1008
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1009
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1010
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static logEglError(Ljava/lang/String;)V
    .registers 3

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: error "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ColorFade"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 6

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    .line 471
    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    .line 472
    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-float/2addr p4, p2

    const/4 v0, 0x3

    .line 473
    invoke-virtual {p0, v0, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-float/2addr p1, p3

    const/4 p3, 0x4

    .line 474
    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p3, 0x5

    .line 475
    invoke-virtual {p0, p3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p3, 0x6

    .line 476
    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p1, 0x7

    .line 477
    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final attachEglContext()Z
    .registers 4

    .line 990
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 993
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "eglMakeCurrent"

    .line 994
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v1

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public final captureScreen()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p0, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 713
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "ColorFade"

    const-string v0, "Failed to take screenshot. Buffer is null"

    .line 715
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_12
    return-object p0
.end method

.method public final createEglContext(Z)Z
    .registers 16

    .line 776
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_28

    .line 777
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 778
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v5, :cond_18

    const-string p0, "eglGetDisplay"

    .line 779
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v4

    :cond_18
    new-array v5, v2, [I

    .line 784
    invoke-static {v0, v5, v4, v5, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 785
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const-string p0, "eglInitialize"

    .line 786
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v4

    .line 791
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_5c

    const/16 v0, 0xb

    new-array v6, v0, [I

    .line 792
    fill-array-data v6, :array_94

    new-array v0, v3, [I

    new-array v13, v3, [Landroid/opengl/EGLConfig;

    .line 803
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v8, v13

    move-object v11, v0

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v5

    if-nez v5, :cond_4b

    const-string p0, "eglChooseConfig"

    .line 805
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v4

    :cond_4b
    aget v0, v0, v4

    if-gtz v0, :cond_58

    const-string p0, "ColorFade"

    const-string/jumbo p1, "no valid config found"

    .line 809
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_58
    aget-object v0, v13, v4

    .line 813
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 818
    :cond_5c
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_6b

    iget-boolean v5, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    if-eq p1, v5, :cond_6b

    .line 819
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 820
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 823
    :cond_6b
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_92

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 824
    fill-array-data v0, :array_ae

    if-eqz p1, :cond_7e

    const/16 p1, 0x32c0

    aput p1, v0, v2

    const/4 p1, 0x3

    aput v3, v0, p1

    .line 833
    :cond_7e
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p1, v1, v2, v0, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez p1, :cond_92

    const-string p0, "eglCreateContext"

    .line 836
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v4

    :cond_92
    return v3

    nop

    :array_94
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_ae
    .array-data 4
        0x3098
        0x2
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method public final createEglSurface(ZZ)Z
    .registers 7

    .line 908
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    if-eq p2, v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 910
    :goto_e
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_1c

    if-eqz v0, :cond_1c

    .line 911
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const/4 v0, 0x0

    .line 912
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 915
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_51

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 916
    fill-array-data v0, :array_52

    if-eqz p2, :cond_32

    const/16 p2, 0x309d

    aput p2, v0, v1

    const/4 p2, 0x2

    const/16 v3, 0x3490

    aput v3, v0, v2

    goto :goto_33

    :cond_32
    move p2, v1

    :goto_33
    if-eqz p1, :cond_3d

    add-int/lit8 p1, p2, 0x1

    const/16 v3, 0x32c0

    .line 931
    aput v3, v0, p2

    .line 932
    aput v2, v0, p1

    .line 935
    :cond_3d
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {p1, p2, v3, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez p1, :cond_51

    const-string p0, "eglCreateWindowSurface"

    .line 938
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    return v1

    :cond_51
    return v2

    :array_52
    .array-data 4
        0x3038
        0x3038
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method public final createSurfaceControl(Z)Z
    .registers 16

    .line 722
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    iget v3, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-eq v3, v2, :cond_14

    .line 723
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v1

    :cond_14
    const/4 v0, 0x0

    .line 728
    :try_start_15
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorFade_d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 729
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v4, "ColorFade.createSurface"

    .line 730
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 731
    iget v4, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v4, v2, :cond_3f

    .line 732
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_45

    .line 734
    :cond_3f
    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 735
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 737
    :goto_45
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_4b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15 .. :try_end_4b} :catch_e7

    .line 743
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v4, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 744
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 747
    iget v3, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-eq v3, v2, :cond_c3

    .line 748
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorFade BLAST_d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 750
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 751
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 752
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 753
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 756
    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v6, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    const/4 v7, -0x1

    const-string v3, "ColorFade"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 758
    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 759
    new-instance p1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v7, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;)V

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    goto :goto_d3

    .line 762
    :cond_c3
    new-instance p1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v9, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v10, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v11, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;)V

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 767
    :goto_d3
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    invoke-virtual {p1, v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->setOnResolutionChangedCb(Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;)V

    .line 769
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 770
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v1

    :catch_e7
    move-exception p0

    const-string p1, "ColorFade"

    const-string v1, "Unable to create surface."

    .line 739
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final destroyEglSurface()V
    .registers 3

    .line 946
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_14

    .line 947
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "eglDestroySurface"

    .line 948
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    :cond_11
    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_14
    return-void
.end method

.method public final destroyGLBuffers()V
    .registers 3

    .line 462
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const-string/jumbo p0, "glDeleteBuffers"

    .line 463
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    return-void
.end method

.method public final destroyGLShaders()V
    .registers 2

    .line 413
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    if-nez v0, :cond_5

    return-void

    .line 416
    :cond_5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 417
    iput v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo p0, "glDeleteProgram"

    .line 418
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    return-void
.end method

.method public final destroyScreenshotTexture()V
    .registers 3

    .line 704
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v1, 0x1

    .line 706
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string/jumbo p0, "glDeleteTextures"

    .line 707
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    :cond_13
    return-void
.end method

.method public final destroySurface()V
    .registers 4

    .line 955
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_38

    .line 956
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 958
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 959
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_20

    .line 960
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 961
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 964
    :cond_20
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_30

    .line 965
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 966
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 967
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 968
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 971
    :cond_30
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    .line 972
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v0, 0x0

    .line 973
    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    :cond_38
    return-void
.end method

.method public final detachEglContext()V
    .registers 3

    .line 1001
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz p0, :cond_b

    .line 1002
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_b
    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 520
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_14

    .line 521
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 522
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 523
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 524
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    .line 526
    :cond_12
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    :cond_14
    return-void
.end method

.method public dismissResources()V
    .registers 2

    .line 491
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_22

    .line 492
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 494
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 495
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 497
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1d

    .line 499
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 503
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    goto :goto_22

    :catchall_1d
    move-exception v0

    .line 499
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 500
    throw v0

    :cond_22
    :goto_22
    return-void
.end method

.method public draw(F)Z
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 542
    iget-boolean v2, v1, Lcom/android/server/display/ColorFade;->mPrepared:Z

    const/4 v3, 0x0

    if-nez v2, :cond_12

    const-string v0, "ColorFade"

    const-string/jumbo v1, "not prepared. so returned"

    .line 543
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 548
    :cond_12
    iget-object v2, v1, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    monitor-enter v2

    .line 549
    :try_start_15
    iget-boolean v4, v1, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    if-eqz v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    move-result v4

    if-nez v4, :cond_28

    const-string v0, "ColorFade"

    const-string v1, "Failed to handle resolution change!"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    monitor-exit v2

    return v3

    .line 553
    :cond_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_e3

    .line 556
    iget v2, v1, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, v4, :cond_36

    sub-float/2addr v5, v0

    .line 557
    invoke-virtual {v1, v5}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 560
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v2

    if-nez v2, :cond_44

    const-string v0, "ColorFade"

    const-string v1, "attachEglContext() failed. so returned"

    .line 561
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_44
    const/4 v2, 0x0

    .line 566
    :try_start_45
    invoke-static {v2, v2, v2, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 567
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 570
    iget v2, v1, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v4, 0x3

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-ne v2, v4, :cond_72

    const v2, 0x3f4ccccd    # 0.8f

    float-to-double v10, v0

    .line 574
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    const v6, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v4, v6

    add-float/2addr v4, v2

    sub-float v0, v5, v0

    float-to-double v6, v0

    .line 575
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    sub-float v0, v5, v0

    .line 576
    invoke-virtual {v1, v0, v5, v4, v5}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    goto :goto_c2

    :cond_72
    sub-float v2, v5, v0

    float-to-double v10, v2

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v10

    .line 579
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v2, v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_8a

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    goto :goto_8c

    :cond_8a
    move-wide/from16 v16, v14

    .line 581
    :goto_8c
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v2, v3

    double-to-float v2, v2

    add-float/2addr v2, v5

    float-to-double v3, v0

    .line 582
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 583
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    neg-double v3, v3

    add-double/2addr v3, v14

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v6

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    add-double/2addr v3, v10

    double-to-float v3, v3

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v14

    .line 584
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v16, v16, v8

    add-double v16, v16, v14

    mul-double v16, v16, v10

    add-double v6, v16, v6

    double-to-float v4, v6

    div-float v4, v5, v4

    .line 585
    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    :goto_c2
    const-string v0, "drawFrame"

    .line 588
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_c8
    .catchall {:try_start_45 .. :try_end_c8} :catchall_de

    if-eqz v0, :cond_cf

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    const/4 v0, 0x0

    return v0

    .line 592
    :cond_cf
    :try_start_cf
    iget-object v0, v1, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v1, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_de

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 596
    invoke-virtual {v1, v5}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    :catchall_de
    move-exception v0

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 595
    throw v0

    :catchall_e3
    move-exception v0

    .line 553
    :try_start_e4
    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0
.end method

.method public final drawFaded(FFFF)V
    .registers 15

    .line 605
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 608
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 609
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 610
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 612
    iget p1, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 614
    iget p1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2e

    .line 615
    iget p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 616
    iget p1, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_2e
    const p1, 0x84c0

    .line 621
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 622
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget p1, p1, v3

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 625
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget p1, p1, v3

    const p3, 0x8892

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 626
    iget p1, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 627
    iget v4, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 629
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget p1, p1, v2

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 630
    iget p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 631
    iget v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 p0, 0x6

    const/4 p1, 0x4

    .line 633
    invoke-static {p0, v3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 636
    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 637
    invoke-static {p3, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1034
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Color Fade State:"

    .line 1035
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleResolutionChange()Z
    .registers 7

    .line 854
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 855
    iget v0, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    iput v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 857
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 858
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    return v1

    .line 862
    :cond_13
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    const-string v4, "ColorFade"

    if-eqz v3, :cond_6c

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v5, :cond_1e

    goto :goto_6c

    :cond_1e
    if-eqz v0, :cond_24

    .line 869
    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    goto :goto_27

    .line 871
    :cond_24
    invoke-virtual {v3, v5}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 873
    :goto_27
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_2e

    .line 874
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    .line 877
    :cond_2e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v0, :cond_39

    const-string/jumbo p0, "handleResolutionChange(): mEglDisplay is null"

    .line 878
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 882
    :cond_39
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    iget-boolean v3, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    invoke-virtual {p0, v0, v3}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    .line 884
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_4d

    const-string/jumbo p0, "handleResolutionChange(): attachEglContext fail !!!"

    .line 885
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 890
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_67

    .line 892
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 895
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-nez v0, :cond_5e

    .line 896
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    .line 899
    :cond_5e
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    const-string/jumbo p0, "handleResolutionChange(): Done!"

    .line 900
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_67
    move-exception v0

    .line 892
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 893
    throw v0

    :cond_6c
    :goto_6c
    const-string/jumbo v0, "handleResolutionChange(): mSurface or mSurfaceControl is null"

    .line 863
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    return v2
.end method

.method public final initGLBuffers()Z
    .registers 7

    .line 423
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 426
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const/16 v3, 0x2600

    .line 427
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 429
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 431
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 433
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 435
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 438
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 441
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 442
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 447
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v5, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 450
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 453
    iget p0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7c

    const/16 p0, 0xbe2

    .line 454
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 455
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    :cond_7c
    return v3
.end method

.method public final initGLShaders(Landroid/content/Context;)Z
    .registers 6

    .line 362
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const v0, 0x110000b

    const v2, 0x110000a

    goto :goto_12

    :cond_c
    const v0, 0x1100003

    const v2, 0x1100002

    :goto_12
    const v3, 0x8b31

    .line 371
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    const v3, 0x8b30

    .line 373
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result p1

    .line 375
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    const/4 v2, 0x0

    if-eqz v0, :cond_bb

    if-nez p1, :cond_2a

    goto/16 :goto_bb

    .line 378
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 379
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 381
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 382
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 383
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 384
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 386
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 388
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 389
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "uv"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 391
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "proj_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 392
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "tex_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 394
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "opacity"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 396
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "saturation"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mSaturationLoc:I

    .line 398
    iget p1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    if-eq p1, v1, :cond_a1

    .line 399
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string v0, "gamma"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 400
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "scale"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mScaleLoc:I

    .line 403
    :cond_a1
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "texUnit"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 405
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 406
    iget p0, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 407
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p0, 0x1

    return p0

    :cond_bb
    :goto_bb
    return v2
.end method

.method public final loadShader(Landroid/content/Context;II)I
    .registers 5

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 341
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 343
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 344
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x1

    new-array p0, p0, [I

    const p2, 0x8b81

    const/4 v0, 0x0

    .line 347
    invoke-static {p1, p2, p0, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p0, p0, v0

    if-nez p0, :cond_51

    .line 349
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not compile shader "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ColorFade"

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p1, v0

    :cond_51
    return p1
.end method

.method public final ortho(FFFFFF)V
    .registers 13

    .line 641
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v1, v0

    const/4 v3, 0x0

    aput v2, p0, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 642
    aput v3, p0, v2

    const/4 v2, 0x2

    .line 643
    aput v3, p0, v2

    const/4 v2, 0x3

    .line 644
    aput v3, p0, v2

    const/4 v2, 0x4

    .line 645
    aput v3, p0, v2

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/4 v4, 0x5

    .line 646
    aput v1, p0, v4

    const/4 v1, 0x6

    .line 647
    aput v3, p0, v1

    const/4 v1, 0x7

    .line 648
    aput v3, p0, v1

    const/16 v1, 0x8

    .line 649
    aput v3, p0, v1

    const/16 v1, 0x9

    .line 650
    aput v3, p0, v1

    sub-float v1, p6, p5

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v4, v1

    const/16 v5, 0xa

    .line 651
    aput v4, p0, v5

    const/16 v4, 0xb

    .line 652
    aput v3, p0, v4

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v0

    const/16 p2, 0xc

    .line 653
    aput p1, p0, p2

    add-float/2addr p4, p3

    neg-float p1, p4

    div-float/2addr p1, v2

    const/16 p2, 0xd

    .line 654
    aput p1, p0, p2

    add-float/2addr p6, p5

    neg-float p1, p6

    div-float/2addr p1, v1

    const/16 p2, 0xe

    .line 655
    aput p1, p0, p2

    const/16 p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    .line 656
    aput p2, p0, p1

    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p2

    const-string v2, "ColorFade"

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorFade start [PREPARE]  : mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    .line 187
    iput-object v2, v1, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    .line 188
    iput v0, v1, Lcom/android/server/display/ColorFade;->mMode:I

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 190
    iget-object v4, v1, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, v1, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_34

    return v5

    .line 198
    :cond_34
    iget-boolean v6, v1, Lcom/android/server/display/ColorFade;->mPrepared:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_5e

    .line 199
    iget-object v6, v1, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;

    monitor-enter v6

    .line 200
    :try_start_3c
    iget-boolean v0, v1, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    if-eqz v0, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "ColorFade"

    const-string v2, "Failed to handle resolution change!"

    .line 201
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 203
    monitor-exit v6

    return v5

    .line 205
    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_5b

    const-string v0, "ColorFade"

    const-string v1, "ColorFade is already prepared"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catchall_5b
    move-exception v0

    .line 205
    :try_start_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    const-string v6, "ColorFade"

    const-string v8, "ColorFade start display info."

    .line 212
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 216
    iget v8, v4, Landroid/view/DisplayInfo;->layerStack:I

    iput v8, v1, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 217
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v8

    iput v8, v1, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 218
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, v1, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 220
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_8b

    const-string v0, "ColorFade"

    const-string v1, "Failed to take screenshot because internal display is disconnected"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 226
    :cond_8b
    invoke-static {v4}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    const/16 v8, 0x9

    if-ne v4, v8, :cond_97

    move v4, v7

    goto :goto_98

    :cond_97
    move v4, v5

    .line 230
    :goto_98
    iput-boolean v7, v1, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "ColorFade"

    const-string v10, "ColorFade end display info."

    .line 232
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 235
    iget v8, v1, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e4

    .line 236
    invoke-virtual {v1, v5}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    return v5

    :cond_c5
    const-string v1, "ColorFade"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorFade End [PREPARE]  : mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , <Time> displayInfo: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_e4
    const-string v8, "ColorFade"

    const-string v9, "ColorFade start screenshot."

    .line 243
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->captureScreen()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v9

    if-nez v9, :cond_fd

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    return v5

    .line 250
    :cond_fd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "ColorFade"

    const-string v12, "ColorFade end screenshot."

    .line 251
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 255
    invoke-virtual {v9}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/utils/RotationAnimationUtils;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v11

    .line 256
    invoke-virtual {v9}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v12

    invoke-virtual {v1, v12}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    move-result v12

    if-nez v12, :cond_137

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    return v5

    .line 260
    :cond_137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 261
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "ColorFade"

    const-string v13, "ColorFade start egl and surface."

    .line 263
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 265
    invoke-virtual {v1, v11}, Lcom/android/server/display/ColorFade;->createEglContext(Z)Z

    move-result v13

    if-eqz v13, :cond_2b9

    invoke-virtual {v1, v11, v4}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    move-result v13

    if-eqz v13, :cond_2b9

    .line 266
    invoke-virtual {v1, v9}, Lcom/android/server/display/ColorFade;->setScreenshotTextureAndSetViewport(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Z

    move-result v9

    if-nez v9, :cond_16f

    goto/16 :goto_2b9

    .line 270
    :cond_16f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v13, "ColorFade"

    const-string v14, "ColorFade end egl and surface."

    .line 271
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "ColorFade"

    const-string v13, "ColorFade start init GL."

    .line 274
    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v13

    if-nez v13, :cond_1a1

    return v5

    .line 281
    :cond_1a1
    :try_start_1a1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2aa

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result v2

    if-eqz v2, :cond_2aa

    const-string/jumbo v2, "prepare"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v2
    :try_end_1b4
    .catchall {:try_start_1a1 .. :try_end_1b4} :catchall_2b4

    if-eqz v2, :cond_1b8

    goto/16 :goto_2aa

    .line 287
    :cond_1b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v13, "ColorFade"

    const-string v14, "ColorFade end init GL."

    .line 290
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "ColorFade"

    const-string v14, "ColorFade start setColorFadeNightDim"

    .line 294
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v13, v1, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "mDNIe"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v13, v1, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 296
    invoke-virtual {v13, v7}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "ColorFade"

    const-string v15, "ColorFade end setColorFadeNightDim"

    .line 298
    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 301
    iput-boolean v7, v1, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 302
    iput-boolean v11, v1, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 303
    iput-boolean v4, v1, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    const-string v4, "ColorFade"

    const-string v11, "ColorFade start dejank."

    .line 312
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x3

    if-eq v0, v7, :cond_224

    if-ne v0, v11, :cond_22e

    :cond_224
    :goto_224
    if-ge v5, v11, :cond_22e

    const/high16 v13, 0x3f800000    # 1.0f

    .line 316
    invoke-virtual {v1, v13}, Lcom/android/server/display/ColorFade;->draw(F)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_224

    .line 319
    :cond_22e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "ColorFade"

    const-string v11, "ColorFade end dejank."

    .line 320
    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "ColorFade"

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ColorFade End [PREPARE]  : mode="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", <Time> displayInfo: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", screenshot: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", createSurface : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", egl : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initGl : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nightModeTime : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dejank : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalPrepare : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 282
    :cond_2aa
    :goto_2aa
    :try_start_2aa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_2b0
    .catchall {:try_start_2aa .. :try_end_2b0} :catchall_2b4

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    return v5

    :catchall_2b4
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 288
    throw v0

    .line 267
    :cond_2b9
    :goto_2b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    return v5
.end method

.method public final readFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 329
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 330
    new-instance p1, Ljava/lang/String;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p0

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized shader "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColorFade"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setScreenshotTextureAndSetViewport(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)Z
    .registers 12

    .line 661
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 665
    :cond_8
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 666
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string/jumbo v0, "glGenTextures"

    .line 667
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_a3

    if-eqz v0, :cond_1f

    .line 698
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    return v1

    .line 670
    :cond_1f
    :try_start_1f
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    :cond_21
    const-string v0, "ColorFade"

    const-string v3, "ColorFade setScreenshot"

    .line 672
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 674
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_a3

    .line 676
    :try_start_36
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    .line 677
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 676
    invoke-virtual {v3, v4, p1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 679
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 680
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_9b

    .line 682
    :try_start_49
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 683
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 689
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 690
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 691
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 692
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 695
    iget p1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v4, 0x0

    .line 696
    iget p1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v5, p1

    const/4 v6, 0x0

    iget p1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v7, p1

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_97
    .catchall {:try_start_49 .. :try_end_97} :catchall_a3

    .line 698
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    return v2

    :catchall_9b
    move-exception p1

    .line 682
    :try_start_9c
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 683
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 684
    throw p1
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p1

    .line 698
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 699
    throw p1
.end method

.method public final showSurface(F)Z
    .registers 6

    .line 978
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_29

    .line 979
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 980
    invoke-virtual {v0, v2, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 981
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 983
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 984
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    :cond_29
    return v1
.end method
