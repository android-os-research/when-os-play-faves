.class Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ExposureToLuxMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EV2L_History"
.end annotation


# instance fields
.field m_brightness:F

.field m_exposure:F

.field m_lux:F

.field m_time:J

.field m_timeStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/gesture/ExposureToLuxMapping;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;)V
    .registers 2

    .line 1123
    iput-object p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->this$0:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;)V

    return-void
.end method


# virtual methods
.method public setBrightness(F)V
    .registers 2
    .param p1, "bri"    # F

    .line 1135
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_brightness:F

    .line 1136
    return-void
.end method

.method public setExposure(F)V
    .registers 2
    .param p1, "exp"    # F

    .line 1131
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_exposure:F

    .line 1132
    return-void
.end method

.method public setLux(F)V
    .registers 2
    .param p1, "lux"    # F

    .line 1139
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_lux:F

    .line 1140
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "curTime"    # J

    .line 1143
    iput-wide p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_time:J

    .line 1144
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->this$0:Lcom/samsung/android/gesture/ExposureToLuxMapping;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->-$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/ExposureToLuxMapping;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_timeStr:Ljava/lang/String;

    .line 1145
    return-void
.end method
