.class public Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
.super Ljava/lang/Object;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/OwnersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OwnerInfo"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isOrganizationOwnedDevice:Z

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public remoteBugreportHash:Ljava/lang/String;

.field public remoteBugreportUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    .line 506
    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 507
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 508
    iput-object p3, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 509
    iput-object p4, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 510
    iput-boolean p5, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    .registers 9

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 535
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "component"

    .line 536
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remoteBugreportUri"

    .line 538
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "remoteBugreportHash"

    .line 540
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "canAccessDeviceIds"

    .line 542
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "true"

    .line 543
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v7, "isPoOrganizationOwnedDevice"

    .line 545
    invoke-interface {p0, v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 547
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    or-int v7, p0, v2

    const-string p0, "DevicePolicyManagerService"

    if-nez v1, :cond_40

    const-string v1, "Owner component not found"

    .line 550
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 553
    :cond_40
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_5b

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Owner component not parsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 559
    :cond_5b
    new-instance p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOrganizationOwnedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 514
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string/jumbo v2, "name"

    .line 516
    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    :cond_e
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1b

    .line 519
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    :cond_1b
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    if-eqz v1, :cond_25

    const-string/jumbo v2, "remoteBugreportUri"

    .line 522
    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    :cond_25
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    if-eqz v1, :cond_2f

    const-string/jumbo v2, "remoteBugreportHash"

    .line 525
    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    :cond_2f
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->isOrganizationOwnedDevice:Z

    if-eqz p0, :cond_39

    const-string/jumbo v1, "isPoOrganizationOwnedDevice"

    .line 528
    invoke-interface {p1, v0, v1, p0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    :cond_39
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
