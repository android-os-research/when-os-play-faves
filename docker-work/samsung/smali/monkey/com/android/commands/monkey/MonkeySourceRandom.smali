.class public Lcom/android/commands/monkey/MonkeySourceRandom;
.super Ljava/lang/Object;
.source "MonkeySourceRandom.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field public static final FACTORZ_COUNT:I = 0xc

.field public static final FACTOR_ANYTHING:I = 0xb

.field public static final FACTOR_APPSWITCH:I = 0x9

.field public static final FACTOR_FLIP:I = 0xa

.field public static final FACTOR_MAJORNAV:I = 0x7

.field public static final FACTOR_MOTION:I = 0x1

.field public static final FACTOR_NAV:I = 0x6

.field public static final FACTOR_PERMISSION:I = 0x5

.field public static final FACTOR_PINCHZOOM:I = 0x2

.field public static final FACTOR_ROTATION:I = 0x4

.field public static final FACTOR_SYSOPS:I = 0x8

.field public static final FACTOR_TOUCH:I = 0x0

.field public static final FACTOR_TRACKBALL:I = 0x3

.field private static final GESTURE_DRAG:I = 0x1

.field private static final GESTURE_PINCH_OR_ZOOM:I = 0x2

.field private static final GESTURE_TAP:I

.field private static final MAJOR_NAV_KEYS:[I

.field private static final NAV_KEYS:[I

.field private static final PHYSICAL_KEY_EXISTS:[Z

.field private static final SCREEN_ROTATION_DEGREES:[I

.field private static final SYS_KEYS:[I


# instance fields
.field private mEventCount:I

.field private mFactors:[F

.field private mKeyboardOpen:Z

.field private mMainApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mRandom:Ljava/util/Random;

.field private mThrottle:J

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 38
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_4a

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    .line 46
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_56

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    .line 51
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    .line 58
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    array-length v4, v3

    if-ge v1, v4, :cond_2e

    .line 61
    aput-boolean v2, v3, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 64
    .end local v1    # "i":I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2f
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_41

    .line 65
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget v2, v2, v1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    aput-boolean v4, v3, v2

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 69
    .end local v1    # "i":I
    :cond_41
    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    return-void

    nop

    :array_4a
    .array-data 4
        0x13
        0x14
        0x15
        0x16
    .end array-data

    :array_56
    .array-data 4
        0x52
        0x17
    .end array-data

    :array_5e
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x18
        0x19
        0xa4
        0x5b
    .end array-data

    :array_72
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/util/HashMap;JZZ)V
    .registers 12
    .param p1, "random"    # Ljava/util/Random;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "permissionTargetSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;JZZ)V"
        }
    .end annotation

    .line 124
    .local p2, "MainApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 102
    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 103
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mThrottle:J

    .line 106
    iput-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 128
    const/high16 v2, 0x41700000    # 15.0f

    aput v2, v0, v1

    .line 129
    const/4 v1, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    aput v3, v0, v1

    .line 130
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 132
    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 133
    const/4 v1, 0x6

    const/high16 v4, 0x41c80000    # 25.0f

    aput v4, v0, v1

    .line 134
    const/4 v1, 0x7

    aput v2, v0, v1

    .line 135
    const/16 v1, 0x8

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    .line 136
    const/16 v1, 0x9

    aput v2, v0, v1

    .line 137
    const/16 v1, 0xa

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v1

    .line 139
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 140
    const/16 v1, 0xb

    const/high16 v3, 0x41500000    # 13.0f

    aput v3, v0, v1

    .line 141
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 143
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    .line 144
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    .line 145
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 146
    new-instance v0, Lcom/android/commands/monkey/MonkeyPermissionUtil;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyPermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    .line 147
    invoke-virtual {v0, p6}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->setTargetSystemPackages(Z)V

    .line 148
    return-void
.end method

.method private adjustEventFactors()Z
    .registers 14

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "userSum":F
    const/4 v1, 0x0

    .line 157
    .local v1, "defaultSum":F
    const/4 v2, 0x0

    .line 158
    .local v2, "defaultCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    const/4 v4, 0x0

    const/16 v5, 0xc

    if-ge v3, v5, :cond_19

    .line 159
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v3

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_13

    .line 160
    sub-float/2addr v0, v5

    goto :goto_16

    .line 162
    :cond_13
    add-float/2addr v1, v5

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 158
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 168
    .end local v3    # "i":I
    :cond_19
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v6, v0, v3

    const/4 v7, 0x0

    if-lez v6, :cond_28

    .line 169
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v4, "** Event weights > 100%"

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 170
    return v7

    .line 174
    :cond_28
    if-nez v2, :cond_40

    const v6, 0x42c7cccd    # 99.9f

    cmpg-float v6, v0, v6

    if-ltz v6, :cond_38

    const v6, 0x42c83333    # 100.1f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_40

    .line 175
    :cond_38
    sget-object v3, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    const-string v4, "** Event weights != 100%"

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 176
    return v7

    .line 180
    :cond_40
    sub-float v6, v3, v0

    .line 181
    .local v6, "defaultsTarget":F
    div-float v8, v6, v1

    .line 184
    .local v8, "defaultsAdjustment":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    if-ge v9, v5, :cond_59

    .line 185
    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v11, v10, v9

    cmpg-float v12, v11, v4

    if-gtz v12, :cond_53

    .line 186
    neg-float v11, v11

    aput v11, v10, v9

    goto :goto_56

    .line 188
    :cond_53
    mul-float/2addr v11, v8

    aput v11, v10, v9

    .line 184
    :goto_56
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 193
    .end local v9    # "i":I
    :cond_59
    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    if-lez v4, :cond_96

    .line 194
    sget-object v4, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    const-string v9, "// Event percentages:"

    invoke-virtual {v4, v9}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 195
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_65
    if-ge v4, v5, :cond_96

    .line 196
    sget-object v9, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "//   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 200
    .end local v4    # "i":I
    :cond_96
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeys()Z

    move-result v4

    if-nez v4, :cond_9d

    .line 201
    return v7

    .line 205
    :cond_9d
    const/4 v4, 0x0

    .line 206
    .local v4, "sum":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9f
    if-ge v7, v5, :cond_ac

    .line 207
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v10, v9, v7

    div-float/2addr v10, v3

    add-float/2addr v4, v10

    .line 208
    aput v4, v9, v7

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 210
    .end local v7    # "i":I
    :cond_ac
    const/4 v3, 0x1

    return v3
.end method

.method private generateEvents()V
    .registers 9

    .line 402
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 403
    .local v0, "cls":F
    const/4 v1, 0x0

    .line 405
    .local v1, "lastKey":I
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_16

    .line 406
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v2, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    .line 407
    return-void

    .line 408
    :cond_16
    const/4 v4, 0x1

    aget v5, v2, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_23

    .line 409
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v2, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    .line 410
    return-void

    .line 411
    :cond_23
    const/4 v5, 0x2

    aget v6, v2, v5

    cmpg-float v6, v0, v6

    if-gez v6, :cond_30

    .line 412
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v2, v5}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    .line 413
    return-void

    .line 414
    :cond_30
    const/4 v5, 0x3

    aget v5, v2, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3d

    .line 415
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateTrackballEvent(Ljava/util/Random;)V

    .line 416
    return-void

    .line 417
    :cond_3d
    const/4 v5, 0x4

    aget v5, v2, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4a

    .line 418
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateRotationEvent(Ljava/util/Random;)V

    .line 419
    return-void

    .line 420
    :cond_4a
    const/4 v5, 0x5

    aget v2, v2, v5

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5f

    .line 421
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v4}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->generateRandomPermissionEvent(Ljava/util/Random;)Lcom/android/commands/monkey/MonkeyPermissionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->add(Ljava/lang/Object;)Z

    .line 422
    return-void

    .line 427
    :cond_5f
    :goto_5f
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v5, 0x6

    aget v6, v2, v5

    cmpg-float v6, v0, v6

    if-gez v6, :cond_75

    .line 428
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v1, v2, v6

    goto/16 :goto_f5

    .line 429
    :cond_75
    const/4 v6, 0x7

    aget v6, v2, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_88

    .line 430
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v1, v2, v6

    goto :goto_f5

    .line 431
    :cond_88
    const/16 v6, 0x8

    aget v6, v2, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_9c

    .line 432
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v1, v2, v6

    goto :goto_f5

    .line 433
    :cond_9c
    const/16 v6, 0x9

    aget v6, v2, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_ce

    .line 434
    new-instance v2, Lcom/android/commands/monkey/MonkeyActivityEvent;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    .line 435
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 434
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;Ljava/util/HashMap;)V

    .line 436
    .local v2, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 437
    return-void

    .line 438
    .end local v2    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :cond_ce
    const/16 v6, 0xa

    aget v2, v2, v6

    cmpg-float v2, v0, v2

    if-gez v2, :cond_e8

    .line 439
    new-instance v2, Lcom/android/commands/monkey/MonkeyFlipEvent;

    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 440
    .local v2, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    .line 441
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 442
    return-void

    .line 444
    .end local v2    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    :cond_e8
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    move v1, v2

    .line 447
    :goto_f5
    const/16 v2, 0x1a

    if-eq v1, v2, :cond_120

    if-eq v1, v5, :cond_120

    const/16 v2, 0xdf

    if-eq v1, v2, :cond_120

    const/16 v2, 0x114

    if-eq v1, v2, :cond_120

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_120

    .line 452
    nop

    .line 456
    new-instance v2, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v2, v3, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 457
    .local v2, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 459
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v3, v4, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object v2, v3

    .line 460
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 461
    return-void

    .line 447
    .end local v2    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    :cond_120
    goto/16 :goto_5f
.end method

.method private generatePointerEvent(Ljava/util/Random;I)V
    .registers 19
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "gesture"    # I

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 271
    .local v3, "display":Landroid/view/Display;
    invoke-direct {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v5

    .line 272
    .local v5, "p1":Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v6

    .line 274
    .local v6, "v1":Landroid/graphics/PointF;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 276
    .local v7, "downAt":J
    iget-object v9, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v10, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v10, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 277
    invoke-virtual {v10, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    .line 278
    invoke-virtual {v10, v4, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 279
    invoke-virtual {v10, v4}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 276
    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 282
    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_66

    .line 283
    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 284
    .local v9, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_40
    if-ge v12, v9, :cond_63

    .line 285
    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 287
    iget-object v13, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v14, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 288
    invoke-virtual {v14, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    iget v15, v5, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    .line 289
    invoke-virtual {v14, v4, v15, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 290
    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    .line 287
    invoke-virtual {v13, v10}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 284
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x2

    goto :goto_40

    .line 292
    .end local v9    # "count":I
    .end local v12    # "i":I
    :cond_63
    move v14, v11

    goto/16 :goto_100

    :cond_66
    const/4 v10, 0x2

    if-ne v2, v10, :cond_ff

    .line 293
    invoke-direct {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v10

    .line 294
    .local v10, "p2":Landroid/graphics/PointF;
    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v12

    .line 296
    .local v12, "v2":Landroid/graphics/PointF;
    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 297
    iget-object v13, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v15, 0x105

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 299
    invoke-virtual {v14, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    iget v15, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    .line 300
    invoke-virtual {v14, v4, v15, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    iget v14, v10, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v11, v14, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 301
    invoke-virtual {v9, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    .line 297
    invoke-virtual {v13, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 303
    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 304
    .restart local v9    # "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9f
    if-ge v13, v9, :cond_d2

    .line 305
    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 306
    invoke-direct {v0, v1, v3, v10, v12}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 308
    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v11, 0x2

    invoke-direct {v15, v11}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 309
    invoke-virtual {v15, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->y:F

    .line 310
    invoke-virtual {v15, v4, v11, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v11, v15}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 311
    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 308
    invoke-virtual {v14, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 304
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto :goto_9f

    .line 314
    .end local v13    # "i":I
    :cond_d2
    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 315
    invoke-direct {v0, v1, v3, v10, v12}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 316
    iget-object v2, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v4, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v11, 0x106

    invoke-direct {v4, v11}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 318
    invoke-virtual {v4, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    .line 319
    const/4 v14, 0x0

    invoke-virtual {v4, v14, v11, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v13, v10, Landroid/graphics/PointF;->y:F

    const/4 v14, 0x1

    invoke-virtual {v4, v14, v11, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 320
    invoke-virtual {v4, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 316
    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_100

    .line 292
    .end local v9    # "count":I
    .end local v10    # "p2":Landroid/graphics/PointF;
    .end local v12    # "v2":Landroid/graphics/PointF;
    :cond_ff
    move v14, v11

    .line 323
    :goto_100
    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 324
    iget-object v2, v0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v4, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v4, v14}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 325
    invoke-virtual {v4, v7, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    .line 326
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v9, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v4

    .line 324
    invoke-virtual {v2, v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 328
    return-void
.end method

.method private generateRotationEvent(Ljava/util/Random;)V
    .registers 6
    .param p1, "random"    # Ljava/util/Random;

    .line 392
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v1, Lcom/android/commands/monkey/MonkeyRotationEvent;

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SCREEN_ROTATION_DEGREES:[I

    array-length v3, v2

    .line 393
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v2, v2, v3

    .line 395
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 396
    return-void
.end method

.method private generateTrackballEvent(Ljava/util/Random;)V
    .registers 11
    .param p1, "random"    # Ljava/util/Random;

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2f

    .line 362
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    .line 363
    .local v4, "dX":I
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    .line 365
    .local v2, "dY":I
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v6, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    int-to-float v7, v4

    int-to-float v8, v2

    .line 366
    invoke-virtual {v6, v3, v7, v8}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v6

    if-lez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v3

    .line 367
    :goto_25
    invoke-virtual {v6, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v1

    .line 365
    invoke-virtual {v5, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 360
    .end local v2    # "dY":I
    .end local v4    # "dX":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    .end local v0    # "i":I
    :cond_2f
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_66

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 374
    .local v4, "downAt":J
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v2, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .line 375
    invoke-virtual {v2, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 376
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 377
    invoke-virtual {v2, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 379
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v2, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v2, v1}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    .line 380
    invoke-virtual {v2, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v1

    .line 381
    invoke-virtual {v1, v3, v6, v6}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v1

    .line 382
    invoke-virtual {v1, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 384
    .end local v4    # "downAt":J
    :cond_66
    return-void
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .registers 2
    .param p0, "keyName"    # Ljava/lang/String;

    .line 120
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .registers 2
    .param p0, "keycode"    # I

    .line 109
    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;
    .registers 6
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "display"    # Landroid/view/Display;

    .line 331
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomVector(Ljava/util/Random;)Landroid/graphics/PointF;
    .registers 7
    .param p1, "random"    # Ljava/util/Random;

    .line 335
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v1, v3

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v4, v2

    mul-float/2addr v4, v3

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 9
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "point"    # Landroid/graphics/PointF;
    .param p4, "vector"    # Landroid/graphics/PointF;

    .line 339
    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 340
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 339
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->x:F

    .line 341
    iget v0, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget v3, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 342
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 341
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->y:F

    .line 343
    return-void
.end method

.method private static validateKeyCategory(Ljava/lang/String;[IF)Z
    .registers 7
    .param p0, "catName"    # Ljava/lang/String;
    .param p1, "keys"    # [I
    .param p2, "factor"    # F

    .line 214
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_9

    .line 215
    return v1

    .line 217
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p1

    if-ge v0, v2, :cond_19

    .line 218
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget v3, p1, v0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_16

    .line 219
    return v1

    .line 217
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 222
    .end local v0    # "i":I
    :cond_19
    sget-object v0, Lcom/android/commands/monkey/Logger;->err:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no physical keys but with factor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method private validateKeys()Z
    .registers 4

    .line 230
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    const-string v2, "NAV_KEYS"

    invoke-static {v2, v0, v1}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 231
    const-string v2, "MAJOR_NAV_KEYS"

    invoke-static {v2, v0, v1}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    .line 232
    const-string v2, "SYS_KEYS"

    invoke-static {v2, v0, v1}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    .line 230
    :goto_31
    return v0
.end method


# virtual methods
.method public generateActivity()V
    .registers 5

    .line 483
    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    .line 484
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 483
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;Ljava/util/HashMap;)V

    .line 485
    .local v0, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 486
    return-void
.end method

.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 494
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateEvents()V

    .line 496
    :cond_b
    iget v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    .line 497
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    .line 498
    .local v0, "e":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    .line 499
    return-object v0
.end method

.method public setFactors(IF)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "v"    # F

    .line 250
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput p2, v0, p1

    .line 251
    return-void
.end method

.method public setFactors([F)V
    .registers 6
    .param p1, "factors"    # [F

    .line 241
    const/16 v0, 0xc

    .line 242
    .local v0, "c":I
    array-length v1, p1

    if-ge v1, v0, :cond_6

    .line 243
    array-length v0, p1

    .line 245
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_12

    .line 246
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, p1, v1

    aput v3, v2, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 247
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method public setVerbose(I)V
    .registers 2
    .param p1, "verbose"    # I

    .line 476
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    .line 477
    return-void
.end method

.method public validate()Z
    .registers 4

    .line 464
    const/4 v0, 0x1

    .line 466
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    .line 467
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->populatePermissionsMapping()Z

    move-result v1

    and-int/2addr v0, v1

    .line 468
    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1e

    .line 469
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mPermissionUtil:Lcom/android/commands/monkey/MonkeyPermissionUtil;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyPermissionUtil;->dump()V

    .line 472
    :cond_1e
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->adjustEventFactors()Z

    move-result v1

    and-int/2addr v1, v0

    return v1
.end method
