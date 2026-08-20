.class public Lcom/samsung/android/media/convert/surfaces/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final blacklist EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final blacklist EXCEPTION_FRAME_NOT_AVAILABLE:Ljava/lang/String; = "Surface frame wait timed out"

.field private static final blacklist HD_SIZE:I = 0xe1000


# instance fields
.field private blacklist mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private blacklist mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private blacklist mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private blacklist mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private blacklist mFrameAvailable:Z

.field private blacklist mFrameSyncObject:Ljava/lang/Object;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private blacklist mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "rotationAngle"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->setup(I)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZ)V
    .registers 10
    .param p1, "rotationAngle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "original_width"    # I
    .param p7, "original_height"    # I
    .param p8, "mmsMode"    # Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 91
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->setup(IIIIIIIZ)V

    .line 92
    return-void
.end method

.method private blacklist checkEglError(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, "failed":Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    const/16 v3, 0x3000

    if-eq v1, v3, :cond_2e

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SemVideoConverter"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x1

    goto :goto_1

    .line 326
    :cond_2e
    if-nez v0, :cond_31

    .line 329
    return-void

    .line 327
    :cond_31
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "EGL error encountered (see log)"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist eglSetup(II)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 182
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 183
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 189
    const/16 v0, 0xb

    new-array v3, v0, [I

    fill-array-data v3, :array_a0

    .line 197
    .local v3, "attribList":[I
    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 198
    .local v7, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v8, v0, [I

    .line 199
    .local v8, "numConfigs":[I
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 203
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_ba

    .line 207
    .local v2, "attrib_list":[I
    iget-object v4, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v9, v7, v6

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v9, v10, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 209
    const-string v4, "eglCreateContext"

    invoke-direct {p0, v4}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v4, :cond_85

    .line 215
    const/4 v4, 0x5

    new-array v4, v4, [I

    const/16 v5, 0x3057

    aput v5, v4, v6

    aput p1, v4, v0

    const/4 v0, 0x2

    const/16 v5, 0x3056

    aput v5, v4, v0

    aput p2, v4, v1

    const/4 v0, 0x4

    const/16 v1, 0x3038

    aput v1, v4, v0

    move-object v0, v4

    .line 220
    .local v0, "surfaceAttribs":[I
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, v7, v6

    invoke-interface {v1, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 221
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_7c

    .line 225
    return-void

    .line 223
    :cond_7c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "surface was null"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "surfaceAttribs":[I
    :cond_85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    .end local v2    # "attrib_list":[I
    :cond_8d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    .end local v3    # "attribList":[I
    .end local v7    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8    # "numConfigs":[I
    :cond_96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_a0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data

    :array_ba
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private blacklist setup(I)V
    .registers 4
    .param p1, "rotationAngle"    # I

    .line 100
    new-instance v0, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    invoke-direct {v0}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    .line 101
    invoke-virtual {v0, p1}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->prepare(I)I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "textureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoConverter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 121
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 122
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 123
    return-void
.end method

.method private blacklist setup(IIIIIIIZ)V
    .registers 25
    .param p1, "rotationAngle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "original_width"    # I
    .param p7, "original_height"    # I
    .param p8, "mmsMode"    # Z

    .line 133
    move-object/from16 v0, p0

    move/from16 v12, p6

    move/from16 v13, p7

    new-instance v1, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    invoke-direct {v1}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    .line 134
    const/4 v2, 0x0

    .local v2, "pbuffer_width":I
    const/4 v3, 0x0

    .line 135
    .local v3, "pbuffer_height":I
    if-eqz p8, :cond_46

    mul-int v4, v12, v13

    const v5, 0xe1000

    if-lt v4, v5, :cond_46

    .line 137
    if-le v12, v13, :cond_30

    .line 138
    const/16 v2, 0x280

    .line 139
    mul-int v4, v2, v13

    div-int v3, v4, v12

    .line 140
    rem-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_2d

    .line 141
    div-int/lit8 v4, v3, 0x20

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v3, v4, 0x20

    move v14, v2

    move v15, v3

    goto :goto_48

    .line 140
    :cond_2d
    move v14, v2

    move v15, v3

    goto :goto_48

    .line 143
    :cond_30
    const/16 v3, 0x280

    .line 144
    mul-int v4, v3, v12

    div-int v2, v4, v13

    .line 145
    rem-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_43

    .line 146
    div-int/lit8 v4, v2, 0x20

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v2, v4, 0x20

    move v14, v2

    move v15, v3

    goto :goto_48

    .line 145
    :cond_43
    move v14, v2

    move v15, v3

    goto :goto_48

    .line 149
    :cond_46
    move v14, v2

    move v15, v3

    .end local v2    # "pbuffer_width":I
    .end local v3    # "pbuffer_height":I
    .local v14, "pbuffer_width":I
    .local v15, "pbuffer_height":I
    :goto_48
    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move v10, v14

    move v11, v15

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->prepare(IIIIIIIZII)I

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemVideoConverter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, v0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 169
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 170
    new-instance v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 172
    if-eqz v14, :cond_9c

    if-eqz v15, :cond_9c

    .line 173
    invoke-direct {v0, v14, v15}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->eglSetup(II)V

    .line 175
    :cond_9c
    return-void
.end method


# virtual methods
.method public blacklist checkForNewImage(I)Z
    .registers 7
    .param p1, "timeoutMs"    # I

    .line 270
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 275
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 276
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_15
    .catchall {:try_start_8 .. :try_end_10} :catchall_2b

    if-nez v1, :cond_14

    .line 277
    :try_start_12
    monitor-exit v0

    return v2

    .line 282
    :cond_14
    goto :goto_3

    .line 279
    :catch_15
    move-exception v1

    .line 281
    .local v1, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    .end local p1    # "timeoutMs":I
    throw v2

    .line 284
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    .restart local p1    # "timeoutMs":I
    :cond_1c
    iput-boolean v2, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameAvailable:Z

    .line 285
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_2b

    .line 288
    const-string v0, "before updateTexImage"

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 290
    const/4 v0, 0x1

    return v0

    .line 285
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist drawImage()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->draw(Landroid/graphics/SurfaceTexture;)V

    .line 303
    return-void
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist notifyFrameSyncObject()V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit v0

    .line 297
    return-void

    .line 296
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .line 307
    const-string v0, "SemVideoConverter"

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_a
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v1, :cond_18

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameAvailable:Z

    .line 313
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit v0

    .line 315
    return-void

    .line 310
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    .end local p1    # "st":Landroid/graphics/SurfaceTexture;
    throw v1

    .line 314
    .restart local p0    # "this":Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    .restart local p1    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist release()V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_2f

    .line 231
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 233
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 236
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 237
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 240
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_36

    .line 241
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 246
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 247
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 248
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 249
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 250
    iget-object v1, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    if-eqz v1, :cond_46

    .line 251
    invoke-virtual {v1}, Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;->release()V

    .line 252
    :cond_46
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/media/convert/renderer/RenderTexture_GL_OES;

    .line 253
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 254
    iput-object v0, p0, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 255
    return-void
.end method
