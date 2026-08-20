.class public Lcom/android/server/policy/KeyCustomizationConstants;
.super Ljava/lang/Object;
.source "KeyCustomizationConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCustomizationConstants$BundleTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$XmlTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$UndefinedSettingNames;,
        Lcom/android/server/policy/KeyCustomizationConstants$UriTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$PackageNameTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$ComponentNameTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$PermissionTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$IntentExtraTags;,
        Lcom/android/server/policy/KeyCustomizationConstants$IntentActionTags;
    }
.end annotation


# static fields
.field public static ALL_KEYCODE_TYPE:[I

.field public static EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

.field public static NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

.field public static SUPPORT_PRESS_TYPE_ALL:[I

.field public static SUPPORT_PRESS_TYPE_BASIC:[I

.field public static SUPPORT_PRESS_TYPE_XCOVER_TOP:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 359
    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 371
    fill-array-data v0, :array_42

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 377
    fill-array-data v1, :array_4c

    sput-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 382
    fill-array-data v1, :array_54

    sput-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    new-array v0, v0, [I

    .line 392
    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 397
    fill-array-data v0, :array_6a

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x3
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data

    :array_42
    .array-data 4
        0x3
        0x4
        0x8
    .end array-data

    :array_4c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_54
    .array-data 4
        0x40
        0x20
        0x10
        0x8
        0x4
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_6a
    .array-data 4
        0x1a
        0xbb
        0x3
        0x4
        0x18
        0x19
        0x3f7
        0x437
        0x4f
        0x445
        0x446
        0x447
        0x448
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
