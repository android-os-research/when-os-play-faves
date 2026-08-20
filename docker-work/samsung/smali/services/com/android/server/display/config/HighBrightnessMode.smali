.class public Lcom/android/server/display/config/HighBrightnessMode;
.super Ljava/lang/Object;
.source "HighBrightnessMode.java"


# instance fields
.field public allowInLowPowerMode_all:Ljava/lang/Boolean;

.field public enabled:Ljava/lang/Boolean;

.field public minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

.field public minimumLux_all:Ljava/math/BigDecimal;

.field public refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

.field public sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

.field public thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

.field public timing_all:Lcom/android/server/display/config/HbmTiming;

.field public transitionPoint_all:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/android/server/display/config/HighBrightnessMode;

    invoke-direct {v0}, Lcom/android/server/display/config/HighBrightnessMode;-><init>()V

    const/4 v1, 0x0

    const-string v2, "enabled"

    .line 158
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HighBrightnessMode;->setEnabled(Z)V

    .line 163
    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 165
    :goto_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_d4

    if-eq v1, v3, :cond_d4

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    goto :goto_18

    .line 168
    :cond_2a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "transitionPoint"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 170
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HighBrightnessMode;->setTransitionPoint_all(Ljava/math/BigDecimal;)V

    goto :goto_18

    :cond_44
    const-string/jumbo v2, "minimumLux"

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 174
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HighBrightnessMode;->setMinimumLux_all(Ljava/math/BigDecimal;)V

    goto :goto_18

    :cond_5a
    const-string/jumbo v2, "timing"

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 178
    invoke-static {p0}, Lcom/android/server/display/config/HbmTiming;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HbmTiming;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HighBrightnessMode;->setTiming_all(Lcom/android/server/display/config/HbmTiming;)V

    goto :goto_18

    :cond_6b
    const-string/jumbo v2, "refreshRate"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 181
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HighBrightnessMode;->setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_18

    :cond_7c
    const-string/jumbo v2, "thermalStatusLimit"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 184
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HighBrightnessMode;->setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V

    goto :goto_18

    :cond_91
    const-string v2, "allowInLowPowerMode"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 188
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HighBrightnessMode;->setAllowInLowPowerMode_all(Z)V

    goto/16 :goto_18

    :cond_a6
    const-string/jumbo v2, "minimumHdrPercentOfScreen"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 192
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HighBrightnessMode;->setMinimumHdrPercentOfScreen_all(Ljava/math/BigDecimal;)V

    goto/16 :goto_18

    :cond_bd
    const-string/jumbo v2, "sdrHdrRatioMap"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 196
    invoke-static {p0}, Lcom/android/server/display/config/SdrHdrRatioMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/HighBrightnessMode;->setSdrHdrRatioMap_all(Lcom/android/server/display/config/SdrHdrRatioMap;)V

    goto/16 :goto_18

    .line 199
    :cond_cf
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_18

    :cond_d4
    if-ne v1, v3, :cond_d7

    return-object v0

    .line 203
    :cond_d7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "HighBrightnessMode is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAllowInLowPowerMode_all()Z
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabled()Z
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 141
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getMinimumLux_all()Ljava/math/BigDecimal;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    return-object p0
.end method

.method public final getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    return-object p0
.end method

.method public final getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    return-object p0
.end method

.method public getTiming_all()Lcom/android/server/display/config/HbmTiming;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    return-object p0
.end method

.method public final getTransitionPoint_all()Ljava/math/BigDecimal;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public hasAllowInLowPowerMode_all()Z
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasEnabled()Z
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasMinimumHdrPercentOfScreen_all()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasMinimumLux_all()Z
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasRefreshRate_all()Z
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasSdrHdrRatioMap_all()Z
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasThermalStatusLimit_all()Z
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasTiming_all()Z
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasTransitionPoint_all()Z
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final setAllowInLowPowerMode_all(Z)V
    .registers 2

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setMinimumHdrPercentOfScreen_all(Ljava/math/BigDecimal;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setMinimumLux_all(Ljava/math/BigDecimal;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method

.method public final setSdrHdrRatioMap_all(Lcom/android/server/display/config/SdrHdrRatioMap;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->sdrHdrRatioMap_all:Lcom/android/server/display/config/SdrHdrRatioMap;

    return-void
.end method

.method public final setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    return-void
.end method

.method public setTiming_all(Lcom/android/server/display/config/HbmTiming;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    return-void
.end method

.method public final setTransitionPoint_all(Ljava/math/BigDecimal;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    return-void
.end method
