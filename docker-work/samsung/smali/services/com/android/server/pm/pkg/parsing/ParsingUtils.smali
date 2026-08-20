.class public Lcom/android/server/pm/pkg/parsing/ParsingUtils;
.super Ljava/lang/Object;
.source "ParsingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;
    }
.end annotation


# static fields
.field public static final ANDROID_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final DEFAULT_MAX_SDK_VERSION:I = 0x7fffffff

.field public static final DEFAULT_MIN_SDK_VERSION:I = 0x1

.field public static final DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field public static final NOT_SET:I = -0x1

.field public static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_3d

    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_3d

    .line 63
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_26

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_26
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3c

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    return-object p1

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Interface:",
            "Ljava/lang/Object;",
            "Impl:TInterface;>(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TImpl;>;)",
            "Ljava/util/List<",
            "TInterface;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_c

    .line 101
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 103
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_11
    if-lez v0, :cond_1d

    .line 105
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_1d
    return-object v1
.end method

.method public static parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 183
    invoke-interface {p3, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4a

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "array"

    .line 194
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 197
    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    move-object v1, p0

    goto :goto_35

    .line 200
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 202
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :cond_35
    :goto_35
    if-eqz v1, :cond_43

    .line 205
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3e

    goto :goto_43

    .line 209
    :cond_3e
    invoke-interface {p3, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_43
    :goto_43
    const-string p0, "Defined a knownActivityEmbeddingCerts attribute but the provided resource is null"

    .line 206
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 214
    :cond_4a
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_57

    goto :goto_60

    .line 219
    :cond_57
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_60
    :goto_60
    const-string p0, "Defined a knownActivityEmbeddingCerts attribute but the provided string is empty"

    .line 216
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static unknownTag(Ljava/lang/String;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageParsing"

    .line 83
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 p0, 0x0

    .line 87
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 p1, -0x1

    .line 122
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 125
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_1e

    .line 129
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p0, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method
