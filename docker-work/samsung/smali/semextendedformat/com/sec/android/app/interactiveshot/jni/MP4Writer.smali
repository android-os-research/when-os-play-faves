.class public Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.super Ljava/lang/Object;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;,
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoOrientation;,
        Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .registers 1

    .line 82
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    if-nez v0, :cond_c

    .line 83
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    invoke-direct {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;-><init>()V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->mInstance:Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    .line 84
    return-object v0

    .line 86
    :cond_c
    return-object v0
.end method


# virtual methods
.method public native DeInitMP4Engine()I
.end method

.method public native EncodeFrame([B)I
.end method

.method public native InitMP4Engine(IILjava/lang/String;IIIII)I
.end method

.method public InitMp4EngineJava(IILjava/lang/String;IIII)I
    .registers 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "OutputFileName"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "quality"    # I
    .param p6, "FPSVal"    # I
    .param p7, "format"    # I

    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "ret":I
    const/16 v10, 0xf

    .line 95
    .local v10, "GOPsize":I
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move v7, v10

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMP4Engine(IILjava/lang/String;IIIII)I

    move-result v0

    .line 96
    return v0
.end method
