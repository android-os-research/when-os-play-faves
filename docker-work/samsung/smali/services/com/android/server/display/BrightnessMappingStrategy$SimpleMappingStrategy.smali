.class public Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field public mAutoBrightnessAdjustment:F

.field public final mBrightness:[F

.field public final mLux:[F

.field public mMaxGamma:F

.field public mShortTermModelTimeout:J

.field public mSpline:Landroid/util/Spline;

.field public mUserBrightnessOffset:F

.field public mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;


# direct methods
.method public constructor <init>([F[IFJ)V
    .registers 11

    .line 1045
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 1038
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    invoke-direct {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    const/4 v0, 0x0

    .line 1042
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightnessOffset:F

    .line 1046
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    array-length v1, p2

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    const-string v4, "Lux and brightness arrays must not be empty!"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1048
    array-length v1, p1

    array-length v4, p2

    if-ne v1, v4, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    const-string v1, "Lux and brightness arrays must be the same length!"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v2, "lux"

    .line 1050
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const v1, 0x7fffffff

    const-string v2, "brightness"

    .line 1051
    invoke-static {p2, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 1054
    array-length v1, p2

    .line 1055
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 1056
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    :goto_44
    if-ge v3, v1, :cond_59

    .line 1058
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v4, p1, v3

    aput v4, v2, v3

    .line 1059
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v4, p2, v3

    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1062
    :cond_59
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 1063
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1072
    iget-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p1, :cond_6b

    .line 1073
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p1

    const-string/jumbo p2, "simple mapping strategy"

    invoke-virtual {p1, p2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1075
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1076
    iput-wide p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    return-void
.end method

.method public synthetic constructor <init>([F[IFJLcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJ)V

    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8

    .line 1157
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$smisValidUserLux(F)Z

    move-result v0

    const-string v1, "BrightnessMappingStrategy"

    if-nez v0, :cond_1d

    .line 1158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addUserDataPoint: invalid user lux: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1163
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 1164
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5c

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "add user data point"

    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string/jumbo v3, "user data point"

    .line 1167
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "current brightness"

    .line 1168
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1170
    :cond_5c
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v2

    .line 1173
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_84

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_84
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1184
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->addPoint(FFF)V

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1196
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_30

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearUserDataPoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "clear user data points"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    :cond_30
    const/4 v0, 0x0

    .line 1201
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1208
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->clear()V

    .line 1211
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightnessOffset:F

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    :cond_3d
    return-void
.end method

.method public final computeSpline()V
    .registers 4

    .line 1273
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object v0

    .line 1276
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    return-void
.end method

.method public convertToBrightness(F)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public convertToNits(F)F
    .registers 2

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .registers 4

    const-string p2, "SimpleMappingStrategy"

    .line 1248
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSpline="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mMaxGamma="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mAutoBrightnessAdjustment="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {p2, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->dump(Ljava/io/PrintWriter;)V

    .line 1259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mUserBrightnessOffset="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightnessOffset:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 1

    .line 1123
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 4

    .line 1100
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1101
    invoke-static {p0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-lez p3, :cond_19

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetsHbmLux()F

    move-result p3

    .line 1102
    invoke-static {p1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_19

    move p0, p2

    :cond_19
    return p0
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBrightnessForSpline(FLandroid/util/Spline;)F
    .registers 3

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;",
            ")",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1288
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    .line 1289
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_12

    .line 1290
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "curve before adjust offset"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1293
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1295
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 1296
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 1297
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 1300
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->plusOffsetBrightness([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)[F

    move-result-object p2

    .line 1302
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_37

    .line 1303
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v2, "curve after offset plus"

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1306
    :cond_37
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertOffsetPoints([F[FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object p1

    .line 1307
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [F

    .line 1308
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    .line 1309
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_50

    .line 1310
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p0

    const-string p3, "curve after insert user point"

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    :cond_50
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    .line 1314
    :cond_53
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getShortTermModelTimeout()J
    .registers 3

    .line 1081
    iget-wide v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public final getUnadjustedBrightness(F)F
    .registers 3

    .line 1280
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v0, p0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    .line 1281
    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public hasUserDataPoints()Z
    .registers 1

    .line 1220
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result p0

    return p0
.end method

.method public isDefaultConfig()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isForIdleMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public recalculateSplines(Z[F)V
    .registers 3

    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1128
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1129
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1132
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_3e

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1137
    :cond_3e
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    const/4 p0, 0x1

    return p0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
