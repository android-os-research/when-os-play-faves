.class public Lcom/android/server/location/nsflp/NSConnectionRecord;
.super Ljava/lang/Object;
.source "NSConnectionRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/location/nsflp/NSConnectionRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public componentName:Ljava/lang/String;

.field public connectedTime:J

.field public connectionCount:I

.field public disconnectedTime:J

.field public disconnectionCount:I

.field public final logTag:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public prevComponentName:Ljava/lang/String;

.field public prevPackageName:Ljava/lang/String;

.field public serviceBindingDiedTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Lcom/android/server/location/nsflp/NSConnectionRecord$1;

    invoke-direct {v0}, Lcom/android/server/location/nsflp/NSConnectionRecord$1;-><init>()V

    sput-object v0, Lcom/android/server/location/nsflp/NSConnectionRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 31
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 34
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 36
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    .line 31
    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    .line 34
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    .line 36
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    .line 39
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getDisconnectedDuration()J
    .registers 5

    .line 133
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    iget-wide v2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_a

    sub-long/2addr v0, v2

    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public increaseConnectionCount()V
    .registers 2

    .line 101
    iget v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    return-void
.end method

.method public increaseDisconnectionCount()V
    .registers 2

    .line 105
    iget v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 88
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    .line 90
    :cond_6
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    return-void
.end method

.method public setConnectedTime(J)V
    .registers 3

    .line 109
    iput-wide p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    return-void
.end method

.method public setDisconnectedTime(J)V
    .registers 3

    .line 113
    iput-wide p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 95
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    .line 97
    :cond_6
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setServiceBindingDiedTime(J)V
    .registers 3

    .line 117
    iput-wide p1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_prevComp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_comp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_connCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_discCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_discTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_discDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSConnectionRecord;->getDisconnectedDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_bindDiedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 57
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->logTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->componentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevComponentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->prevPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectionCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectionCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->connectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->disconnectedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSConnectionRecord;->serviceBindingDiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
