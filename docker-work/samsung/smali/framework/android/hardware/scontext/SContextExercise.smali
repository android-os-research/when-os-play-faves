.class public Landroid/hardware/scontext/SContextExercise;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextExercise.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextExercise;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 330
    new-instance v0, Landroid/hardware/scontext/SContextExercise$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextExercise$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextExercise;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    .line 115
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 121
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextExercise;->readFromParcel(Landroid/os/Parcel;)V

    .line 122
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    .line 323
    return-void
.end method


# virtual methods
.method public blacklist getAltitude()[F
    .registers 4

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "res":[F
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 199
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "AltitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 201
    :cond_d
    return-object v0
.end method

.method public blacklist getLatitude()[D
    .registers 4

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 171
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "LatitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 173
    :cond_d
    return-object v0
.end method

.method public blacklist getLoggingSize()I
    .registers 4

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 143
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 145
    :cond_d
    return v0
.end method

.method public blacklist getLongitude()[D
    .registers 4

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 185
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "LongitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 187
    :cond_d
    return-object v0
.end method

.method public blacklist getMode()I
    .registers 3

    .line 131
    iget-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getPedoDistance()[D
    .registers 4

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 241
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "PedoDistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 243
    :cond_d
    return-object v0
.end method

.method public blacklist getPedoSpeed()[D
    .registers 4

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 255
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "PedoSpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 257
    :cond_d
    return-object v0
.end method

.method public blacklist getPressure()[F
    .registers 4

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "res":[F
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 213
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "PressureArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 215
    :cond_d
    return-object v0
.end method

.method public blacklist getSpeed()[F
    .registers 4

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "res":[F
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 227
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 229
    :cond_d
    return-object v0
.end method

.method public blacklist getStatus()I
    .registers 4

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 283
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "GpsStatus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    :cond_e
    return v0
.end method

.method public blacklist getStepCount()[J
    .registers 4

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 269
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "StepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 271
    :cond_d
    return-object v0
.end method

.method public blacklist getTimeStamp()[J
    .registers 4

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_d

    .line 157
    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 159
    :cond_d
    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/os/Bundle;

    .line 295
    iput-object p1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    .line 296
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    .line 297
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 310
    iget-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 311
    iget v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    return-void
.end method
