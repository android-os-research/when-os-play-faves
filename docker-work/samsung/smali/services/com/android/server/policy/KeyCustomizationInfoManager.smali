.class public Lcom/android/server/policy/KeyCustomizationInfoManager;
.super Ljava/lang/Object;
.source "KeyCustomizationInfoManager.java"


# static fields
.field public static ALL_HOT_KEYCODE:[I = null

.field public static ALL_MOUSE_KEYCODE:[I = null

.field public static final SIDE_KEY_LONG_PRESS_TYPE_BIXBY:I = 0x0

.field public static final SIDE_KEY_LONG_PRESS_TYPE_GLOBAL_ACTION:I = 0x1

.field public static SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "KeyCustomizationInfoManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

.field public mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

.field public final mHotKeyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyCustomizationDoubleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeyCustomizationDownUpMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeyCustomizationLongMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeyCustomizationQuadrupleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeyCustomizationQuintupleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeyCustomizationTripleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLastKeyCustomizationInfoDouble:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastKeyCustomizationInfoDownUp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastKeyCustomizationInfoLong:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastKeyCustomizationInfoQuadruple:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastKeyCustomizationInfoQuintuple:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastKeyCustomizationInfoTriple:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mOwnerPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUnknownIDInfo:Ljava/lang/StringBuilder;

.field public mUserId:I

.field public mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 98
    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 106
    fill-array-data v0, :array_2a

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_MOUSE_KEYCODE:[I

    const-string v0, "com.verizon.pushtotalkplus"

    const-string v1, "com.att.eptt"

    const-string v2, "com.sprint.sdcplus"

    const-string v3, "com.bell.ptt"

    .line 682
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    return-void

    nop

    :array_20
    .array-data 4
        0x442
        0x443
        0x444
    .end array-data

    :array_2a
    .array-data 4
        0x445
        0x446
        0x447
        0x448
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationDownUpMap:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationLongMap:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationDoubleMap:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationTripleMap:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationQuadrupleMap:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationQuintupleMap:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoDownUp:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoLong:Landroid/util/SparseArray;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoDouble:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoTriple:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoQuadruple:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoQuintuple:Landroid/util/SparseArray;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1093
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    .line 153
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 155
    iput p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 157
    new-instance p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-direct {p1, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;-><init>(Lcom/android/server/policy/KeyCustomizationInfoManager;)V

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    return-void
.end method


# virtual methods
.method public addOwnerPackageList(Ljava/lang/String;)V
    .registers 4

    .line 920
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 924
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 925
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 929
    :cond_20
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final backupGlobalSideKeyInfo()V
    .registers 12

    const/16 v0, 0x450

    const/4 v1, 0x4

    const/16 v2, 0x1a

    .line 1418
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    .line 1420
    new-instance v10, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v5, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v6, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v7, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v8, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v9, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    iput-object v10, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    goto :goto_21

    .line 1423
    :cond_1f
    iput-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_21
    const/16 v1, 0x8

    .line 1425
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1428
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v5, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v6, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v7, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v8, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v9, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    goto :goto_3e

    .line 1431
    :cond_3c
    iput-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_3e
    return-void
.end method

.method public final checkOldDuplicatedId()Z
    .registers 19

    move-object/from16 v0, p0

    .line 1099
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v4, v2, :cond_14f

    aget v6, v1, v4

    .line 1100
    sget-object v7, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v8, v7

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_147

    aget v10, v7, v9

    .line 1101
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_25

    :goto_1f
    move-object/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_13f

    .line 1106
    :cond_25
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2d

    goto :goto_1f

    .line 1111
    :cond_2d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v15, 0x7d4

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v12, :cond_64

    .line 1114
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v13, :cond_46

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_5c

    :cond_46
    move-object/from16 v16, v1

    .line 1118
    iget v1, v13, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    move/from16 v17, v2

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_5c

    .line 1119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    iget v1, v13, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v15, v1, :cond_5c

    move v15, v1

    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    const/4 v13, 0x1

    goto :goto_35

    :cond_64
    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOldDuplicatedId,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-static {v15}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " toRemove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizationInfoManager"

    .line 1125
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_b3

    goto/16 :goto_13f

    .line 1134
    :cond_b3
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1135
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v15, :cond_ca

    goto :goto_b7

    .line 1138
    :cond_ca
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v13, 0x7d3

    const-string v14, "Remove duplicate ID("

    if-ne v5, v13, :cond_104

    .line 1139
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 1140
    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    .line 1141
    iget-object v13, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    sget-object v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->DUPLICATED_ROUTINE_PLUS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    iput-object v3, v13, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 1143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "), "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    .line 1146
    :cond_104
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1147
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 1146
    invoke-virtual {v0, v6, v10, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateUnknownIDInfo(IIILandroid/content/Intent;)V

    .line 1148
    iget-object v3, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    sget-object v5, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->DUPLICATED_UNKNOWN_ID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    iput-object v5, v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :goto_134
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->remove(I)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto/16 :goto_b7

    :cond_13f
    :goto_13f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_f

    :cond_147
    move-object/from16 v16, v1

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_14f
    return v5
.end method

.method public final checkOldSosMessageId()Z
    .registers 8

    const/16 v0, 0x451

    const/16 v1, 0x10

    const/16 v2, 0x1a

    .line 1176
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    const-string v4, "KeyCustomizationInfoManager"

    const/4 v5, 0x1

    if-eqz v3, :cond_1a

    .line 1178
    invoke-virtual {p0, v0, v1, v2, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IIIZ)V

    const-string/jumbo v1, "removed oldSosMessageId info of triple press"

    .line 1180
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    const/16 v3, 0x20

    .line 1183
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-eqz v6, :cond_2d

    .line 1185
    invoke-virtual {p0, v0, v3, v2, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IIIZ)V

    const-string/jumbo p0, "removed oldSosMessageId info of quadruple press"

    .line 1187
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_2d
    move v5, v1

    :goto_2e
    return v5
.end method

.method public final clearAllKeyCustomizationInfoMap()V
    .registers 7

    .line 1479
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1480
    :try_start_3
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1c

    aget v4, v1, v3

    .line 1481
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1482
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1484
    :cond_1c
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1485
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1486
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public clearByAction(III)Z
    .registers 12

    .line 421
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v3, v2, :cond_30

    aget v5, v1, v3

    .line 425
    invoke-virtual {p0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_19

    goto :goto_2d

    .line 429
    :cond_19
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v7, :cond_22

    goto :goto_2d

    .line 433
    :cond_22
    iget v7, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v7, p3, :cond_2d

    .line 434
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 436
    invoke-virtual {p0, v5, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(II)V

    const/4 v4, 0x1

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_30
    if-eqz v4, :cond_35

    .line 440
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 442
    :cond_35
    monitor-exit v0

    return v4

    :catchall_37
    move-exception p0

    .line 443
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public clearByKeyCode(II)Z
    .registers 11

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_3
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v3, v2, :cond_29

    aget v5, v1, v3

    .line 374
    invoke-virtual {p0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-eqz v6, :cond_26

    .line 375
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_26

    .line 378
    :cond_1f
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 379
    invoke-virtual {p0, v5, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(II)V

    const/4 v4, 0x1

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_29
    if-eqz v4, :cond_2e

    .line 383
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 385
    :cond_2e
    monitor-exit v0

    return v4

    :catchall_30
    move-exception p0

    .line 386
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public clearByPackage(Ljava/lang/String;)Z
    .registers 16

    .line 390
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v4, v2, :cond_45

    aget v6, v1, v4

    .line 393
    sget-object v7, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v8, v7

    move v9, v3

    :goto_11
    if-ge v9, v8, :cond_42

    aget v10, v7, v9

    .line 395
    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-nez v11, :cond_22

    goto :goto_3f

    :cond_22
    const/16 v12, 0x7d3

    .line 399
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v13, :cond_2d

    goto :goto_3f

    .line 403
    :cond_2d
    iget-object v13, v13, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 404
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 405
    invoke-virtual {p0, v6, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(II)V

    .line 406
    invoke-virtual {p0, v6, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(II)V

    const/4 v5, 0x1

    :cond_3f
    :goto_3f
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_45
    if-eqz v5, :cond_4f

    .line 413
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 414
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 416
    :cond_4f
    monitor-exit v0

    return v5

    :catchall_51
    move-exception p0

    .line 417
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    .line 1505
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1506
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getXmlVersion()F

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1507
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "All KeyCustomizationInfo"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_3d

    aget v5, v1, v4

    .line 1510
    invoke-virtual {p0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    .line 1511
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_28

    goto :goto_3a

    .line 1514
    :cond_28
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    invoke-static {v5}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoPressMap(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1519
    :cond_3d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Last KeyCustomizationInfo"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v2, v1

    move v4, v3

    :goto_4c
    if-ge v4, v2, :cond_70

    aget v5, v1, v4

    .line 1521
    invoke-virtual {p0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    .line 1522
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_5b

    goto :goto_6d

    .line 1525
    :cond_5b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    invoke-static {v5}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 1531
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object v1

    .line 1532
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_ae

    .line 1533
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "HotKeys="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    :goto_85
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_ae

    .line 1535
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1536
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    if-nez v4, :cond_98

    goto :goto_ab

    .line 1540
    :cond_98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " KeyCode "

    .line 1541
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ", componentName: "

    .line 1542
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 1547
    :cond_ae
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_ec

    .line 1548
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "ownerPackageList:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1550
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 1555
    :cond_ec
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "UserId:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1558
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_10b

    .line 1559
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUnknownIDInfo:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1561
    :cond_10b
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_3 .. :try_end_10c} :catchall_112

    .line 1563
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :catchall_112
    move-exception p0

    .line 1561
    :try_start_113
    monitor-exit v0
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    throw p0
.end method

.method public final dumpKeyCustomizationInfoKeyCodeMap(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1580
    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_a0

    .line 1581
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v0, :cond_11

    goto/16 :goto_9c

    .line 1585
    :cond_11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget v1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ", keyCode: "

    .line 1587
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", "

    .line 1588
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_47

    const-string v3, ", dispatching: "

    .line 1591
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1593
    :cond_47
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_54

    const-string v3, ", userId: "

    .line 1595
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1597
    :cond_54
    iget-wide v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_64

    const-string v6, ", longPressTimeoutMs: "

    .line 1599
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1601
    :cond_64
    iget-wide v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_72

    const-string v4, ", multiPressTimeoutMs: "

    .line 1603
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1605
    :cond_72
    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 1606
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, ", ownerPackage: "

    .line 1607
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "        "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    :cond_8a
    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_97

    .line 1612
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_9c

    :cond_97
    const-string v0, ", intent is null."

    .line 1614
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9c
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    :cond_a0
    return-void
.end method

.method public final dumpKeyCustomizationInfoPressMap(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1568
    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 1569
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1570
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_37

    .line 1573
    :cond_14
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    KEY_CODE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    return-void
.end method

.method public get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 5

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(ILjava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public get(ILjava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoLocked(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_c

    .line 294
    monitor-exit v0

    return-object p3

    :cond_c
    const/16 p4, 0x7d3

    if-ne p1, p4, :cond_20

    .line 296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 297
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 298
    :cond_1e
    monitor-exit v0

    return-object p3

    .line 300
    :cond_20
    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    .line 301
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final getB2BDeltaDefaultInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 9

    .line 670
    new-instance v5, Landroid/content/Intent;

    const-string p0, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x1000000

    .line 671
    invoke-virtual {v5, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "com.samsung.android.knox.intent.extra.KEY_CODE"

    const/16 v0, 0x3f7

    .line 672
    invoke-virtual {v5, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 674
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    :cond_1c
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v1, 0x3

    const/16 v2, 0x3b7

    const/4 v4, 0x2

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public getBackupKeyCustomizationInfoList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 1019
    :goto_d
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 1020
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 1021
    invoke-virtual {p0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1022
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1023
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1024
    new-instance v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v5, 0x3

    const/16 v6, 0x3e8

    const/4 v8, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1028
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3d

    .line 1029
    monitor-exit v0

    return-object v1

    .line 1031
    :cond_3d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final getDoublePowerTvModeEnable()Z
    .registers 5

    .line 1373
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "tvmode_state"

    const/4 v1, 0x0

    .line 1374
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    const-string/jumbo v3, "pwrkey_owner_status"

    .line 1376
    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1f

    move p0, v2

    goto :goto_20

    :cond_1f
    move p0, v1

    :goto_20
    if-eqz v0, :cond_25

    if-eqz p0, :cond_25

    move v1, v2

    :cond_25
    return v1
.end method

.method public final getDoublePressLaunchCamera()I
    .registers 3

    .line 1366
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "double_tab_launch"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getHotKeyComponentName(I)Landroid/content/ComponentName;
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 1003
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getHotKeyMapLocked()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 972
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getIdOfTopPriority(II)I
    .registers 6

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 p1, -0x1

    if-nez p0, :cond_e

    return p1

    :cond_e
    const/4 p2, 0x0

    const/16 v0, 0x7d4

    move v1, v0

    .line 896
    :goto_12
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_29

    .line 897
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v2, :cond_21

    goto :goto_26

    .line 901
    :cond_21
    iget v2, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v1, v2, :cond_26

    move v1, v2

    :cond_26
    :goto_26
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_29
    if-eq v1, v0, :cond_2c

    move p1, v1

    :cond_2c
    return p1
.end method

.method public final getInfoLocked(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 p1, 0x0

    if-nez p0, :cond_e

    return-object p1

    .line 310
    :cond_e
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez p0, :cond_17

    return-object p1

    :cond_17
    return-object p0
.end method

.method public getInfoMapLocked(I)Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    .line 833
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationDownUpMap:Landroid/util/SparseArray;

    return-object p0

    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e

    .line 835
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationLongMap:Landroid/util/SparseArray;

    return-object p0

    :cond_e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_15

    .line 837
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationDoubleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1c

    .line 839
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationTripleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_1c
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_23

    .line 841
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationQuadrupleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_23
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2a

    .line 843
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mKeyCustomizationQuintupleMap:Landroid/util/SparseArray;

    return-object p0

    .line 846
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not find infoMap. which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKodiakIntentAction(I)Ljava/lang/String;
    .registers 2

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_d

    const/16 p0, 0x437

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const-string p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    goto :goto_f

    :cond_d
    const-string p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    :goto_f
    return-object p0
.end method

.method public final getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 9

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 794
    :cond_8
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v1, 0x3

    const/16 v2, 0x3b7

    const/4 v4, 0x2

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public final getKodiakPttIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 800
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakIntentAction(I)Ljava/lang/String;

    move-result-object p0

    .line 801
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 805
    :cond_c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 806
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 807
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 321
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getLastInfoLocked(I)Landroid/util/SparseArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    .line 851
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoDownUp:Landroid/util/SparseArray;

    return-object p0

    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e

    .line 853
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoLong:Landroid/util/SparseArray;

    return-object p0

    :cond_e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_15

    .line 855
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoDouble:Landroid/util/SparseArray;

    return-object p0

    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1c

    .line 857
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoTriple:Landroid/util/SparseArray;

    return-object p0

    :cond_1c
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_23

    .line 859
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoQuadruple:Landroid/util/SparseArray;

    return-object p0

    :cond_23
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2a

    .line 861
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastKeyCustomizationInfoQuintuple:Landroid/util/SparseArray;

    return-object p0

    .line 864
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not find lastInfo. which="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMcpttInfo(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 8

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakIntentAction(I)Ljava/lang/String;

    move-result-object p0

    .line 659
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 663
    :cond_c
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "com.att.firstnet.grey/com.samsung.android.sptt.keyevent.KeyEventService"

    .line 664
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 665
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v1, 0x3

    const/16 v2, 0x3b7

    const/4 v4, 0x3

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public final getOneHandModeInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 10

    .line 1328
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "any_screen_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 1329
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_13

    move v0, v3

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    const-string/jumbo v4, "one_handed_op_wakeup_type"

    .line 1331
    invoke-static {p0, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_1e

    move v1, v3

    .line 1335
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOneHandModeInfoFromGlobalSetting isOneHandOpEnabled="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isTriggeredButtonType="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " press="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_67

    if-nez v1, :cond_4b

    goto :goto_67

    .line 1342
    :cond_4b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p0, "onehand/onehand"

    .line 1343
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1344
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v4, 0x8

    const/16 v5, 0x452

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0

    :cond_67
    :goto_67
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPowerKeyLongDefaultInfo()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 8

    const-string p0, "KeyCustomizationInfoManager"

    const-string/jumbo v0, "getPowerKeyLongDefaultInfo"

    .line 596
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v6, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v6, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "globalAction/globalAction"

    .line 598
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 599
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v2, 0x4

    const/16 v3, 0x3e8

    const/16 v4, 0x1a

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public final getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 5

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getDoublePressLaunchCamera()I

    move-result p0

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getQuickLaunchCameraInfoFromSetting behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2c

    if-nez p0, :cond_21

    goto :goto_2c

    .line 1356
    :cond_21
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v0, 0x8

    const/16 v1, 0x7d1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIII)V

    return-object p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSalesCode()Ljava/lang/String;
    .registers 2

    const-string p0, ""

    :try_start_2
    const-string/jumbo v0, "persist.omc.sales_code"

    .line 776
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 777
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 778
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 779
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "ril.sales_code"

    .line 780
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_23

    :catch_23
    :cond_23
    return-object p0
.end method

.method public final getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 8

    .line 1301
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "function_key_config_doublepress"

    const/4 v1, 0x1

    .line 1302
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    const/4 v0, 0x0

    if-nez v1, :cond_16

    return-object v0

    :cond_16
    const-string v3, "function_key_config_doublepress_type"

    .line 1308
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "function_key_config_doublepress_value"

    .line 1310
    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSideKeyDoubleInfoFromGlobalSetting enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appInfo="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCustomizationInfoManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {v2, p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(ILjava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    if-nez p0, :cond_50

    return-object v0

    .line 1319
    :cond_50
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v2, 0x8

    const/16 v3, 0x450

    const/16 v4, 0x1a

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getAction()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getIntent()Landroid/content/Intent;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v0
.end method

.method public final getSideKeyDoubleTvModeInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 7

    .line 1382
    new-instance v5, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v5, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.LAUNCHER"

    .line 1383
    invoke-virtual {v5, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 1384
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1385
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v1, 0x8

    const/16 v2, 0x7d2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public final getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 8

    .line 1269
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "function_key_config_longpress_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSideKeyLongInfoFromGlobalSetting sideKeyLongPressType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2d

    move-object p0, v0

    :goto_2b
    move v5, v1

    goto :goto_3e

    :cond_2d
    const-string/jumbo p0, "globalAction/globalAction"

    .line 1282
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_2b

    :cond_35
    const/4 v1, 0x3

    const-string/jumbo p0, "wakeBixby/wakeBixby"

    .line 1279
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_2b

    :goto_3e
    if-nez p0, :cond_41

    return-object v0

    .line 1291
    :cond_41
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v6, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1293
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v2, 0x4

    const/16 v3, 0x450

    const/16 v4, 0x1a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public final getTopKeyPressInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 1252
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 1253
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xcover_top_short_press_app"

    const/4 v2, -0x2

    .line 1252
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTopKeyPressInfoFromSetting topKeyPressLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const/16 v2, 0x437

    .line 1257
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 1405
    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    return p0
.end method

.method public final getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 9

    .line 618
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3f7

    if-ne p1, v2, :cond_10

    const-string v2, "dedicated_app_xcover_switch"

    const-string v3, "dedicated_app_xcover"

    goto :goto_18

    :cond_10
    const/16 v2, 0x437

    if-ne p1, v2, :cond_7f

    const-string v2, "dedicated_app_top_switch"

    const-string v3, "dedicated_app_top"

    :goto_18
    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 630
    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_23

    move v2, v6

    goto :goto_24

    :cond_23
    move v2, v4

    :goto_24
    if-nez v2, :cond_27

    return-object v1

    .line 636
    :cond_27
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :goto_36
    move v4, v1

    goto :goto_6d

    :sswitch_38
    const-string v2, "com.verizon.pushtotalkplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_36

    :cond_41
    const/4 v4, 0x4

    goto :goto_6d

    :sswitch_43
    const-string v2, "com.att.eptt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_36

    :cond_4c
    const/4 v4, 0x3

    goto :goto_6d

    :sswitch_4e
    const-string v2, "com.att.firstnet.grey"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_36

    :cond_57
    const/4 v4, 0x2

    goto :goto_6d

    :sswitch_59
    const-string v2, "com.sprint.sdcplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_36

    :cond_62
    move v4, v6

    goto :goto_6d

    :sswitch_64
    const-string v2, "com.bell.ptt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_36

    :cond_6d
    :goto_6d
    packed-switch v4, :pswitch_data_96

    .line 651
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getB2BDeltaDefaultInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0

    .line 640
    :pswitch_75
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getMcpttInfo(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0

    .line 647
    :pswitch_7a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0

    :cond_7f
    return-object v1

    :sswitch_data_80
    .sparse-switch
        -0x6e35f6ae -> :sswitch_64
        -0x3dc882fb -> :sswitch_59
        -0x6041c7a -> :sswitch_4e
        0x4dbc6965 -> :sswitch_43
        0x7903cfc3 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7a
        :pswitch_75
        :pswitch_7a
        :pswitch_7a
    .end packed-switch
.end method

.method public final getXCoverKeyLongInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 1240
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 1241
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_app"

    const/4 v2, -0x2

    .line 1240
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getXCoverKeyLongInfoFromSetting xcoverKeyLongPressLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    const/16 v2, 0x3f7

    .line 1245
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getXCoverKeyPressInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    .line 1197
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 1200
    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v0, :cond_37

    .line 1202
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    .line 1203
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "short_press_app"

    .line 1202
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getXCoverKeyPressInfoFromSetting xcoverKeyPressApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const/16 v2, 0x3f7

    .line 1206
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0

    :cond_37
    return-object v1
.end method

.method public final getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 11

    .line 1215
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    .line 1219
    :cond_8
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x1

    const-string/jumbo v1, "torch/torch"

    .line 1225
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "home/home"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "back/back"

    .line 1226
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    .line 1227
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_34

    :cond_33
    const/4 v0, 0x0

    :cond_34
    move v5, v0

    .line 1231
    new-instance v6, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.LAUNCHER"

    .line 1232
    invoke-virtual {v6, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10200000

    .line 1233
    invoke-virtual {v6, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1234
    invoke-virtual {v6, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1235
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v3, 0x44f

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object p0
.end method

.method public final hasB2BDeltaInfo(I)Z
    .registers 4

    const/16 v0, 0x3b7

    const/4 v1, 0x3

    .line 613
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public hasOwnerPackage(Ljava/lang/String;)Z
    .registers 4

    .line 959
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 962
    :cond_a
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 963
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public final hasPackage(Ljava/lang/String;)Z
    .registers 5

    .line 756
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 758
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    goto :goto_32

    :catch_d
    move-exception p0

    const/4 v0, 0x0

    .line 761
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_31

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " package is not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationInfoManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move p0, v0

    :goto_32
    return p0
.end method

.method public init(IZ)V
    .registers 10

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 163
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v3, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->loadSettingsLocked(I)V

    const-string v3, "KeyCustomizationInfoManager"

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadSettings duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 165
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getXmlVersion()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userSwitching="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 169
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    if-ne v3, v4, :cond_a3

    const/16 v3, 0x1a

    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 170
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    const/4 v6, 0x4

    .line 171
    invoke-virtual {p0, v6, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 172
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_69

    const/16 v3, 0x3f7

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initUserTopKeyCustomizationInfoLocked(I)V

    .line 175
    :cond_69
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_72

    const/16 v3, 0x437

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initUserTopKeyCustomizationInfoLocked(I)V

    .line 178
    :cond_72
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SIDE_KEY:Z

    if-nez v3, :cond_7a

    const/4 v3, 0x3

    .line 179
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 181
    :cond_7a
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->initXmlVersion()V

    if-nez p2, :cond_86

    .line 183
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    :cond_86
    const-string p0, "KeyCustomizationInfoManager"

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "initKeyCustomizationInfo duration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    .line 187
    :cond_a3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    if-ne v1, v2, :cond_ca

    .line 190
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->checkOldDuplicatedId()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->checkOldSosMessageId()Z

    move-result v2

    or-int/2addr v1, v2

    if-nez p2, :cond_bf

    .line 195
    iget-object p2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->updateXmlVersionIfNeeded()Z

    move-result p2

    or-int/2addr v1, p2

    :cond_bf
    if-eqz v1, :cond_c4

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    .line 202
    :cond_c4
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateLastKeyCustomizationInfoMap([I)V

    goto :goto_e6

    :cond_ca
    const-string p1, "KeyCustomizationInfoManager"

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Xml file error code was wrong. code="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 205
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_e6
    monitor-exit v0

    return-void

    :catchall_e8
    move-exception p0

    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_3 .. :try_end_ea} :catchall_e8

    throw p0
.end method

.method public initKeyCustomizationInfoLocked(II)V
    .registers 4

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    return-void
.end method

.method public initKeyCustomizationInfoLocked(IIZ)V
    .registers 10

    .line 451
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3c

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initKeyCustomizationInfoLocked,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFirstBoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 454
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationInfoManager"

    .line 452
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_f2

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_b7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3f7

    if-eq p2, v4, :cond_81

    const/16 v4, 0x437

    if-eq p2, v4, :cond_4f

    return-void

    :cond_4f
    and-int/lit8 v5, p1, 0x3

    if-eqz v5, :cond_78

    .line 515
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_TOP_KEY_B2B_DELTA_CONCEPT:Z

    if-eqz v5, :cond_6e

    if-eqz p3, :cond_62

    .line 519
    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    .line 521
    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    move-result v2

    goto :goto_6a

    .line 524
    :cond_62
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v3

    :goto_6a
    if-eqz v2, :cond_6e

    goto/16 :goto_10f

    .line 533
    :cond_6e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_10f

    .line 534
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getTopKeyPressInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto/16 :goto_10f

    :cond_78
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_10f

    .line 537
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_10f

    return-void

    :cond_81
    and-int/lit8 v5, p1, 0x3

    if-eqz v5, :cond_aa

    .line 485
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_TOP_KEY_B2B_DELTA_CONCEPT:Z

    if-eqz v5, :cond_a0

    if-eqz p3, :cond_94

    .line 489
    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    .line 491
    invoke-virtual {p0, v1, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    move-result v2

    goto :goto_9c

    .line 494
    :cond_94
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_9b

    goto :goto_9c

    :cond_9b
    move v2, v3

    :goto_9c
    if-eqz v2, :cond_a0

    goto/16 :goto_10f

    .line 503
    :cond_a0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_10f

    .line 504
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyPressInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto/16 :goto_10f

    :cond_aa
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_10f

    .line 507
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_10f

    .line 508
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyLongInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    :cond_b7
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_cd

    .line 461
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_SIDE_KEY:Z

    if-eqz v1, :cond_c4

    .line 463
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    .line 465
    :cond_c4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LONG_PRESS_POWER_KEY:Z

    if-eqz v1, :cond_10f

    .line 466
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getPowerKeyLongDefaultInfo()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    :cond_cd
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_10f

    .line 470
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_ATT_TV_MODE:Z

    if-eqz v1, :cond_e0

    .line 471
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getDoublePowerTvModeEnable()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 472
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleTvModeInfoFromSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    .line 473
    :cond_e0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_SIDE_KEY:Z

    if-eqz v1, :cond_e9

    .line 475
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    .line 476
    :cond_e9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_POWER_LAUNCH_CAMERA:Z

    if-eqz v1, :cond_10f

    .line 478
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    .line 545
    :cond_f2
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->shouldLaunchCameraByHomeDouble()Z

    move-result v2

    if-eqz v2, :cond_105

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_10f

    .line 547
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DOUBLE_PRESS_HOME_LAUNCH_CAMERA:Z

    if-eqz v2, :cond_10f

    .line 548
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    goto :goto_10f

    :cond_105
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_10f

    if-nez p3, :cond_10f

    .line 555
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getOneHandModeInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    :cond_10f
    :goto_10f
    if-nez v0, :cond_112

    return-void

    .line 570
    :cond_112
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 571
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_126

    .line 573
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 574
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    :cond_126
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 577
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_136

    .line 579
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    :cond_136
    return-void
.end method

.method public final initKodiakDedicatedPtt(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;ILjava/lang/String;)Z
    .registers 6

    .line 703
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->isAvailablePtt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p1, :cond_2b

    .line 705
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    return p2

    :cond_11
    if-eqz p1, :cond_2b

    .line 709
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v1, 0x3b7

    if-ne v0, v1, :cond_2b

    iget-object p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_2b

    .line 710
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x3

    .line 711
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(III)V

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z
    .registers 8

    .line 690
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 691
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPtt(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public final initUserTopKeyCustomizationInfoLocked(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 606
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->hasB2BDeltaInfo(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x4

    .line 608
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    :cond_f
    return-void
.end method

.method public final isAvailablePtt(Ljava/lang/String;)Z
    .registers 6

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 722
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    .line 723
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_8e

    goto :goto_44

    :sswitch_19
    const-string v2, "com.verizon.pushtotalkplus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_44

    :cond_22
    const/4 v0, 0x3

    goto :goto_44

    :sswitch_24
    const-string v2, "com.att.eptt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v0, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v2, "com.sprint.sdcplus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_44

    :cond_38
    move v0, v3

    goto :goto_44

    :sswitch_3a
    const-string v2, "com.bell.ptt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    packed-switch v0, :pswitch_data_a0

    goto :goto_8c

    :pswitch_48
    const-string p1, "VZW"

    .line 725
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    const-string p1, "VPP"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    :cond_58
    return v3

    :pswitch_59
    const-string p1, "ATT"

    .line 731
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    const-string p1, "AIO"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    :cond_69
    return v3

    :pswitch_6a
    const-string p1, "TMB"

    .line 737
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    const-string p1, "TMK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    const-string p1, "ASR"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    :cond_82
    return v3

    :pswitch_83
    const-string p1, "BMC"

    .line 743
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    return v3

    :cond_8c
    :goto_8c
    return v1

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x6e35f6ae -> :sswitch_3a
        -0x3dc882fb -> :sswitch_2f
        0x4dbc6965 -> :sswitch_24
        0x7903cfc3 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_83
        :pswitch_6a
        :pswitch_59
        :pswitch_48
    .end packed-switch
.end method

.method public isEmptyKeyCustomizationInfo(III)Z
    .registers 5

    .line 910
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    .line 912
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1d

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1a

    goto :goto_1d

    .line 915
    :cond_1a
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    .line 913
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 915
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onUserRemove(I)V
    .registers 3

    .line 1409
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getKeyCustomizationDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "key_customize_info.xml"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1411
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_15
    return-void
.end method

.method public onUserSwitch(I)V
    .registers 5

    const-string v0, "KeyCustomizationInfoManager"

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitch oldId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iput p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->backupGlobalSideKeyInfo()V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearAllKeyCustomizationInfoMap()V

    const/4 v0, 0x1

    .line 1397
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->init(IZ)V

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->restoreGlobalSideKeyInfo()V

    .line 1399
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1400
    :try_start_33
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    .line 1401
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    return-void
.end method

.method public put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_6
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 231
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 232
    iget v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 233
    iget-object v4, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v5

    .line 236
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    const/16 v7, 0x7d3

    if-nez v6, :cond_25

    .line 238
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 239
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7e

    :cond_25
    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_7e

    .line 244
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_7e

    .line 246
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_35
    if-ge v10, v8, :cond_4e

    .line 248
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v11, :cond_40

    goto :goto_4b

    .line 252
    :cond_40
    iget v11, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-lt v11, v5, :cond_4b

    .line 254
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    :goto_4b
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 257
    :cond_4e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_52
    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 258
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v9, :cond_6b

    goto :goto_52

    .line 262
    :cond_6b
    iget-object v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 263
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 264
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_52

    .line 265
    invoke-virtual {p0, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    goto :goto_52

    .line 271
    :cond_7e
    :goto_7e
    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(II)V

    if-nez p2, :cond_89

    .line 275
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_89
    if-ne v2, v7, :cond_8e

    .line 279
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    .line 281
    :cond_8e
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_6 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public putHotKey(ILandroid/content/ComponentName;)V
    .registers 5

    .line 976
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 979
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public remove(III)V
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    .line 329
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(ILjava/lang/String;IIZ)V

    return-void
.end method

.method public final remove(IIIZ)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(ILjava/lang/String;IIZ)V

    return-void
.end method

.method public remove(ILjava/lang/String;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 333
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(ILjava/lang/String;IIZ)V

    return-void
.end method

.method public final remove(ILjava/lang/String;IIZ)V
    .registers 11

    .line 338
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_11

    .line 341
    monitor-exit v0

    return-void

    .line 343
    :cond_11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v2, :cond_1b

    .line 345
    monitor-exit v0

    return-void

    :cond_1b
    const/16 v3, 0x7d3

    if-ne p1, v3, :cond_45

    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    iget-object v2, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string p0, "KeyCustomizationInfoManager"

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not remove data, There is no matched ownerPackage="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    monitor-exit v0

    return-void

    .line 354
    :cond_45
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-ne p1, v3, :cond_50

    .line 358
    invoke-virtual {p0, p3, p4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(II)V

    .line 359
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    .line 362
    :cond_50
    invoke-virtual {p0, p3, p4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(II)V

    if-nez p5, :cond_58

    .line 364
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 366
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public removeHotKey(Ljava/lang/String;)V
    .registers 10

    .line 983
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_3
    sget-object v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v3, v2, :cond_4b

    aget v5, v1, v3

    .line 986
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_48

    .line 987
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_48

    :cond_23
    const-string v4, "KeyCustomizationInfoManager"

    .line 990
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeHotKey keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    const/4 v4, 0x1

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4b
    if-eqz v4, :cond_50

    .line 995
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 997
    :cond_50
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public removeOwnerPackageList(Ljava/lang/String;)V
    .registers 13

    .line 933
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 937
    :cond_7
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_4b

    aget v4, v0, v3

    .line 938
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    move v5, v2

    .line 939
    :goto_15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 940
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_24

    goto :goto_45

    :cond_24
    move v7, v2

    .line 944
    :goto_25
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_45

    .line 945
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-eqz v8, :cond_42

    .line 946
    iget v9, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v10, 0x7d3

    if-ne v9, v10, :cond_42

    iget-object v8, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 947
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    return-void

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 955
    :cond_4b
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restoreGlobalSideKeyInfo()V
    .registers 13

    const/16 v0, 0x450

    const/4 v1, 0x4

    const/16 v2, 0x1a

    .line 1436
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    .line 1437
    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    .line 1438
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    if-nez v3, :cond_16

    if-eqz v1, :cond_1c

    :cond_16
    if-eqz v3, :cond_43

    .line 1439
    iget v1, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v1, v0, :cond_43

    .line 1441
    :cond_1c
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v7, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v8, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v9, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v10, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v11, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 1444
    invoke-virtual {p0, v1, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    goto :goto_43

    :cond_32
    if-nez v3, :cond_36

    if-eqz v1, :cond_3c

    :cond_36
    if-eqz v3, :cond_43

    .line 1447
    iget v1, v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v1, v0, :cond_43

    .line 1449
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    :cond_43
    :goto_43
    const/4 v1, 0x0

    .line 1452
    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v3, 0x8

    .line 1454
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    .line 1455
    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    .line 1456
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-eqz v7, :cond_74

    if-nez v4, :cond_58

    if-eqz v6, :cond_5e

    :cond_58
    if-eqz v4, :cond_8b

    .line 1457
    iget v2, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v2, v0, :cond_8b

    .line 1459
    :cond_5e
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    iget v7, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v8, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v9, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget v10, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    iget-object v11, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 1462
    invoke-virtual {p0, v0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    goto :goto_8b

    :cond_74
    if-nez v4, :cond_78

    if-eqz v6, :cond_7e

    :cond_78
    if-eqz v4, :cond_8b

    .line 1465
    iget v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v4, v0, :cond_8b

    .line 1467
    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    if-nez v4, :cond_88

    .line 1469
    invoke-virtual {p0, v0, v3, v2, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IIIZ)V

    goto :goto_8b

    .line 1471
    :cond_88
    invoke-virtual {p0, v4, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    .line 1475
    :cond_8b
    :goto_8b
    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    return-void
.end method

.method public restoreKeyCustomizationInfo(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1038
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v4, :cond_1d

    goto :goto_e

    .line 1044
    :cond_1d
    iget v1, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    const/16 v5, 0x442

    if-eq v1, v5, :cond_63

    const/16 v5, 0x443

    if-eq v1, v5, :cond_63

    const/16 v5, 0x444

    if-ne v1, v5, :cond_2c

    goto :goto_63

    :cond_2c
    const-string v5, "KeyCustomizationInfoManager"

    .line 1052
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreKeyCustomizationInfo keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 1053
    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 1054
    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    goto :goto_7d

    :cond_63
    :goto_63
    const-string v5, "KeyCustomizationInfoManager"

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreKeyCustomizationInfo keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7d
    move v1, v3

    goto :goto_e

    .line 1061
    :cond_7f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e9

    .line 1062
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1063
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v1, :cond_9d

    goto :goto_8e

    .line 1067
    :cond_9d
    iget v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 1068
    iget-object v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-nez v1, :cond_c0

    const-string v1, "KeyCustomizationInfoManager"

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreKeyCustomizationInfo, keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intent is null."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1074
    :cond_c0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_e3

    const-string v1, "KeyCustomizationInfoManager"

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreKeyCustomizationInfo, keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " componentName is null."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 1080
    :cond_e3
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8e

    :cond_e9
    move v3, v1

    :cond_ea
    if-eqz v3, :cond_ef

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 1088
    :cond_ef
    monitor-exit v0

    return-void

    :catchall_f1
    move-exception p0

    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_4 .. :try_end_f3} :catchall_f1

    throw p0
.end method

.method public saveSettingsLocked()V
    .registers 2

    .line 585
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateUserIdIfNeeded()V

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void
.end method

.method public saveSettingsLocked(I)V
    .registers 2

    .line 591
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void
.end method

.method public final shouldLaunchCameraByHomeDouble()Z
    .registers 2

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getDoublePressLaunchCamera()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    if-nez p0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public updateHigherPriorityInfoLocked(II)V
    .registers 4

    const/4 v0, -0x1

    .line 868
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    return-void
.end method

.method public updateHigherPriorityInfoLocked(III)V
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_7

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getIdOfTopPriority(II)I

    move-result p3

    .line 876
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    if-ne p3, v0, :cond_11

    return-void

    .line 882
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoLocked(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p3

    if-nez p3, :cond_18

    return-void

    .line 886
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateLastKeyCustomizationInfoMap([I)V
    .registers 9

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1f

    aget v3, p1, v2

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    move v5, v1

    .line 213
    :goto_c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c

    .line 214
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 215
    invoke-virtual {p0, v3, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1f
    return-void
.end method

.method public final updateUnknownIDInfo(IIILandroid/content/Intent;)V
    .registers 7

    .line 1161
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    .line 1164
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "press="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1165
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    const-string v0, ", keyCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1166
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    const-string p2, ", id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1167
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    const-string p2, ", intent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUnknownIDInfo:Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final updateUserIdIfNeeded()V
    .registers 7

    .line 1490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1492
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1493
    iget v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    if-eq v3, v2, :cond_34

    const-string v3, "KeyCustomizationInfoManager"

    .line 1494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveSettingsLocked, userId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is no matched with newId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iput v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_38

    .line 1499
    :cond_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_38
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1500
    throw p0
.end method
