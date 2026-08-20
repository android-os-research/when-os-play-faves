.class public final enum Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
.super Ljava/lang/Enum;
.source "MP4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VmVideoQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

.field public static final enum VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

.field public static final enum VM_QUALITY_LOW:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

.field public static final enum VM_QUALITY_MEDIUM:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;


# instance fields
.field private final mQualityValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 22
    new-instance v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const-string v1, "VM_QUALITY_HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    .line 23
    new-instance v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const-string v3, "VM_QUALITY_MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_MEDIUM:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    .line 24
    new-instance v3, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const-string v5, "VM_QUALITY_LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_LOW:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    .line 21
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->mQualityValue:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    .registers 2

    .line 1
    const-class v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;
    .registers 4

    .line 1
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->ENUM$VALUES:[Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->mQualityValue:I

    return v0
.end method
