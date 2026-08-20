.class public Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation$RotationHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public final mFromRotation:I

.field public final mIgnoreOrientationRequest:Z

.field public final mLastOrientationSource:Ljava/lang/String;

.field public final mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

.field public final mSensorRotation:I

.field public final mSourceOrientation:I

.field public final mTimestamp:J

.field public final mToRotation:I

.field public final mUserRotation:I

.field public final mUserRotationMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;II)V
    .registers 6

    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    .line 1950
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    .line 1951
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    .line 1952
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotation(Lcom/android/server/wm/DisplayRotation;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    .line 1953
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    .line 1954
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmOrientationListener(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$OrientationListener;

    move-result-object p2

    const/4 p3, -0x2

    if-eqz p2, :cond_28

    .line 1955
    iget-boolean p2, p2, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez p2, :cond_25

    goto :goto_28

    .line 1956
    :cond_25
    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    goto :goto_29

    :cond_28
    :goto_28
    move p2, p3

    :goto_29
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    .line 1957
    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 1958
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    .line 1959
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3f

    const-string p2, "none"

    goto :goto_4b

    .line 1961
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eq p2, v1, :cond_4a

    .line 1962
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4b

    :cond_4a
    move-object p2, v0

    :goto_4b
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    .line 1963
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 1965
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    .line 1966
    iget p1, p1, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    goto :goto_62

    .line 1968
    :cond_5e
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    .line 1969
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    :goto_62
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 1974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    .line 1975
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    .line 1976
    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    .line 1978
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1977
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    .line 1980
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    .line 1981
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    .line 1982
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1979
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    if-eqz v0, :cond_aa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ignoreRequest=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1984
    :cond_aa
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    if-eqz v0, :cond_c7

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  requestingTda="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c7
    return-void
.end method
