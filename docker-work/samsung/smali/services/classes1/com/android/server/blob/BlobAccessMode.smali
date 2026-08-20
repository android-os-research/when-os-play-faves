.class public Lcom/android/server/blob/BlobAccessMode;
.super Ljava/lang/Object;
.source "BlobAccessMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;,
        Lcom/android/server/blob/BlobAccessMode$AccessType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_ALLOWLIST:I = 0x8

.field public static final ACCESS_TYPE_PRIVATE:I = 0x1

.field public static final ACCESS_TYPE_PUBLIC:I = 0x2

.field public static final ACCESS_TYPE_SAME_SIGNATURE:I = 0x4


# instance fields
.field public mAccessType:I

.field public final mAllowedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    const-string/jumbo v1, "t"

    .line 169
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 170
    iput v1, v0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 173
    :cond_12
    :goto_12
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 174
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "p"

    .line 175
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ct"

    .line 176
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    .line 177
    invoke-virtual {v0, v2, v3}, Lcom/android/server/blob/BlobAccessMode;->allowPackageAccess(Ljava/lang/String;[B)V

    goto :goto_12

    :cond_36
    return-object v0
.end method


# virtual methods
.method public allow(Lcom/android/server/blob/BlobAccessMode;)V
    .registers 4

    .line 68
    iget v0, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 71
    :cond_d
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    iget p1, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return-void
.end method

.method public allowPackageAccess(Ljava/lang/String;[B)V
    .registers 4

    .line 83
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 84
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowPublicAccess()V
    .registers 2

    .line 75
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return-void
.end method

.method public allowSameSignatureAccess()V
    .registers 2

    .line 79
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/blob/BlobAccessMode;

    iget v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    int-to-long v2, v2

    const-string v4, "ACCESS_TYPE_"

    invoke-static {v1, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Explicitly allowed pkgs:"

    .line 141
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p0, " (Empty)"

    .line 143
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 145
    :cond_32
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_3c
    if-ge v0, v1, :cond_50

    .line 147
    iget-object v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    invoke-virtual {v2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 149
    :cond_50
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_53
    return-void
.end method

.method public getAccessType()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return p0
.end method

.method public getAllowedPackagesCount()I
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 104
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 108
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 109
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    .line 110
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_19

    return v1

    .line 116
    :cond_19
    iget p3, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 p3, p3, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_45

    move p3, v0

    .line 117
    :goto_21
    iget-object v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge p3, v2, :cond_45

    .line 118
    iget-object v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 119
    iget-object v3, v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v2, v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 120
    invoke-virtual {p1, p2, v2, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v2

    if-eqz v2, :cond_42

    return v1

    :cond_42
    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    :cond_45
    return v0
.end method

.method public isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .registers 4

    .line 96
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_8
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPublicAccessAllowed()Z
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isSameSignatureAccessAllowed()Z
    .registers 1

    .line 92
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    const-string/jumbo v1, "t"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_35

    const/4 v2, 0x0

    const-string/jumbo v3, "wl"

    .line 156
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    iget-object v4, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 158
    iget-object v5, v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "p"

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    const-string v5, "ct"

    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 160
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_35
    return-void
.end method
