.class public Lcom/samsung/android/transcode/surfaces/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EXCEPTION_FRAME_NOT_AVAILABLE:Ljava/lang/String; = "Surface frame wait timed out"

.field private static final HD_SIZE:I = 0xe1000


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "rotationAngle"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 10
    .param p1, "rotationAngle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "original_width"    # I
    .param p7, "original_height"    # I
    .param p8, "mmsMode"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 90
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(IIIIIIIZ)V

    .line 91
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, "failed":Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    const/16 v3, 0x3000

    if-eq v1, v3, :cond_e

    .line 320
    const/4 v0, 0x1

    goto :goto_1

    .line 322
    :cond_e
    if-nez v0, :cond_11

    .line 325
    return-void

    .line 323
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": EGL error: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private eglSetup(II)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 179
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 180
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 181
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 186
    const/16 v0, 0xb

    new-array v3, v0, [I

    fill-array-data v3, :array_9c

    .line 194
    .local v3, "attribList":[I
    const/4 v0, 0x1

    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 195
    .local v7, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v8, v0, [I

    .line 196
    .local v8, "numConfigs":[I
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v7

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 200
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_b6

    .line 204
    .local v2, "attrib_list":[I
    iget-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v9, v7, v6

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v9, v10, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 206
    const-string v4, "eglCreateContext"

    invoke-direct {p0, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v4, :cond_84

    .line 212
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

    .line 217
    .local v0, "surfaceAttribs":[I
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v5, v7, v6

    invoke-interface {v1, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 218
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_7c

    .line 222
    return-void

    .line 220
    :cond_7c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "surface was null"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v0    # "surfaceAttribs":[I
    :cond_84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    .end local v2    # "attrib_list":[I
    :cond_8c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    .end local v3    # "attribList":[I
    .end local v7    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8    # "numConfigs":[I
    :cond_94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_9c
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

    :array_b6
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup(I)V
    .registers 4
    .param p1, "rotationAngle"    # I

    .line 99
    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    .line 100
    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(I)I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 119
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 120
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 121
    return-void
.end method

.method private setup(IIIIIIIZ)V
    .registers 25
    .param p1, "rotationAngle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "original_width"    # I
    .param p7, "original_height"    # I
    .param p8, "mmsMode"    # Z

    .line 131
    move-object/from16 v0, p0

    move/from16 v12, p6

    move/from16 v13, p7

    new-instance v1, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    .line 132
    const/4 v2, 0x0

    .local v2, "pbuffer_width":I
    const/4 v3, 0x0

    .line 133
    .local v3, "pbuffer_height":I
    if-eqz p8, :cond_46

    mul-int v4, v12, v13

    const v5, 0xe1000

    if-lt v4, v5, :cond_46

    .line 135
    if-le v12, v13, :cond_30

    .line 136
    const/16 v2, 0x280

    .line 137
    mul-int v4, v2, v13

    div-int v3, v4, v12

    .line 138
    rem-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_2d

    .line 139
    div-int/lit8 v4, v3, 0x20

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v3, v4, 0x20

    move v14, v2

    move v15, v3

    goto :goto_48

    .line 138
    :cond_2d
    move v14, v2

    move v15, v3

    goto :goto_48

    .line 141
    :cond_30
    const/16 v3, 0x280

    .line 142
    mul-int v4, v3, v12

    div-int v2, v4, v13

    .line 143
    rem-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_43

    .line 144
    div-int/lit8 v4, v2, 0x20

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v2, v4, 0x20

    move v14, v2

    move v15, v3

    goto :goto_48

    .line 143
    :cond_43
    move v14, v2

    move v15, v3

    goto :goto_48

    .line 147
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

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(IIIIIIIZII)I

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 166
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 167
    new-instance v1, Landroid/view/Surface;

    iget-object v2, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 169
    if-eqz v14, :cond_9b

    if-eqz v15, :cond_9b

    .line 170
    invoke-direct {v0, v14, v15}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->eglSetup(II)V

    .line 172
    :cond_9b
    return-void
.end method


# virtual methods
.method public checkForNewImage(I)Z
    .registers 7
    .param p1, "timeoutMs"    # I

    .line 267
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 272
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 273
    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_15
    .catchall {:try_start_8 .. :try_end_10} :catchall_2b

    if-nez v1, :cond_14

    .line 274
    :try_start_12
    monitor-exit v0

    return v2

    .line 279
    :cond_14
    goto :goto_3

    .line 276
    :catch_15
    move-exception v1

    .line 278
    .local v1, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/transcode/surfaces/OutputSurface;
    .end local p1    # "timeoutMs":I
    throw v2

    .line 281
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/samsung/android/transcode/surfaces/OutputSurface;
    .restart local p1    # "timeoutMs":I
    :cond_1c
    iput-boolean v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    .line 282
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_2b

    .line 285
    const-string v0, "before updateTexImage"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 287
    const/4 v0, 0x1

    return v0

    .line 282
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public drawImage()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->draw(Landroid/graphics/SurfaceTexture;)V

    .line 300
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public notifyFrameSyncObject()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v1, :cond_11

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    .line 309
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 310
    monitor-exit v0

    .line 311
    return-void

    .line 306
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/transcode/surfaces/OutputSurface;
    .end local p1    # "st":Landroid/graphics/SurfaceTexture;
    throw v1

    .line 310
    .restart local p0    # "this":Lcom/samsung/android/transcode/surfaces/OutputSurface;
    .restart local p1    # "st":Landroid/graphics/SurfaceTexture;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public release()V
    .registers 6

    .line 227
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_2f

    .line 228
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 230
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 233
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 234
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 237
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_36

    .line 238
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 243
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 244
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 245
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 246
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 247
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    if-eqz v1, :cond_46

    .line 248
    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->release()V

    .line 249
    :cond_46
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    .line 250
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 251
    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 252
    return-void
.end method
