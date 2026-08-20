.class public Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;
.super Ljava/lang/Object;
.source "SemPSIAvailableMem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public availMem:J

.field public cached:J

.field public checkTime:J

.field public running:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;

    invoke-direct {v0}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .registers 9

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->availMem:J

    .line 14
    iput-wide p3, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->running:J

    .line 15
    iput-wide p5, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->cached:J

    .line 16
    iput-wide p7, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->checkTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAvailMem()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->availMem:J

    return-wide v0
.end method

.method public getCached()J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->cached:J

    return-wide v0
.end method

.method public getCheckTime()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->checkTime:J

    return-wide v0
.end method

.method public getRunning()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->running:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->availMem:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->running:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->cached:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->checkTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 45
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->availMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->running:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->cached:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    iget-wide v0, p0, Lcom/samsung/android/psitrackersdk/framework/SemPSIAvailableMem;->checkTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
