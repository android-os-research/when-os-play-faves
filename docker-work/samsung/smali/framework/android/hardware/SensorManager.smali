.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_MINUS_X:I = 0x81

.field public static final whitelist AXIS_MINUS_Y:I = 0x82

.field public static final whitelist AXIS_MINUS_Z:I = 0x83

.field public static final whitelist AXIS_X:I = 0x1

.field public static final whitelist AXIS_Y:I = 0x2

.field public static final whitelist AXIS_Z:I = 0x3

.field public static final whitelist DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final whitelist GRAVITY_EARTH:F = 9.80665f

.field public static final whitelist GRAVITY_JUPITER:F = 23.12f

.field public static final whitelist GRAVITY_MARS:F = 3.71f

.field public static final whitelist GRAVITY_MERCURY:F = 3.7f

.field public static final whitelist GRAVITY_MOON:F = 1.6f

.field public static final whitelist GRAVITY_NEPTUNE:F = 11.0f

.field public static final whitelist GRAVITY_PLUTO:F = 0.6f

.field public static final whitelist GRAVITY_SATURN:F = 8.96f

.field public static final whitelist GRAVITY_SUN:F = 275.0f

.field public static final whitelist GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final whitelist GRAVITY_URANUS:F = 8.69f

.field public static final whitelist GRAVITY_VENUS:F = 8.87f

.field private static final blacklist INJECT_MAIN_SCREEN_ON:I = 0x20047c1

.field private static final blacklist INJECT_SUB_SCREEN_ON:I = 0x30047c1

.field public static final whitelist LIGHT_CLOUDY:F = 100.0f

.field public static final whitelist LIGHT_FULLMOON:F = 0.25f

.field public static final whitelist LIGHT_NO_MOON:F = 0.001f

.field public static final whitelist LIGHT_OVERCAST:F = 10000.0f

.field public static final whitelist LIGHT_SHADE:F = 20000.0f

.field public static final whitelist LIGHT_SUNLIGHT:F = 110000.0f

.field public static final whitelist LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final whitelist LIGHT_SUNRISE:F = 400.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final whitelist PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final whitelist RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_DELAY_FASTEST:I = 0x0

.field public static final whitelist SENSOR_DELAY_GAME:I = 0x1

.field public static final whitelist SENSOR_DELAY_NORMAL:I = 0x3

.field public static final whitelist SENSOR_DELAY_UI:I = 0x2

.field public static final whitelist SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final whitelist SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final whitelist SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final whitelist SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final whitelist SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final whitelist SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STANDARD_GRAVITY:F = 9.80665f

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "SensorManager"

.field private static final greylist-max-o sTempMatrix:[F


# instance fields
.field private greylist-max-o mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final greylist-max-o mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 385
    return-void
.end method

.method public static whitelist getAltitude(FF)F
    .registers 7
    .param p0, "p0"    # F
    .param p1, "p"    # F

    .line 1572
    const v0, 0x3e42dcae

    .line 1573
    .local v0, "coef":F
    div-float v1, p1, p0

    float-to-double v1, v1

    const-wide v3, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const v1, 0x472d2a00    # 44330.0f

    mul-float/2addr v2, v1

    return v2
.end method

.method public static whitelist getAngleChange([F[F[F)V
    .registers 40
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    .line 1607
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .local v2, "rd1":F
    const/4 v3, 0x0

    .local v3, "rd4":F
    const/4 v4, 0x0

    .local v4, "rd6":F
    const/4 v5, 0x0

    .local v5, "rd7":F
    const/4 v6, 0x0

    .line 1608
    .local v6, "rd8":F
    const/4 v7, 0x0

    .local v7, "ri0":F
    const/4 v8, 0x0

    .local v8, "ri1":F
    const/4 v9, 0x0

    .local v9, "ri2":F
    const/4 v10, 0x0

    .local v10, "ri3":F
    const/4 v11, 0x0

    .local v11, "ri4":F
    const/4 v12, 0x0

    .local v12, "ri5":F
    const/4 v13, 0x0

    .local v13, "ri6":F
    const/4 v14, 0x0

    .local v14, "ri7":F
    const/4 v15, 0x0

    .line 1609
    .local v15, "ri8":F
    const/16 v16, 0x0

    .local v16, "pri0":F
    const/16 v17, 0x0

    .local v17, "pri1":F
    const/16 v18, 0x0

    .local v18, "pri2":F
    const/16 v19, 0x0

    .local v19, "pri3":F
    const/16 v20, 0x0

    .line 1610
    .local v20, "pri4":F
    const/16 v21, 0x0

    .local v21, "pri5":F
    const/16 v22, 0x0

    .local v22, "pri6":F
    const/16 v23, 0x0

    .local v23, "pri7":F
    const/16 v24, 0x0

    .line 1612
    .local v24, "pri8":F
    move/from16 v25, v2

    .end local v2    # "rd1":F
    .local v25, "rd1":F
    array-length v2, v0

    const/16 v26, 0xa

    const/16 v27, 0x7

    const/16 v28, 0x3

    move/from16 v29, v3

    .end local v3    # "rd4":F
    .local v29, "rd4":F
    const/16 v30, 0x8

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v3, 0x9

    const/16 v34, 0x2

    const/16 v35, 0x1

    const/16 v36, 0x0

    if-ne v2, v3, :cond_55

    .line 1613
    aget v7, v0, v36

    .line 1614
    aget v8, v0, v35

    .line 1615
    aget v9, v0, v34

    .line 1616
    aget v10, v0, v28

    .line 1617
    aget v11, v0, v33

    .line 1618
    aget v12, v0, v32

    .line 1619
    aget v13, v0, v31

    .line 1620
    aget v14, v0, v27

    .line 1621
    aget v15, v0, v30

    move v2, v3

    goto :goto_71

    .line 1622
    :cond_55
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_6f

    .line 1623
    aget v7, v0, v36

    .line 1624
    aget v8, v0, v35

    .line 1625
    aget v9, v0, v34

    .line 1626
    aget v10, v0, v33

    .line 1627
    aget v11, v0, v32

    .line 1628
    aget v12, v0, v31

    .line 1629
    aget v13, v0, v30

    .line 1630
    const/16 v2, 0x9

    aget v14, v0, v2

    .line 1631
    aget v15, v0, v26

    goto :goto_71

    .line 1622
    :cond_6f
    const/16 v2, 0x9

    .line 1634
    :goto_71
    array-length v3, v1

    if-ne v3, v2, :cond_87

    .line 1635
    aget v16, v1, v36

    .line 1636
    aget v17, v1, v35

    .line 1637
    aget v18, v1, v34

    .line 1638
    aget v19, v1, v28

    .line 1639
    aget v20, v1, v33

    .line 1640
    aget v21, v1, v32

    .line 1641
    aget v22, v1, v31

    .line 1642
    aget v23, v1, v27

    .line 1643
    aget v24, v1, v30

    goto :goto_a0

    .line 1644
    :cond_87
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_a0

    .line 1645
    aget v16, v1, v36

    .line 1646
    aget v17, v1, v35

    .line 1647
    aget v18, v1, v34

    .line 1648
    aget v19, v1, v33

    .line 1649
    aget v20, v1, v32

    .line 1650
    aget v21, v1, v31

    .line 1651
    aget v22, v1, v30

    .line 1652
    const/16 v2, 0x9

    aget v23, v1, v2

    .line 1653
    aget v24, v1, v26

    .line 1659
    :cond_a0
    :goto_a0
    mul-float v2, v16, v8

    mul-float v3, v19, v11

    add-float/2addr v2, v3

    mul-float v3, v22, v14

    add-float/2addr v2, v3

    .line 1660
    .end local v25    # "rd1":F
    .restart local v2    # "rd1":F
    mul-float v3, v17, v8

    mul-float v25, v20, v11

    add-float v3, v3, v25

    mul-float v25, v23, v14

    add-float v3, v3, v25

    .line 1661
    .end local v29    # "rd4":F
    .restart local v3    # "rd4":F
    mul-float v25, v18, v7

    mul-float v26, v21, v10

    add-float v25, v25, v26

    mul-float v26, v24, v13

    add-float v4, v25, v26

    .line 1662
    mul-float v25, v18, v8

    mul-float v26, v21, v11

    add-float v25, v25, v26

    mul-float v26, v24, v14

    add-float v5, v25, v26

    .line 1663
    mul-float v25, v18, v9

    mul-float v26, v21, v12

    add-float v25, v25, v26

    mul-float v26, v24, v15

    add-float v6, v25, v26

    .line 1665
    float-to-double v0, v2

    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "ri0":F
    .end local v8    # "ri1":F
    .local v25, "ri0":F
    .local v26, "ri1":F
    float-to-double v7, v3

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v36

    .line 1666
    neg-float v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v35

    .line 1667
    neg-float v0, v4

    float-to-double v0, v0

    float-to-double v7, v6

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v34

    .line 1669
    return-void
.end method

.method private static greylist-max-o getDelay(I)I
    .registers 2
    .param p0, "rate"    # I

    .line 1927
    const/4 v0, -0x1

    .line 1928
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_14

    .line 1942
    move v0, p0

    goto :goto_13

    .line 1939
    :pswitch_6
    const v0, 0x30d40

    .line 1940
    goto :goto_13

    .line 1936
    :pswitch_a
    const v0, 0x1046b

    .line 1937
    goto :goto_13

    .line 1933
    :pswitch_e
    const/16 v0, 0x4e20

    .line 1934
    goto :goto_13

    .line 1930
    :pswitch_11
    const/4 v0, 0x0

    .line 1931
    nop

    .line 1945
    :goto_13
    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getInclination([F)F
    .registers 5
    .param p0, "I"    # [F

    .line 1308
    array-length v0, p0

    const/4 v1, 0x5

    const/16 v2, 0x9

    if-ne v0, v2, :cond_13

    .line 1309
    aget v0, p0, v1

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1311
    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v2, v0

    aget v0, p0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private greylist-max-o getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .registers 4

    .line 1916
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1917
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_15

    .line 1918
    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1922
    :cond_15
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object v1

    .line 1923
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static whitelist getOrientation([F[F)[F
    .registers 12
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    .line 1529
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne v0, v4, :cond_34

    .line 1530
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    .line 1531
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    .line 1532
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget v0, p0, v1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    goto :goto_5d

    .line 1534
    :cond_34
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    .line 1535
    aget v0, p0, v4

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    .line 1536
    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget v3, p0, v3

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 1539
    :goto_5d
    return-object p1
.end method

.method public static whitelist getQuaternionFromVector([F[F)V
    .registers 9
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    .line 1754
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_d

    .line 1755
    aget v0, p1, v1

    aput v0, p0, v4

    goto :goto_34

    .line 1757
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    aget v5, p1, v4

    aget v6, p1, v4

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v3

    aget v6, p1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v2

    aget v6, p1, v2

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aput v0, p0, v4

    .line 1758
    aget v0, p0, v4

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_32

    aget v0, p0, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    :cond_32
    aput v5, p0, v4

    .line 1760
    :goto_34
    aget v0, p1, v4

    aput v0, p0, v3

    .line 1761
    aget v0, p1, v3

    aput v0, p0, v2

    .line 1762
    aget v0, p1, v2

    aput v0, p0, v1

    .line 1763
    return-void
.end method

.method public static whitelist getRotationMatrix([F[F[F[F)Z
    .registers 43
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, p2, v2

    .line 1224
    .local v3, "Ax":F
    const/4 v4, 0x1

    aget v5, p2, v4

    .line 1225
    .local v5, "Ay":F
    const/4 v6, 0x2

    aget v7, p2, v6

    .line 1227
    .local v7, "Az":F
    mul-float v8, v3, v3

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    .line 1228
    .local v8, "normsqA":F
    const v9, 0x411cf5c3    # 9.81f

    .line 1229
    .local v9, "g":F
    const v10, 0x3f765d4b

    .line 1230
    .local v10, "freeFallGravitySquared":F
    const v11, 0x3f765d4b

    cmpg-float v11, v8, v11

    if-gez v11, :cond_23

    .line 1232
    return v2

    .line 1235
    :cond_23
    aget v11, p3, v2

    .line 1236
    .local v11, "Ex":F
    aget v12, p3, v4

    .line 1237
    .local v12, "Ey":F
    aget v13, p3, v6

    .line 1238
    .local v13, "Ez":F
    mul-float v14, v12, v7

    mul-float v15, v13, v5

    sub-float/2addr v14, v15

    .line 1239
    .local v14, "Hx":F
    mul-float v15, v13, v3

    mul-float v16, v11, v7

    sub-float v15, v15, v16

    .line 1240
    .local v15, "Hy":F
    mul-float v16, v11, v5

    mul-float v17, v12, v3

    sub-float v16, v16, v17

    .line 1241
    .local v16, "Hz":F
    mul-float v17, v14, v14

    mul-float v18, v15, v15

    add-float v17, v17, v18

    mul-float v18, v16, v16

    add-float v6, v17, v18

    move/from16 v18, v5

    .end local v5    # "Ay":F
    .local v18, "Ay":F
    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1243
    .local v4, "normH":F
    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_54

    .line 1246
    return v2

    .line 1248
    :cond_54
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v4

    .line 1249
    .local v6, "invH":F
    mul-float/2addr v14, v6

    .line 1250
    mul-float/2addr v15, v6

    .line 1251
    mul-float v16, v16, v6

    .line 1252
    mul-float v19, v3, v3

    mul-float v20, v18, v18

    add-float v19, v19, v20

    mul-float v20, v7, v7

    add-float v2, v19, v20

    move/from16 v20, v6

    .end local v6    # "invH":F
    .local v20, "invH":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    .line 1253
    .local v2, "invA":F
    mul-float/2addr v3, v2

    .line 1254
    mul-float v5, v18, v2

    .line 1255
    .end local v18    # "Ay":F
    .restart local v5    # "Ay":F
    mul-float/2addr v7, v2

    .line 1256
    mul-float v6, v5, v16

    mul-float v18, v7, v15

    sub-float v6, v6, v18

    .line 1257
    .local v6, "Mx":F
    mul-float v18, v7, v14

    mul-float v21, v3, v16

    sub-float v18, v18, v21

    .line 1258
    .local v18, "My":F
    mul-float v21, v3, v15

    mul-float v22, v5, v14

    sub-float v21, v21, v22

    .line 1259
    .local v21, "Mz":F
    const/16 v22, 0xf

    const/16 v23, 0xe

    const/16 v24, 0xd

    const/16 v25, 0xc

    const/16 v26, 0xb

    const/16 v27, 0xa

    move/from16 v28, v2

    .end local v2    # "invA":F
    .local v28, "invA":F
    const/16 v29, 0x8

    const/16 v30, 0x7

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v34, 0x3

    const/16 v2, 0x9

    const/16 v35, 0x0

    if-eqz v0, :cond_f0

    .line 1260
    move/from16 v36, v4

    .end local v4    # "normH":F
    .local v36, "normH":F
    array-length v4, v0

    if-ne v4, v2, :cond_c3

    .line 1261
    const/4 v4, 0x0

    aput v14, v0, v4

    const/4 v4, 0x1

    aput v15, v0, v4

    const/4 v4, 0x2

    aput v16, v0, v4

    .line 1262
    aput v6, v0, v34

    aput v18, v0, v33

    aput v21, v0, v32

    .line 1263
    aput v3, v0, v31

    aput v5, v0, v30

    aput v7, v0, v29

    goto :goto_f2

    .line 1264
    :cond_c3
    array-length v4, v0

    const/16 v2, 0x10

    if-ne v4, v2, :cond_f2

    .line 1265
    const/4 v2, 0x0

    aput v14, v0, v2

    const/4 v2, 0x1

    aput v15, v0, v2

    const/4 v2, 0x2

    aput v16, v0, v2

    aput v35, v0, v34

    .line 1266
    aput v6, v0, v33

    aput v18, v0, v32

    aput v21, v0, v31

    aput v35, v0, v30

    .line 1267
    aput v3, v0, v29

    const/16 v2, 0x9

    aput v5, v0, v2

    aput v7, v0, v27

    aput v35, v0, v26

    .line 1268
    aput v35, v0, v25

    aput v35, v0, v24

    aput v35, v0, v23

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v22

    goto :goto_f2

    .line 1259
    .end local v36    # "normH":F
    .restart local v4    # "normH":F
    :cond_f0
    move/from16 v36, v4

    .line 1271
    .end local v4    # "normH":F
    .restart local v36    # "normH":F
    :cond_f2
    :goto_f2
    if-eqz v1, :cond_16d

    .line 1275
    mul-float v2, v11, v11

    mul-float v4, v12, v12

    add-float/2addr v2, v4

    mul-float v4, v13, v13

    add-float/2addr v2, v4

    move v4, v8

    move/from16 v37, v9

    .end local v8    # "normsqA":F
    .end local v9    # "g":F
    .local v4, "normsqA":F
    .local v37, "g":F
    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v2, v8, v2

    .line 1276
    .local v2, "invE":F
    mul-float v8, v11, v6

    mul-float v9, v12, v18

    add-float/2addr v8, v9

    mul-float v9, v13, v21

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    .line 1277
    .local v8, "c":F
    mul-float v9, v11, v3

    mul-float v38, v12, v5

    add-float v9, v9, v38

    mul-float v38, v13, v7

    add-float v9, v9, v38

    mul-float/2addr v9, v2

    .line 1278
    .local v9, "s":F
    array-length v0, v1

    move/from16 v38, v2

    const/16 v2, 0x9

    .end local v2    # "invE":F
    .local v38, "invE":F
    if-ne v0, v2, :cond_13d

    .line 1279
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v35, v1, v0

    const/4 v0, 0x2

    aput v35, v1, v0

    .line 1280
    aput v35, v1, v34

    aput v8, v1, v33

    aput v9, v1, v32

    .line 1281
    aput v35, v1, v31

    neg-float v0, v9

    aput v0, v1, v30

    aput v8, v1, v29

    goto :goto_170

    .line 1282
    :cond_13d
    array-length v0, v1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_170

    .line 1283
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v35, v1, v0

    const/4 v0, 0x2

    aput v35, v1, v0

    .line 1284
    aput v35, v1, v33

    aput v8, v1, v32

    aput v9, v1, v31

    .line 1285
    aput v35, v1, v29

    neg-float v0, v9

    const/16 v2, 0x9

    aput v0, v1, v2

    aput v8, v1, v27

    .line 1286
    aput v35, v1, v23

    aput v35, v1, v24

    aput v35, v1, v25

    aput v35, v1, v26

    aput v35, v1, v30

    aput v35, v1, v34

    .line 1287
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, v22

    goto :goto_170

    .line 1271
    .end local v4    # "normsqA":F
    .end local v37    # "g":F
    .end local v38    # "invE":F
    .local v8, "normsqA":F
    .local v9, "g":F
    :cond_16d
    move v4, v8

    move/from16 v37, v9

    .line 1290
    .end local v8    # "normsqA":F
    .end local v9    # "g":F
    .restart local v4    # "normsqA":F
    .restart local v37    # "g":F
    :cond_170
    :goto_170
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist getRotationMatrixFromVector([F[F)V
    .registers 28
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    .line 1693
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 1694
    .local v3, "q1":F
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 1695
    .local v5, "q2":F
    const/4 v6, 0x2

    aget v7, v1, v6

    .line 1697
    .local v7, "q3":F
    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-lt v8, v10, :cond_18

    .line 1698
    aget v8, v1, v9

    .local v8, "q0":F
    goto :goto_2f

    .line 1700
    .end local v8    # "q0":F
    :cond_18
    mul-float v8, v3, v3

    sub-float v8, v12, v8

    mul-float v13, v5, v5

    sub-float/2addr v8, v13

    mul-float v13, v7, v7

    sub-float/2addr v8, v13

    .line 1701
    .restart local v8    # "q0":F
    cmpl-float v13, v8, v11

    if-lez v13, :cond_2d

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    goto :goto_2e

    :cond_2d
    move v13, v11

    :goto_2e
    move v8, v13

    .line 1704
    :goto_2f
    const/high16 v13, 0x40000000    # 2.0f

    mul-float v14, v3, v13

    mul-float/2addr v14, v3

    .line 1705
    .local v14, "sq_q1":F
    mul-float v15, v5, v13

    mul-float/2addr v15, v5

    .line 1706
    .local v15, "sq_q2":F
    mul-float v16, v7, v13

    mul-float v16, v16, v7

    .line 1707
    .local v16, "sq_q3":F
    mul-float v17, v3, v13

    mul-float v17, v17, v5

    .line 1708
    .local v17, "q1_q2":F
    mul-float v18, v7, v13

    mul-float v18, v18, v8

    .line 1709
    .local v18, "q3_q0":F
    mul-float v19, v3, v13

    mul-float v19, v19, v7

    .line 1710
    .local v19, "q1_q3":F
    mul-float v20, v5, v13

    mul-float v20, v20, v8

    .line 1711
    .local v20, "q2_q0":F
    mul-float v21, v5, v13

    mul-float v21, v21, v7

    .line 1712
    .local v21, "q2_q3":F
    mul-float/2addr v13, v3

    mul-float/2addr v13, v8

    .line 1714
    .local v13, "q1_q0":F
    array-length v11, v0

    const/16 v22, 0x8

    const/16 v23, 0x7

    const/16 v24, 0x6

    const/16 v25, 0x5

    const/16 v10, 0x9

    if-ne v11, v10, :cond_88

    .line 1715
    sub-float v10, v12, v15

    sub-float v10, v10, v16

    aput v10, v0, v2

    .line 1716
    sub-float v2, v17, v18

    aput v2, v0, v4

    .line 1717
    add-float v2, v19, v20

    aput v2, v0, v6

    .line 1719
    add-float v2, v17, v18

    aput v2, v0, v9

    .line 1720
    sub-float v2, v12, v14

    sub-float v2, v2, v16

    const/4 v4, 0x4

    aput v2, v0, v4

    .line 1721
    sub-float v2, v21, v13

    aput v2, v0, v25

    .line 1723
    sub-float v2, v19, v20

    aput v2, v0, v24

    .line 1724
    add-float v2, v21, v13

    aput v2, v0, v23

    .line 1725
    sub-float/2addr v12, v14

    sub-float/2addr v12, v15

    aput v12, v0, v22

    goto :goto_d6

    .line 1726
    :cond_88
    array-length v11, v0

    const/16 v10, 0x10

    if-ne v11, v10, :cond_d6

    .line 1727
    sub-float v10, v12, v15

    sub-float v10, v10, v16

    aput v10, v0, v2

    .line 1728
    sub-float v2, v17, v18

    aput v2, v0, v4

    .line 1729
    add-float v2, v19, v20

    aput v2, v0, v6

    .line 1730
    const/4 v2, 0x0

    aput v2, v0, v9

    .line 1732
    add-float v2, v17, v18

    const/4 v4, 0x4

    aput v2, v0, v4

    .line 1733
    sub-float v2, v12, v14

    sub-float v2, v2, v16

    aput v2, v0, v25

    .line 1734
    sub-float v2, v21, v13

    aput v2, v0, v24

    .line 1735
    const/4 v2, 0x0

    aput v2, v0, v23

    .line 1737
    sub-float v2, v19, v20

    aput v2, v0, v22

    .line 1738
    add-float v2, v21, v13

    const/16 v4, 0x9

    aput v2, v0, v4

    .line 1739
    const/16 v2, 0xa

    sub-float v4, v12, v14

    sub-float/2addr v4, v15

    aput v4, v0, v2

    .line 1740
    const/16 v2, 0xb

    const/4 v4, 0x0

    aput v4, v0, v2

    .line 1742
    const/16 v2, 0xc

    const/16 v6, 0xd

    const/16 v9, 0xe

    aput v4, v0, v9

    aput v4, v0, v6

    aput v4, v0, v2

    .line 1743
    const/16 v2, 0xf

    aput v12, v0, v2

    .line 1745
    :cond_d6
    :goto_d6
    return-void
.end method

.method public static whitelist remapCoordinateSystem([FII[F)Z
    .registers 8
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .line 1391
    if-ne p0, p3, :cond_1e

    .line 1392
    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    .line 1393
    .local v0, "temp":[F
    monitor-enter v0

    .line 1395
    :try_start_5
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1396
    array-length v1, p3

    .line 1397
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_16

    .line 1398
    aget v3, v0, v2

    aput v3, p3, v2

    .line 1397
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1400
    .end local v2    # "i":I
    :cond_16
    monitor-exit v0

    const/4 v2, 0x1

    return v2

    .line 1402
    .end local v1    # "size":I
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v1

    .line 1404
    .end local v0    # "temp":[F
    :cond_1e
    :goto_1e
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o remapCoordinateSystemImpl([FII[F)Z
    .registers 25
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .line 1419
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    .line 1420
    .local v4, "length":I
    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_e

    .line 1421
    return v6

    .line 1423
    :cond_e
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_d4

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_18

    goto/16 :goto_d4

    .line 1426
    :cond_18
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_d3

    and-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_22

    goto/16 :goto_d3

    .line 1429
    :cond_22
    and-int/lit8 v5, v1, 0x3

    and-int/lit8 v7, v2, 0x3

    if-ne v5, v7, :cond_29

    .line 1430
    return v6

    .line 1436
    :cond_29
    xor-int v5, v1, v2

    .line 1439
    .local v5, "Z":I
    and-int/lit8 v7, v1, 0x3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 1440
    .local v7, "x":I
    and-int/lit8 v9, v2, 0x3

    sub-int/2addr v9, v8

    .line 1441
    .local v9, "y":I
    and-int/lit8 v10, v5, 0x3

    sub-int/2addr v10, v8

    .line 1444
    .local v10, "z":I
    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    rem-int/2addr v11, v12

    .line 1445
    .local v11, "axis_y":I
    add-int/lit8 v13, v10, 0x2

    rem-int/2addr v13, v12

    .line 1446
    .local v13, "axis_z":I
    xor-int v14, v7, v11

    xor-int v15, v9, v13

    or-int/2addr v14, v15

    if-eqz v14, :cond_45

    .line 1447
    xor-int/lit16 v5, v5, 0x80

    .line 1450
    :cond_45
    const/16 v14, 0x80

    if-lt v1, v14, :cond_4b

    move v15, v8

    goto :goto_4c

    :cond_4b
    move v15, v6

    .line 1451
    .local v15, "sx":Z
    :goto_4c
    if-lt v2, v14, :cond_51

    move/from16 v16, v8

    goto :goto_53

    :cond_51
    move/from16 v16, v6

    .line 1452
    .local v16, "sy":Z
    :goto_53
    if-lt v5, v14, :cond_56

    move v6, v8

    .line 1455
    .local v6, "sz":Z
    :cond_56
    const/16 v14, 0x10

    if-ne v4, v14, :cond_5d

    const/16 v17, 0x4

    goto :goto_5f

    :cond_5d
    move/from16 v17, v12

    .line 1456
    .local v17, "rowLength":I
    :goto_5f
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "j":I
    :goto_63
    if-ge v8, v12, :cond_af

    .line 1457
    mul-int v18, v8, v17

    .line 1458
    .local v18, "offset":I
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "i":I
    :goto_6b
    if-ge v14, v12, :cond_a7

    .line 1459
    if-ne v7, v14, :cond_7f

    add-int v19, v18, v14

    if-eqz v15, :cond_79

    add-int/lit8 v20, v18, 0x0

    aget v12, v0, v20

    neg-float v12, v12

    goto :goto_7d

    :cond_79
    add-int/lit8 v12, v18, 0x0

    aget v12, v0, v12

    :goto_7d
    aput v12, v3, v19

    .line 1460
    :cond_7f
    if-ne v9, v14, :cond_91

    add-int v12, v18, v14

    if-eqz v16, :cond_8b

    add-int/lit8 v19, v18, 0x1

    aget v1, v0, v19

    neg-float v1, v1

    goto :goto_8f

    :cond_8b
    add-int/lit8 v1, v18, 0x1

    aget v1, v0, v1

    :goto_8f
    aput v1, v3, v12

    .line 1461
    :cond_91
    if-ne v10, v14, :cond_a1

    add-int v1, v18, v14

    add-int/lit8 v12, v18, 0x2

    if-eqz v6, :cond_9d

    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_9f

    :cond_9d
    aget v12, v0, v12

    :goto_9f
    aput v12, v3, v1

    .line 1458
    :cond_a1
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    const/4 v12, 0x3

    goto :goto_6b

    .line 1456
    .end local v14    # "i":I
    .end local v18    # "offset":I
    :cond_a7
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    const/4 v12, 0x3

    const/16 v14, 0x10

    goto :goto_63

    .line 1464
    .end local v8    # "j":I
    :cond_af
    const/16 v1, 0x10

    if-ne v4, v1, :cond_d1

    .line 1465
    const/4 v1, 0x7

    const/16 v8, 0xb

    const/16 v12, 0xc

    const/16 v14, 0xd

    const/16 v18, 0xe

    const/16 v19, 0x0

    aput v19, v3, v18

    aput v19, v3, v14

    aput v19, v3, v12

    aput v19, v3, v8

    aput v19, v3, v1

    const/4 v1, 0x3

    aput v19, v3, v1

    .line 1466
    const/16 v1, 0xf

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v3, v1

    .line 1468
    :cond_d1
    const/4 v1, 0x1

    return v1

    .line 1427
    .end local v5    # "Z":I
    .end local v6    # "sz":Z
    .end local v7    # "x":I
    .end local v9    # "y":I
    .end local v10    # "z":I
    .end local v11    # "axis_y":I
    .end local v13    # "axis_z":I
    .end local v15    # "sx":Z
    .end local v16    # "sy":Z
    .end local v17    # "rowLength":I
    :cond_d3
    :goto_d3
    return v6

    .line 1424
    :cond_d4
    :goto_d4
    return v6
.end method


# virtual methods
.method public whitelist cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 1817
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method protected abstract greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public whitelist createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 3
    .param p1, "mem"    # Landroid/hardware/HardwareBuffer;

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .registers 3
    .param p1, "mem"    # Landroid/os/MemoryFile;

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v0

    return-object v0
.end method

.method protected abstract greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method greylist-max-o destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .registers 2
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 986
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    .line 987
    return-void
.end method

.method protected abstract greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public whitelist flush(Landroid/hardware/SensorEventListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 929
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 9
    .param p1, "type"    # I

    .line 505
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 506
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 510
    .local v1, "wakeUpSensor":Z
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2f

    const/16 v3, 0x11

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x18

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x19

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x22

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x20

    if-eq p1, v3, :cond_2f

    const/16 v3, 0x24

    if-eq p1, v3, :cond_2f

    if-ne p1, v2, :cond_30

    .line 517
    :cond_2f
    const/4 v1, 0x1

    .line 520
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 521
    .local v4, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    if-ne v5, v1, :cond_47

    return-object v4

    .line 522
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_47
    goto :goto_34

    .line 524
    :cond_48
    const-string v3, "SensorManager"

    if-ne p1, v2, :cond_6f

    .line 525
    const/16 p1, 0x8

    .line 526
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 527
    .local v2, "p":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 528
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v6

    if-ne v6, v1, :cond_6e

    .line 529
    const-string v4, "get Physical proximity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-object v5

    .line 532
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_6e
    goto :goto_56

    .line 534
    .end local v2    # "p":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_6f
    const v2, 0x10041

    if-ne p1, v2, :cond_96

    .line 535
    const/4 p1, 0x5

    .line 536
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 537
    .restart local v2    # "p":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 538
    .restart local v5    # "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v6

    if-ne v6, v1, :cond_95

    .line 539
    const-string v4, "get light sensor instead of autobrightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-object v5

    .line 542
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_95
    goto :goto_7d

    .line 545
    .end local v2    # "p":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_96
    const/high16 v2, 0x10000

    if-le p1, v2, :cond_c2

    .line 546
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 547
    .restart local v2    # "p":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c2

    .line 548
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 549
    .restart local v4    # "sensor":Landroid/hardware/Sensor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Sensor type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-object v4

    .line 554
    .end local v2    # "p":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "sensor":Landroid/hardware/Sensor;
    :cond_c2
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .registers 7
    .param p1, "type"    # I
    .param p2, "wakeUp"    # Z

    .line 584
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 585
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 586
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_1b

    .line 587
    return-object v2

    .line 589
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_1b
    goto :goto_8

    .line 590
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDynamicSensorList(I)Ljava/util/List;
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object v0

    .line 475
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 476
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 478
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 480
    .local v3, "i":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_2a

    .line 481
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v3    # "i":Landroid/hardware/Sensor;
    :cond_2a
    goto :goto_15

    .line 484
    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected abstract greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 435
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 436
    :try_start_7
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 437
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v2, :cond_40

    .line 438
    const/4 v3, -0x1

    if-ne p1, v3, :cond_16

    .line 439
    move-object v2, v0

    goto :goto_36

    .line 441
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 443
    .local v4, "i":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p1, :cond_35

    .line 444
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v4    # "i":Landroid/hardware/Sensor;
    :cond_35
    goto :goto_20

    .line 448
    :cond_36
    :goto_36
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 449
    iget-object v3, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 451
    :cond_40
    monitor-exit v1

    .line 452
    return-object v2

    .line 451
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public whitelist getSensors()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public whitelist initDataInjection(Z)Z
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1850
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o initDataInjectionImpl(Z)Z
.end method

.method public whitelist injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .registers 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1885
    if-eqz p1, :cond_78

    .line 1888
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1891
    if-eqz p2, :cond_66

    .line 1894
    const/16 v0, 0x17

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 1895
    .local v0, "expectedNumValues":I
    array-length v1, p2

    if-ne v1, v0, :cond_34

    .line 1900
    const/4 v1, -0x1

    if-lt p3, v1, :cond_2c

    const/4 v1, 0x3

    if-gt p3, v1, :cond_2c

    .line 1903
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_24

    .line 1906
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result v1

    return v1

    .line 1904
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative or zero sensor timestamp"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1901
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid sensor accuracy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1896
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of values for sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1897
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1892
    .end local v0    # "expectedNumValues":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor does not support data injection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1886
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sensor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public whitelist isDynamicSensorDiscoverySupported()Z
    .registers 3

    .line 1074
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1075
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 1031
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 1032
    return-void
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1050
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 1051
    return-void
.end method

.method protected abstract greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I

    .line 833
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    .line 834
    .local v7, "delay":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 14
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 899
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    .line 900
    .local v7, "delayUs":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 868
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    .line 869
    .local v7, "delay":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 639
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public whitelist requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 1785
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public blacklist setActiveScreenParameter(I)V
    .registers 9
    .param p1, "screenID"    # I

    .line 1971
    const v0, 0x10032

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1972
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 1973
    .local v1, "sensor":Landroid/hardware/Sensor;
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1974
    .local v2, "data":[I
    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    .line 1975
    const/4 v3, 0x1

    if-nez p1, :cond_27

    .line 1976
    const v4, 0x20047c1

    aput v4, v2, v3

    goto :goto_2e

    .line 1977
    :cond_27
    if-ne p1, v3, :cond_2e

    .line 1978
    const v4, 0x30047c1

    aput v4, v2, v3

    .line 1980
    :cond_2e
    :goto_2e
    invoke-static {v1, v2}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v4

    .line 1981
    .local v4, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set parameter active screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v3, v2, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SensorManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1983
    const-string/jumbo v3, "set parameter active screen failed "

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_63
    return-void

    .line 1987
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "data":[I
    .end local v4    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_64
    return-void
.end method

.method public blacklist setBrightnessHysteresisParameter([F)V
    .registers 8
    .param p1, "values"    # [F

    .line 1993
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1994
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 1995
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4f

    .line 1996
    const-string v1, "SensorManager"

    const-string v3, "Inject hysteresis info"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const v3, 0x10000002

    :try_start_27
    invoke-static {v2, v3, p1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 1999
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    invoke-virtual {p0, v3}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2000
    const-string v4, "Inject hysteresis info failed "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_36} :catch_37

    .line 2004
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_36
    goto :goto_4e

    .line 2002
    :catch_37
    move-exception v3

    .line 2003
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_4e
    return-void

    .line 2007
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_4f
    goto :goto_9

    .line 2008
    :cond_50
    return-void
.end method

.method public greylist-max-o setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 3
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 1950
    if-nez p1, :cond_4

    .line 1951
    const/4 v0, 0x0

    return v0

    .line 1963
    :cond_4
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public whitelist unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 1064
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 1065
    return-void
.end method

.method protected abstract greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 712
    if-nez p1, :cond_3

    .line 713
    return-void

    .line 716
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 717
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 694
    if-eqz p1, :cond_9

    if-nez p2, :cond_5

    goto :goto_9

    .line 698
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 699
    return-void

    .line 695
    :cond_9
    :goto_9
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 655
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 673
    return-void
.end method

.method protected abstract greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
