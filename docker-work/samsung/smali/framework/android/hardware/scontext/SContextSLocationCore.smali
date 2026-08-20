.class public Landroid/hardware/scontext/SContextSLocationCore;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextSLocationCore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextSLocationCore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 379
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCore$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCore$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSLocationCore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    .line 150
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 155
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 156
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSLocationCore;->readFromParcel(Landroid/os/Parcel;)V

    .line 157
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    .line 372
    return-void
.end method


# virtual methods
.method public blacklist getAccuracy()I
    .registers 3

    .line 236
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getAction()I
    .registers 3

    .line 176
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDataArray()[I
    .registers 3

    .line 337
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataSize()I
    .registers 3

    .line 296
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "DataCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDistance()F
    .registers 3

    .line 286
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Distance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public blacklist getErrorCode()I
    .registers 3

    .line 276
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "ErrorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getFenceID()I
    .registers 3

    .line 186
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "GeoFenceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getFuncType()I
    .registers 3

    .line 266
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "FunctionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getLatitude()D
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMode()I
    .registers 3

    .line 166
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStatus()I
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "GeoFenceStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStatusArray()[I
    .registers 3

    .line 317
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "EventStatusArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSuccessGpsCount()I
    .registers 3

    .line 256
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "SuccessGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStamp()J
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "Timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTimeStampArray()[J
    .registers 3

    .line 327
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TimeStampArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTotalGpsCount()I
    .registers 3

    .line 246
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalGpsCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTypeArray()[I
    .registers 3

    .line 306
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    const-string v1, "EventTypeArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 347
    iput-object p1, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    .line 348
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 361
    iget-object v0, p0, Landroid/hardware/scontext/SContextSLocationCore;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 362
    return-void
.end method
