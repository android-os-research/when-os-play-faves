.class public final enum Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;
.super Ljava/lang/Enum;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VmVideoColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_ARGB:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_NV21:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_RGBA:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_UNSUPPORTED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_YUV420SP_TILED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_YUV420_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

.field public static final enum VM_COLOR_FORMAT_YUV420_SEMI_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;


# instance fields
.field private final mColorFormatValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 38
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v1, "VM_COLOR_FORMAT_UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_UNSUPPORTED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 39
    new-instance v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v3, "VM_COLOR_FORMAT_YUV420_PLANAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 40
    new-instance v3, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v5, "VM_COLOR_FORMAT_YUV420_SEMI_PLANAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420_SEMI_PLANAR:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 41
    new-instance v5, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v7, "VM_COLOR_FORMAT_YUV420SP_TILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_YUV420SP_TILED:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 42
    new-instance v7, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v9, "VM_COLOR_FORMAT_ARGB"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_ARGB:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 43
    new-instance v9, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v11, "VM_COLOR_FORMAT_RGBA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGBA:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 44
    new-instance v11, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v13, "VM_COLOR_FORMAT_RGB565"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 45
    new-instance v13, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const-string v15, "VM_COLOR_FORMAT_NV21"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_NV21:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    .line 37
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->mColorFormatValue:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;
    .registers 2

    .line 1
    const-class v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;
    .registers 4

    .line 1
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->mColorFormatValue:I

    return v0
.end method
