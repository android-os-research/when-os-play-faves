.class public Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
.super Ljava/lang/Object;
.source "ParsedIntentInfoImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHasDefault:Z

.field public mIcon:I

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public mLabelRes:I

.field public mNonLocalizedLabel:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 141
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_20

    move-object v0, v3

    goto :goto_24

    .line 142
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    :goto_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 144
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter;

    .line 146
    iput-boolean v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    .line 147
    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    .line 148
    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 149
    iput v4, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    .line 150
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    .line 151
    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v3, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getIcon()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    return p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public getLabelRes()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    return p0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isHasDefault()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    return p0
.end method

.method public setHasDefault(Z)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    return-object p0
.end method

.method public setIcon(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2

    .line 108
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    return-object p0
.end method

.method public setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2

    .line 96
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    return-object p0
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 119
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mHasDefault:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    int-to-byte v0, v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 120
    :goto_8
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 121
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 122
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1e
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
