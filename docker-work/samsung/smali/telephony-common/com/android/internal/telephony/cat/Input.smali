.class public Lcom/android/internal/telephony/cat/Input;
.super Ljava/lang/Object;
.source "Input.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/Input;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist defaultText:Ljava/lang/String;

.field public blacklist digitOnly:Z

.field public blacklist duration:Lcom/android/internal/telephony/cat/Duration;

.field public blacklist echo:Z

.field public blacklist helpAvailable:Z

.field public blacklist icon:Landroid/graphics/Bitmap;

.field public blacklist iconSelfExplanatory:Z

.field public blacklist maxLen:I

.field public blacklist minLen:I

.field public blacklist packed:Z

.field public blacklist text:Ljava/lang/String;

.field public blacklist textAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist ucs2:Z

.field public blacklist yesNo:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Lcom/android/internal/telephony/cat/Input$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->textAttributes:Ljava/util/List;

    const-string v1, ""

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/4 v2, 0x1

    .line 53
    iput v2, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->textAttributes:Ljava/util/List;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 67
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_36

    move v1, v3

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_41

    move v1, v3

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4c

    move v1, v3

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_57

    move v1, v3

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_62

    move v1, v3

    goto :goto_63

    :cond_62
    move v1, v2

    :goto_63
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_6d

    move v1, v3

    goto :goto_6e

    :cond_6d
    move v1, v2

    :goto_6e
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v3, :cond_7f

    move v2, v3

    :cond_7f
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Input-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Input;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 87
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget p2, p0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget p2, p0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
