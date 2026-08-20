.class public Lcom/samsung/android/sume/solution/Option;
.super Lcom/samsung/android/sume/core/graph/Graph$Option;
.source "Option.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/solution/Option;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OPTION_AUDIO_BITRATE:I = 0x64

.field public static final blacklist OPTION_CUSTOM_BASE:I = 0x2710

.field public static final blacklist OPTION_FILTER_THRESHOLD:I = 0x67

.field public static final blacklist OPTION_SCALE_FACTOR:I = 0x66

.field public static final blacklist OPTION_VIDEO_BITRATE:I = 0x65


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/samsung/android/sume/solution/Option$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/solution/Option$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/solution/Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/sume/core/graph/Graph$Option;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/graph/Graph$Option;-><init>(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public static blacklist makeCustomOption(I)I
    .registers 2
    .param p0, "optionIndex"    # I

    .line 96
    add-int/lit16 v0, p0, 0x2710

    return v0
.end method


# virtual methods
.method public blacklist getAudioBitrate()I
    .registers 3

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/solution/Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getFilterThreshold()Ljava/lang/Float;
    .registers 3

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/solution/Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public blacklist getScale()F
    .registers 3

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/solution/Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getVideoBitrate()I
    .registers 3

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/solution/Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist set(I)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 5
    .param p1, "option"    # I

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/Option;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public blacklist set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 5
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/Option;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object p0
.end method

.method public blacklist setAudioBitrate(I)Lcom/samsung/android/sume/solution/Option;
    .registers 5
    .param p1, "audioBitrate"    # I

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/Option;->getAll()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object p0
.end method

.method public blacklist setFilterThreshold(F)Lcom/samsung/android/sume/solution/Option;
    .registers 5
    .param p1, "filterThreshold"    # F

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/Option;->getAll()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object p0
.end method

.method public blacklist setScale(F)Lcom/samsung/android/sume/solution/Option;
    .registers 5
    .param p1, "scale"    # F

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/Option;->getAll()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-object p0
.end method

.method public blacklist setVideoBitrate(I)Lcom/samsung/android/sume/solution/Option;
    .registers 5
    .param p1, "videoBitrate"    # I

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/sume/solution/Option;->getAll()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object p0
.end method
