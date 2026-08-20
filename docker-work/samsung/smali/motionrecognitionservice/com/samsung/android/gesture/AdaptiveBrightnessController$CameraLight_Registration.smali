.class Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AdaptiveBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraLight_Registration"
.end annotation


# instance fields
.field m_register:Z

.field m_time:J

.field m_timeStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;-><init>(Lcom/samsung/android/gesture/AdaptiveBrightnessController;)V

    return-void
.end method


# virtual methods
.method public setRegister(Z)V
    .registers 2
    .param p1, "register"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->m_register:Z

    .line 52
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "currtTime"    # J

    .line 54
    iput-wide p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->m_time:J

    .line 55
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->this$0:Lcom/samsung/android/gesture/AdaptiveBrightnessController;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/gesture/AdaptiveBrightnessController;->-$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/AdaptiveBrightnessController;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$CameraLight_Registration;->m_timeStr:Ljava/lang/String;

    .line 56
    return-void
.end method
