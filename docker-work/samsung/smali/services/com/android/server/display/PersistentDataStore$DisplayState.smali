.class public final Lcom/android/server/display/PersistentDataStore$DisplayState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayState"
.end annotation


# instance fields
.field public mBrightness:F

.field public mColorMode:I

.field public mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field public mHeight:I

.field public mRefreshRate:F

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore$DisplayState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BrightnessValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayBrightnessConfigurations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getBrightness()F
    .registers 1

    .line 834
    iget p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    return p0
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 845
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {p0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$fgetmConfigurations(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public getColorMode()I
    .registers 1

    .line 822
    iget p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    return p0
.end method

.method public getRefreshRate()F
    .registers 1

    .line 870
    iget p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    return p0
.end method

.method public getResolution()Landroid/graphics/Point;
    .registers 3

    .line 858
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    iget p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 875
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 877
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 878
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5c

    goto :goto_3a

    :sswitch_1a
    const-string v3, "color-mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_3a

    :cond_23
    const/4 v2, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v3, "brightness-value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_3a

    :cond_2e
    const/4 v2, 0x1

    goto :goto_3a

    :sswitch_30
    const-string v3, "brightness-configurations"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    packed-switch v2, :pswitch_data_6a

    goto :goto_4

    .line 880
    :pswitch_3e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    goto :goto_4

    .line 884
    :pswitch_49
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    goto :goto_4

    .line 888
    :pswitch_54
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_4

    :cond_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x4ecba0c7 -> :sswitch_30
        -0x385f6f0b -> :sswitch_25
        0x4a1b51cd -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_54
        :pswitch_49
        :pswitch_3e
    .end packed-switch
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "color-mode"

    .line 895
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "brightness-value"

    .line 899
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 901
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "brightness-configurations"

    .line 903
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {p0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 905
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public setBrightness(F)Z
    .registers 3

    .line 826
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 829
    :cond_8
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    const/4 p0, 0x1

    return p0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 4

    .line 839
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setColorMode(I)Z
    .registers 3

    .line 814
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    if-ne p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 817
    :cond_6
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    const/4 p0, 0x1

    return p0
.end method

.method public setRefreshRate(F)Z
    .registers 3

    .line 862
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 865
    :cond_8
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    const/4 p0, 0x1

    return p0
.end method

.method public setResolution(II)Z
    .registers 4

    .line 849
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    if-ne p2, v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 852
    :cond_a
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 853
    iput p2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    const/4 p0, 0x1

    return p0
.end method
