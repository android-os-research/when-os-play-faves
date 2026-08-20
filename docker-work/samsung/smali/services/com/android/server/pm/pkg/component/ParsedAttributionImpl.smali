.class public Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;
.super Ljava/lang/Object;
.source "ParsedAttributionImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedAttribution;
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
            "Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_NUM_ATTRIBUTIONS:I = 0x2710


# instance fields
.field public inheritFrom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 195
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 181
    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    .line 182
    const-class p1, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 184
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->label:I

    .line 185
    const-class p1, Landroid/annotation/StringRes;

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 187
    iput-object v2, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    .line 188
    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    .line 85
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 87
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->label:I

    .line 88
    const-class p1, Landroid/annotation/StringRes;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 90
    iput-object p3, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    .line 91
    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

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

.method public getInheritFrom()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    return-object p0
.end method

.method public getLabel()I
    .registers 1

    .line 110
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->label:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public setInheritFrom(Ljava/util/List;)Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    .line 149
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLabel(I)Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;
    .registers 4

    .line 137
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->label:I

    .line 138
    const-class v0, Landroid/annotation/StringRes;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;
    .registers 4

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    .line 127
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 160
    iget-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget p2, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
