.class public Lcom/gsma/services/rcs/Geoloc;
.super Ljava/lang/Object;
.source "Geoloc.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/Geoloc;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccuracy:F

.field private mExpiration:J

.field private mLabel:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Lcom/gsma/services/rcs/Geoloc$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/Geoloc$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "geolocContent"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 88
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "geolocContentArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3d

    .line 90
    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 92
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 93
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 94
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 96
    :cond_3d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJ)V
    .registers 10
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "expiration"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 59
    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 60
    iput-wide p2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 61
    iput-wide p4, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 62
    iput-wide p6, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJF)V
    .registers 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "expiration"    # J
    .param p8, "accuracy"    # F

    .line 75
    invoke-direct/range {p0 .. p7}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJ)V

    .line 77
    iput p8, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .registers 2

    .line 222
    iget v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    return v0
.end method

.method public getExpiration()J
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .line 171
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 188
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    return-wide v0
.end method

.method public setAcuracy(F)V
    .registers 2
    .param p1, "accuracy"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iput p1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    .line 232
    return-void
.end method

.method public setExpiration(J)V
    .registers 3
    .param p1, "expiration"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iput-wide p1, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    .line 215
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .param p1, "latitude"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iput-wide p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    .line 181
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .param p1, "longitude"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iput-wide p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 130
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 131
    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 133
    return-void
.end method
