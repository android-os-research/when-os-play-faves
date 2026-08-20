.class public final Lorg/tensorflow/lite/TensorFlowLite;
.super Ljava/lang/Object;
.source "TensorFlowLite.java"


# static fields
.field public static final LIBNAME:Ljava/lang/String; = "tensorflowlite_jni"

.field public static final LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

.field public static final PRIMARY_SEC_LIBNAME:Ljava/lang/String; = "tensorflowlite_jni_r2.6"

.field public static volatile isInit:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string/jumbo v0, "tensorflowlite_jni_r2.6"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_6} :catch_8

    const/4 v0, 0x0

    goto :goto_9

    :catch_8
    move-exception v0

    .line 36
    :goto_9
    sput-object v0, Lorg/tensorflow/lite/TensorFlowLite;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 4

    .line 69
    sget-boolean v0, Lorg/tensorflow/lite/TensorFlowLite;->isInit:Z

    if-eqz v0, :cond_5

    return-void

    .line 76
    :cond_5
    :try_start_5
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->nativeRuntimeVersion()Ljava/lang/String;

    const/4 v0, 0x1

    .line 77
    sput-boolean v0, Lorg/tensorflow/lite/TensorFlowLite;->isInit:Z
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    .line 80
    sget-object v1, Lorg/tensorflow/lite/TensorFlowLite;->LOAD_LIBRARY_EXCEPTION:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    move-object v0, v1

    .line 81
    :cond_12
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load native TensorFlow Lite methods. Check that the correct native libraries are present, and, if using a custom native library, have been properly loaded via System.loadLibrary():\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native nativeRuntimeVersion()Ljava/lang/String;
.end method

.method private static native nativeSchemaVersion()Ljava/lang/String;
.end method

.method public static runtimeVersion()Ljava/lang/String;
    .registers 1

    .line 53
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    .line 54
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->nativeRuntimeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static schemaVersion()Ljava/lang/String;
    .registers 1

    .line 59
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    .line 60
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->nativeSchemaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static version()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->schemaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
