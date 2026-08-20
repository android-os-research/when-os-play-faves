.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field public ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field public ambientLightHorizonLong:Ljava/math/BigInteger;

.field public ambientLightHorizonShort:Ljava/math/BigInteger;

.field public densityMapping:Lcom/android/server/display/config/DensityMapping;

.field public displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field public highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field public lightSensor:Lcom/android/server/display/config/SensorDetails;

.field public proxSensor:Lcom/android/server/display/config/SensorDetails;

.field public quirks:Lcom/android/server/display/config/DisplayQuirks;

.field public screenBrightnessDefault:Ljava/math/BigDecimal;

.field public screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field public screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

.field public thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    .line 296
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 298
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_189

    if-eq v1, v3, :cond_189

    .line 300
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 301
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "densityMapping"

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 303
    invoke-static {p0}, Lcom/android/server/display/config/DensityMapping;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DensityMapping;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V

    goto :goto_8

    :cond_2e
    const-string/jumbo v2, "screenBrightnessMap"

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 306
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    goto :goto_8

    :cond_3f
    const-string/jumbo v2, "screenBrightnessDefault"

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 309
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    goto :goto_8

    :cond_55
    const-string/jumbo v2, "thermalThrottling"

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 313
    invoke-static {p0}, Lcom/android/server/display/config/ThermalThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V

    goto :goto_8

    :cond_66
    const-string/jumbo v2, "highBrightnessMode"

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 316
    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    goto :goto_8

    :cond_77
    const-string/jumbo v2, "quirks"

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 319
    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    goto :goto_8

    :cond_88
    const-string/jumbo v2, "screenBrightnessRampFastDecrease"

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 322
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    :cond_9f
    const-string/jumbo v2, "screenBrightnessRampFastIncrease"

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 326
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    :cond_b6
    const-string/jumbo v2, "screenBrightnessRampSlowDecrease"

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 330
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    :cond_cd
    const-string/jumbo v2, "screenBrightnessRampSlowIncrease"

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 334
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    :cond_e4
    const-string/jumbo v2, "screenBrightnessRampIncreaseMaxMillis"

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 338
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    :cond_fb
    const-string/jumbo v2, "screenBrightnessRampDecreaseMaxMillis"

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 342
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    :cond_112
    const-string/jumbo v2, "lightSensor"

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 346
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_8

    :cond_124
    const-string/jumbo v2, "proxSensor"

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 349
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setProxSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_8

    :cond_136
    const-string v2, "ambientLightHorizonLong"

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 352
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonLong(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    :cond_14c
    const-string v2, "ambientLightHorizonShort"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 356
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonShort(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    :cond_162
    const-string v2, "displayBrightnessChangeThresholds"

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 360
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_8

    :cond_173
    const-string v2, "ambientBrightnessChangeThresholds"

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 363
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_8

    .line 366
    :cond_184
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_189
    if-ne v1, v3, :cond_18c

    return-object v0

    .line 370
    :cond_18c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayConfiguration is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getAmbientLightHorizonLong()Ljava/math/BigInteger;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getAmbientLightHorizonShort()Ljava/math/BigInteger;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getDensityMapping()Lcom/android/server/display/config/DensityMapping;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-object p0
.end method

.method public final getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object p0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public final getProxSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object p0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object p0
.end method

.method public final getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-object p0
.end method

.method public hasAmbientBrightnessChangeThresholds()Z
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasAmbientLightHorizonLong()Z
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasAmbientLightHorizonShort()Z
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasDensityMapping()Z
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasDisplayBrightnessChangeThresholds()Z
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasHighBrightnessMode()Z
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasLightSensor()Z
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasProxSensor()Z
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasQuirks()Z
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessDefault()Z
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessMap()Z
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessRampDecreaseMaxMillis()Z
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessRampFastDecrease()Z
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessRampFastIncrease()Z
    .registers 1

    .line 133
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessRampIncreaseMaxMillis()Z
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessRampSlowDecrease()Z
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasScreenBrightnessRampSlowIncrease()Z
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasThermalThrottling()Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setAmbientLightHorizonLong(Ljava/math/BigInteger;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-void
.end method

.method public final setAmbientLightHorizonShort(Ljava/math/BigInteger;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-void
.end method

.method public final setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-void
.end method

.method public final setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public final setProxSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-void
.end method
