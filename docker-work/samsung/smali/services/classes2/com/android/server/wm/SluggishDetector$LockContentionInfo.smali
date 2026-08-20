.class public final Lcom/android/server/wm/SluggishDetector$LockContentionInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockContentionInfo"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static prevTime:J


# instance fields
.field public LcdOnValue:I

.field public mOwnerFileLine:I

.field public mOwnerFileName:Ljava/lang/String;

.field public mOwnerMethod:Ljava/lang/String;

.field public mThreadName:Ljava/lang/String;

.field public mWaitTime:I


# direct methods
.method public static bridge synthetic -$$Nest$mLockInfo_Logging(Lcom/android/server/wm/SluggishDetector$LockContentionInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LockInfo_Logging()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 1174
    sput-wide v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->prevTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    .line 1184
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1185
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mThreadName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1186
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mWaitTime:I

    const/4 v0, 0x2

    .line 1187
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1188
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileLine:I

    const/4 v0, 0x4

    .line 1189
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerMethod:Ljava/lang/String;

    const/4 p1, -0x1

    .line 1190
    iput p1, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    return-void
.end method


# virtual methods
.method public final LockInfo_Logging()V
    .registers 1

    return-void
.end method

.method public checkTime()Z
    .registers 7

    .line 1194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1195
    sget-wide v2, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->prevTime:J

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-eqz p0, :cond_19

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    .line 1196
    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long p0, v2, v4

    if-gez p0, :cond_19

    const/4 p0, 0x0

    return p0

    .line 1202
    :cond_19
    sput-wide v0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->prevTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"SDVR\":\""

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"THNM\":\""

    .line 1224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"OMTD\":\""

    .line 1227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"OFNM\":\""

    .line 1230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"OFLN\":\""

    .line 1233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mOwnerFileLine:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"WTTM\":\""

    .line 1236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->mWaitTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"LCDV\":\""

    .line 1239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLCD()V
    .registers 3

    .line 1209
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_14

    .line 1211
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_16

    :cond_14
    const/16 v0, -0x63

    .line 1213
    :goto_16
    iput v0, p0, Lcom/android/server/wm/SluggishDetector$LockContentionInfo;->LcdOnValue:I

    return-void
.end method
