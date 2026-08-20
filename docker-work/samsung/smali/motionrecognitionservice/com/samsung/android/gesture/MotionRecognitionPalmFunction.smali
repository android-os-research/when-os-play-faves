.class abstract Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;
.super Ljava/lang/Object;
.source "MotionRecognitionPalmFunction.java"


# static fields
.field public static final PERMISSION_PALM_MOTION:Ljava/lang/String; = "com.samsung.permission.PALM_MOTION"

.field public static final TOLERANCE_EVENT_COUNT:F = 50.0f

.field private static mIsBootComplete:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field protected mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->mIsBootComplete:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/gesture/MotionRecognitionPalmData;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "palmData"    # Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->mContext:Landroid/content/Context;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->mPalmData:Lcom/samsung/android/gesture/MotionRecognitionPalmData;

    .line 17
    return-void
.end method


# virtual methods
.method protected checkBootComplete()Z
    .registers 3

    .line 21
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->mIsBootComplete:Z

    if-nez v0, :cond_12

    .line 22
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->mIsBootComplete:Z

    .line 24
    :cond_12
    sget-boolean v0, Lcom/samsung/android/gesture/MotionRecognitionPalmFunction;->mIsBootComplete:Z

    return v0
.end method

.method public abstract initPalm()V
.end method

.method public abstract onPalmEvents(I)V
.end method

.method public abstract processPalm()V
.end method

.method public abstract readyPalm()V
.end method
