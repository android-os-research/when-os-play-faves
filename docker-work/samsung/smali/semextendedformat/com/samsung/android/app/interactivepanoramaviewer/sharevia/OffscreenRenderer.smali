.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;
.super Ljava/lang/Object;
.source "OffscreenRenderer.java"


# static fields
.field private static LSI_BOARD_HERO:Ljava/lang/String;

.field private static fboId:[I

.field private static mBoardType:Ljava/lang/String;

.field private static mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private static mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private static mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

.field private static renderBuffId:[I

.field private static surfaceHeight:I

.field private static surfaceWidth:I

.field private static textureId:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const/4 v0, 0x1

    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    .line 28
    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    .line 29
    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    .line 31
    const-string v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    .line 32
    const-string v0, "samsungexynos8890"

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offscreenFinalize()V
    .registers 3

    .line 168
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3b

    .line 169
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_32

    .line 170
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 172
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 173
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 174
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 175
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 177
    :cond_29
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 180
    :cond_32
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 183
    :cond_3b
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 186
    return-void
.end method

.method public static offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V
    .registers 34
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcImgW"    # I
    .param p2, "srcImgH"    # I
    .param p3, "srcTLx"    # I
    .param p4, "srcTLy"    # I
    .param p5, "srcCropW"    # I
    .param p6, "srcCropH"    # I
    .param p7, "srcScreenW"    # I
    .param p8, "srcScreenH"    # I
    .param p9, "imageFormat"    # I
    .param p10, "capturemode"    # I
    .param p11, "isFlipRequired"    # Z

    .line 36
    move/from16 v15, p7

    move/from16 v14, p8

    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    const/4 v13, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v14, p11

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;-><init>(Landroid/content/Context;IIIIIIIIIIZZ)V

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    .line 37
    sput v15, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    .line 38
    sput v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    .line 40
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 41
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 43
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 44
    .local v11, "version":[I
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 46
    const/4 v0, 0x1

    new-array v12, v0, [I

    .line 47
    .local v12, "totalConfigurations":[I
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-interface {v2, v3, v4, v13, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 48
    aget v2, v12, v13

    new-array v14, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 49
    .local v14, "configurationsList":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_1e4

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 53
    nop

    .line 54
    nop

    .line 49
    move-object/from16 v18, v2

    .line 56
    .local v18, "attribs":[I
    sget-object v16, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v17, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v20, 0x1

    move-object/from16 v19, v14

    move-object/from16 v21, v12

    invoke-interface/range {v16 .. v21}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Could not find config for GLES2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 59
    return-void

    .line 62
    :cond_7e
    sput-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "attribList":[I
    :try_start_81
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_89} :catch_1d3

    const-string v5, ""

    const/4 v7, 0x4

    const/16 v8, 0x3056

    const/16 v9, 0x3057

    const/4 v4, 0x5

    const/4 v6, 0x3

    if-nez v3, :cond_ba

    .line 67
    :try_start_94
    new-array v3, v4, [I

    .line 68
    aput v9, v3, v13

    const/16 v4, 0xa

    aput v4, v3, v0

    .line 69
    aput v8, v3, v1

    aput v4, v3, v6

    .line 70
    const/16 v1, 0x3038

    aput v1, v3, v7

    .line 67
    move-object v1, v3

    .line 72
    .end local v2    # "attribList":[I
    .local v1, "attribList":[I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offscreenInitialize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_e1

    .line 76
    .end local v1    # "attribList":[I
    .restart local v2    # "attribList":[I
    :cond_ba
    new-array v3, v4, [I

    .line 77
    aput v9, v3, v13

    sget v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    aput v4, v3, v0

    .line 78
    aput v8, v3, v1

    sget v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    aput v1, v3, v6

    .line 79
    const/16 v1, 0x3038

    aput v1, v3, v7

    .line 76
    move-object v1, v3

    .line 81
    .end local v2    # "attribList":[I
    .restart local v1    # "attribList":[I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offscreenInitialize: LSI_BOARD_HERO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_e1
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v14, v13

    invoke-interface {v2, v3, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ed} :catch_1d3

    .line 85
    .end local v1    # "attribList":[I
    nop

    .line 91
    if-eqz v2, :cond_1cf

    .line 92
    const/16 v17, 0x3098

    .line 93
    .local v17, "EGL_CONTEXT_CLIENT_VERSION":I
    const/16 v19, 0x2

    .line 94
    .local v19, "GLES_VERSION":I
    new-array v1, v6, [I

    fill-array-data v1, :array_1fa

    .line 95
    nop

    .line 96
    nop

    .line 94
    move-object v9, v1

    .line 97
    .local v9, "attribList":[I
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v14, v13

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 99
    if-eqz v1, :cond_1ce

    .line 100
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 101
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 103
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 104
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1, v2, v15, v10}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 106
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ca

    .line 109
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 110
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 111
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    invoke-static {v0, v1, v13}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 113
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    aget v0, v0, v13

    const/16 v8, 0xde1

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-static {v8, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 115
    const/16 v0, 0x2803

    invoke-static {v8, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 116
    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {v8, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 117
    const/16 v0, 0x2801

    invoke-static {v8, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 118
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v0, 0x1401

    const/16 v16, 0x0

    move/from16 v4, p7

    move/from16 v5, p8

    move v8, v0

    move-object v0, v9

    .end local v9    # "attribList":[I
    .local v0, "attribList":[I
    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 120
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    aget v1, v1, v13

    const v2, 0x8d41

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 121
    const v1, 0x81a5

    invoke-static {v2, v1, v15, v10}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 122
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    aget v1, v1, v13

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 123
    const v1, 0x8ce0

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    aget v4, v4, v13

    const/16 v5, 0xde1

    invoke-static {v3, v1, v5, v4, v13}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 124
    const v1, 0x8d00

    sget-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    aget v4, v4, v13

    invoke-static {v3, v1, v2, v4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 125
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 126
    .local v1, "s32FrameBufferStatus":I
    const v2, 0x8cd5

    if-ne v1, v2, :cond_1c2

    .line 129
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "--fbo pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1cb

    .line 127
    :cond_1c2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "FBO not complete."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v0    # "attribList":[I
    .end local v1    # "s32FrameBufferStatus":I
    .restart local v9    # "attribList":[I
    :cond_1ca
    move-object v0, v9

    .line 133
    .end local v9    # "attribList":[I
    .restart local v0    # "attribList":[I
    :goto_1cb
    return-void

    .line 100
    .end local v0    # "attribList":[I
    .restart local v9    # "attribList":[I
    :cond_1cc
    move-object v0, v9

    .end local v9    # "attribList":[I
    .restart local v0    # "attribList":[I
    goto :goto_1cf

    .line 99
    .end local v0    # "attribList":[I
    .restart local v9    # "attribList":[I
    :cond_1ce
    move-object v0, v9

    .line 138
    .end local v9    # "attribList":[I
    .end local v17    # "EGL_CONTEXT_CLIENT_VERSION":I
    .end local v19    # "GLES_VERSION":I
    :cond_1cf
    :goto_1cf
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 139
    return-void

    .line 85
    :catch_1d3
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to create surface"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 88
    return-void

    nop

    :array_1e4
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3038
    .end array-data

    :array_1fa
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static offscreenTransformFrame([B[B[F)V
    .registers 14
    .param p0, "srcYUVImg"    # [B
    .param p1, "dstABGRImg"    # [B
    .param p2, "PMat"    # [F

    .line 142
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->setImage([B[F)V

    .line 143
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 150
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 153
    :cond_1f
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 154
    .local v0, "wrappedBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 156
    .local v1, "t0":J
    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    sget v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object v10, v0

    invoke-interface/range {v3 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 157
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    return-void
.end method
