.class public Lcom/samsung/android/knox/custom/HardKeyReport;
.super Ljava/lang/Object;
.source "HardKeyReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/custom/HardKeyReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HardKeyReport"


# instance fields
.field public mBlock:I

.field public mKeyCode:I

.field public mReportType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/samsung/android/knox/custom/HardKeyReport$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/HardKeyReport$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/HardKeyReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mKeyCode:I

    .line 42
    iput p2, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mReportType:I

    .line 43
    iput p3, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mBlock:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mKeyCode:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mReportType:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mBlock:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/HardKeyReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "descr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/HardKeyReport;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mKeyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReportType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mReportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBlock:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mBlock:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 58
    iget p2, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mKeyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget p2, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mReportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget p0, p0, Lcom/samsung/android/knox/custom/HardKeyReport;->mBlock:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
