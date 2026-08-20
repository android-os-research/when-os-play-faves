.class public final Landroid/os/PersistableBundle;
.super Landroid/os/BaseBundle;
.source "PersistableBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/util/XmlUtils$WriteMapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/PersistableBundle;

.field private static final blacklist TAG:Ljava/lang/String; = "PersistableBundle"

.field private static final greylist-max-o TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 63
    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 250
    new-instance v0, Landroid/os/PersistableBundle$1;

    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 91
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 93
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;Z)V

    .line 125
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;Z)V
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "throwException"    # Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Bundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    .line 129
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 170
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 105
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 106
    iget v0, p1, Landroid/os/PersistableBundle;->mFlags:I

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 107
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;Z)V
    .registers 3
    .param p1, "from"    # Landroid/os/PersistableBundle;
    .param p2, "deep"    # Z

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 182
    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/ArrayMap;Z)V
    .registers 9
    .param p2, "throwException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 138
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 142
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/util/ArrayMap;)V

    .line 145
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 146
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_7e

    .line 147
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/util/ArrayMap;

    if-eqz v3, :cond_2b

    .line 150
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    move-object v5, v2

    check-cast v5, Landroid/util/ArrayMap;

    invoke-direct {v4, v5, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 152
    :cond_2b
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_3d

    .line 153
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, v5, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;Z)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 154
    :cond_3d
    invoke-static {v2}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value in PersistableBundle key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 156
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "errorMsg":Ljava/lang/String;
    if-nez p2, :cond_75

    .line 160
    const-string v4, "PersistableBundle"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v4, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_7b

    .line 158
    :cond_75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 165
    .end local v1    # "i":I
    :cond_7e
    return-void
.end method

.method public static greylist-max-o forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 190
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 191
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v0
.end method

.method public static greylist-max-o isValidType(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 68
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_31

    instance-of v0, p0, [I

    if-nez v0, :cond_31

    instance-of v0, p0, [J

    if-nez v0, :cond_31

    instance-of v0, p0, [D

    if-nez v0, :cond_31

    instance-of v0, p0, [Ljava/lang/String;

    if-nez v0, :cond_31

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_31

    if-eqz p0, :cond_31

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_31

    instance-of v0, p0, [Z

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    return v0
.end method

.method public static whitelist readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 437
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 438
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    .line 439
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    .line 440
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    :catch_15
    move-exception v0

    .line 441
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .registers 8
    .param p0, "in"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 341
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 342
    .local v0, "outerDepth":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "startTag":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 345
    .local v3, "tagName":[Ljava/lang/String;
    :cond_b
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "event":I
    if-eq v4, v2, :cond_2e

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1b

    .line 346
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v0, :cond_2e

    .line 347
    :cond_1b
    const/4 v4, 0x2

    if-ne v5, v4, :cond_b

    .line 350
    new-instance v2, Landroid/os/PersistableBundle;

    new-instance v4, Landroid/os/PersistableBundle$MyReadMapCallback;

    invoke-direct {v4}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    .line 351
    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    .line 350
    return-object v2

    .line 356
    :cond_2e
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    return-object v2
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 335
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 201
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/PersistableBundle;
    .registers 3

    .line 212
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 390
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 392
    .local v0, "token":J
    iget-object v2, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_22

    .line 393
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_18

    .line 394
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 396
    :cond_18
    iget-object v2, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 399
    :cond_22
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 402
    :goto_30
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 403
    return-void
.end method

.method public whitelist getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 238
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 240
    return-object v1

    .line 243
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, Landroid/os/PersistableBundle;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 244
    :catch_11
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 246
    return-object v1
.end method

.method public whitelist putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/PersistableBundle;

    .line 223
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 224
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public blacklist saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 6
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 286
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_4b

    .line 287
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "value":Ljava/lang/Object;
    invoke-static {v1}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping bad data before persisting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 290
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v3, "PersistableBundle"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 286
    .end local v1    # "value":Ljava/lang/Object;
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 294
    .end local v0    # "i":I
    :cond_4b
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Landroid/util/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 295
    return-void
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 280
    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 378
    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_2b

    .line 379
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 380
    const-string v0, "EMPTY_PARCEL"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_33

    monitor-exit p0

    return-object v0

    .line 382
    .end local p0    # "this":Landroid/os/PersistableBundle;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_33

    monitor-exit p0

    return-object v0

    .line 385
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 377
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 365
    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_30

    .line 366
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 367
    const-string v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_51

    monitor-exit p0

    return-object v0

    .line 369
    .end local p0    # "this":Landroid/os/PersistableBundle;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_51

    .line 369
    monitor-exit p0

    return-object v0

    .line 373
    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object v0

    .line 364
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 326
    .local v0, "oldAllowFds":Z
    :try_start_5
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_d
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 329
    throw v1
.end method

.method public whitelist writeToStream(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 414
    .local v0, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 415
    const/4 v1, 0x0

    const-string v2, "bundle"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_1e

    .line 420
    nop

    .line 421
    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 422
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 423
    return-void

    .line 418
    :catch_1e
    move-exception v1

    .line 419
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .param p1, "v"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1b

    .line 268
    const/4 v0, 0x0

    const-string/jumbo v1, "pbundle_as_map"

    invoke-interface {p3, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    const-string/jumbo v2, "name"

    invoke-interface {p3, v0, v2, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v2, p3}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 271
    invoke-interface {p3, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    return-void

    .line 273
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Object o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
