.class public final Landroid/service/voice/HotwordRejectedResult;
.super Ljava/lang/Object;
.source "HotwordRejectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordRejectedResult$Builder;,
        Landroid/service/voice/HotwordRejectedResult$ConfidenceLevel;,
        Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_NONE:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordRejectedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidenceLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordRejectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 198
    new-instance v0, Landroid/service/voice/HotwordRejectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordRejectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 4
    .param p1, "confidenceLevel"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    .line 116
    const-class v0, Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 120
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .local v0, "confidenceLevel":I
    iput v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    .line 191
    const-class v1, Landroid/service/voice/HotwordRejectedResult$HotwordConfidenceLevelValue;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 195
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    return-void
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 99
    packed-switch p0, :pswitch_data_14

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_8
    const-string v0, "CONFIDENCE_LEVEL_HIGH"

    return-object v0

    .line 105
    :pswitch_b
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object v0

    .line 103
    :pswitch_e
    const-string v0, "CONFIDENCE_LEVEL_LOW"

    return-object v0

    .line 101
    :pswitch_11
    const-string v0, "CONFIDENCE_LEVEL_NONE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist defaultConfidenceLevel()I
    .registers 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 149
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 151
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordRejectedResult;

    .line 153
    .local v2, "that":Landroid/service/voice/HotwordRejectedResult;
    iget v3, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    iget v4, v2, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 149
    .end local v2    # "that":Landroid/service/voice/HotwordRejectedResult;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist getConfidenceLevel()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    add-int/2addr v1, v2

    .line 165
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordRejectedResult { confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget v0, p0, Landroid/service/voice/HotwordRejectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
