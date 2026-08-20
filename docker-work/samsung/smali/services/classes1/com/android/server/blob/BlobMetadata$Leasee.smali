.class public final Lcom/android/server/blob/BlobMetadata$Leasee;
.super Lcom/android/server/blob/BlobMetadata$Accessor;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Leasee"
.end annotation


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final descriptionResEntryName:Ljava/lang/String;

.field public final expiryTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .registers 8

    .line 828
    invoke-direct {p0, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 830
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 829
    invoke-static {p1, p2, p3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p1

    .line 831
    invoke-static {p1, p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->getResourceEntryName(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 832
    iput-wide p6, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    if-nez p5, :cond_19

    .line 834
    invoke-static {p1, p4}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescription(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p5

    .line 835
    :cond_19
    iput-object p5, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V
    .registers 7

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 841
    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 842
    iput-wide p5, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 843
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "p"

    .line 909
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "u"

    .line 910
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1b

    const-string/jumbo v1, "rn"

    .line 913
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1c

    :cond_1b
    move-object v4, v0

    :goto_1c
    const-string v1, "ex"

    .line 918
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2d

    const-string p1, "d"

    .line 921
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    goto :goto_2e

    :cond_2d
    move-object v5, v0

    .line 926
    :goto_2e
    new-instance p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V

    return-object p0
.end method

.method public static getDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 858
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1c

    .line 861
    :cond_a
    invoke-static {p0, p2, p3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    .line 865
    :cond_11
    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_18

    goto :goto_1c

    .line 867
    :cond_18
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static getDescription(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3

    .line 873
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p0, :cond_9

    goto :goto_e

    .line 876
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResourceEntryName(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3

    .line 849
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p0, :cond_9

    goto :goto_e

    .line 852
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescriptionToDump(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "expiryMs: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDescriptionToDump(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 890
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 891
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 890
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/blob/BlobMetadata$Leasee;->getDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    .line 893
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_16
    if-nez p1, :cond_1a

    const-string p1, "<none>"

    :cond_1a
    return-object p1
.end method

.method public isStillValid()Z
    .registers 5

    .line 880
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "p"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 900
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    const-string/jumbo v1, "u"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 901
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    const-string/jumbo v1, "rn"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 902
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    const-string v2, "ex"

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 903
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    const-string v0, "d"

    invoke-static {p1, v0, p0}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
