.class public final Landroid/app/timezone/DistroRulesVersion;
.super Ljava/lang/Object;
.source "DistroRulesVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/DistroRulesVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRevision:I

.field private final blacklist mRulesVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/app/timezone/DistroRulesVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroRulesVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroRulesVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "rulesVersion"    # Ljava/lang/String;
    .param p2, "revision"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string/jumbo v0, "rulesVersion"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "revision"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    if-ne p0, p1, :cond_4

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_25

    .line 106
    :cond_12
    move-object v1, p1

    check-cast v1, Landroid/app/timezone/DistroRulesVersion;

    .line 108
    .local v1, "that":Landroid/app/timezone/DistroRulesVersion;
    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    iget v3, v1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    if-eq v2, v3, :cond_1c

    .line 109
    return v0

    .line 111
    :cond_1c
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    iget-object v2, v1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 103
    .end local v1    # "that":Landroid/app/timezone/DistroRulesVersion;
    :cond_25
    :goto_25
    return v0
.end method

.method public blacklist getRevision()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    return v0
.end method

.method public blacklist getRulesVersion()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 116
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 117
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    add-int/2addr v1, v2

    .line 118
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist isOlderThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .registers 7
    .param p1, "distroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;

    .line 76
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "rulesComparison":I
    const/4 v1, 0x1

    if-gez v0, :cond_c

    .line 78
    return v1

    .line 80
    :cond_c
    const/4 v2, 0x0

    if-lez v0, :cond_10

    .line 81
    return v2

    .line 83
    :cond_10
    iget v3, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    iget v4, p1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    if-ge v3, v4, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method public blacklist toDumpString()Ljava/lang/String;
    .registers 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroRulesVersion{mRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRevision=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method
