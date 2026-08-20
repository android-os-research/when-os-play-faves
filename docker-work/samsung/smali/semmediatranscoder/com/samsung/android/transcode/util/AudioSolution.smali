.class public Lcom/samsung/android/transcode/util/AudioSolution;
.super Ljava/lang/Object;
.source "AudioSolution.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-string v0, "AudioSolution"

    const-string v1, "starting to loadLibrary v2"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "snaace"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v0, "_SoundAlive_SRC384_ver320"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v0, "SoundAlive_VSP_ver316c_ARMCpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const-string v0, "audiosolution_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native NAACEncoderDeInit(J)Z
.end method

.method public native NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native NAACEncoderInit(II)J
.end method

.method public native SRCCreate()J
.end method

.method public native SRCDestroy(J)V
.end method

.method public native SRCExe(J[B[BI)I
.end method

.method public native SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native SRCInit(JIIIII)I
.end method

.method public native VSPCreate()J
.end method

.method public native VSPDestroy(J)V
.end method

.method public native VSPExe(J[B[BI)I
.end method

.method public native VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native VSPExe_buffered(J[B[BI)I
.end method

.method public native VSPExe_buffered2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native VSPInit(JII)V
.end method

.method public native VSPSetPar(JF)V
.end method
