.class public Lcom/android/internal/telephony/cat/BearerDefault;
.super Ljava/lang/Object;
.source "BearerDefault.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/BearerDefault;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist var1:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDefault$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDefault$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDefault;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/BearerDefault;->var1:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDefault-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDefault;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 28
    iget p0, p0, Lcom/android/internal/telephony/cat/BearerDefault;->var1:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
