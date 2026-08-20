.class public Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;
.super Ljava/lang/Object;
.source "SPenRendererAdapter.java"

# interfaces
.implements Lcom/samsung/android/spensdk/framework/SPenRendererAdapterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "Framework SPenRendererAdapter"

.field private static final VERSION:Ljava/lang/String; = "1.0.2"


# instance fields
.field private mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

.field private mNativeHwuiFunctor:J

.field private mWebViewFunctor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "HWRenderer.penlibrary.samsung"

    invoke-static {v0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->loadLibrary(Ljava/lang/String;)Z

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spensdk/framework/SpenDrawCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    .line 30
    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    .line 31
    invoke-static {p0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_CreateNativeFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    .line 32
    invoke-static {p0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_CreateWebViewFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    .line 33
    return-void
.end method

.method private static native Native_CreateNativeFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)J
.end method

.method private static native Native_CreateWebViewFunctor(Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;)I
.end method

.method private static native Native_DestroyNativeFunctor(J)V
.end method

.method private static native Native_DestroyWebViewFunctor(I)V
.end method

.method private static native Native_invokeFunctor(JZ)V
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .line 84
    const-string v0, "1.0.2"

    return-object v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method private static loadLibrary(Ljava/lang/String;)Z
    .registers 3
    .param p0, "libraryName"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_6

    .line 57
    const/4 v0, 0x1

    return v0

    .line 61
    :catch_6
    move-exception v1

    .line 62
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 63
    return v0

    .line 58
    .end local v1    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :catch_b
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 60
    return v0
.end method

.method private onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_7

    .line 128
    invoke-interface {v0, p1}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onDraw(Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;)Landroid/graphics/RectF;

    .line 130
    :cond_7
    return-void
.end method

.method private onProcessWithNoContext()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_7

    .line 140
    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onProcessWithoutScreenUpdate()V

    .line 142
    :cond_7
    return-void
.end method

.method private onProcessWithoutScreenUpdate()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_7

    .line 134
    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onProcessWithoutScreenUpdate()V

    .line 136
    :cond_7
    return-void
.end method

.method private onSync()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mCallback:Lcom/samsung/android/spensdk/framework/SpenDrawCallback;

    if-eqz v0, :cond_7

    .line 146
    invoke-interface {v0}, Lcom/samsung/android/spensdk/framework/SpenDrawCallback;->onSync()V

    .line 148
    :cond_7
    return-void
.end method


# virtual methods
.method public callOnDraw(Landroid/graphics/Canvas;)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 100
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    const-string v1, "Framework SPenRendererAdapter"

    if-eqz v0, :cond_2e

    .line 102
    :try_start_6
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    iget v2, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    invoke-virtual {v0, v2}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_2d

    .line 103
    :catch_f
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "on drawWebViewFunctor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    goto :goto_33

    .line 108
    :cond_2e
    const-string v0, "Canvas can not be cast to RecordingCanvas"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_33
    const/4 v0, 0x1

    return v0
.end method

.method public callOnProcess(Z)Z
    .registers 4
    .param p1, "wait"    # Z

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_invokeFunctor(JZ)V

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 5

    .line 41
    iget-wide v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mNativeHwuiFunctor:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_DestroyNativeFunctor(J)V

    .line 45
    :cond_b
    iget v0, p0, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->mWebViewFunctor:I

    invoke-static {v0}, Lcom/samsung/android/spensdk/framework/SPenRendererAdapter;->Native_DestroyWebViewFunctor(I)V

    .line 46
    return-void
.end method
